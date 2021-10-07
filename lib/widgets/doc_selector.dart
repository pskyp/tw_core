import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tw_core/application/upload_doc/upload_doc_bloc.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';

class DocumentSelector extends StatelessWidget {
  final TWDocType docType;
  final String typeId;
  final TWUser loggedInUser;
  final bool? requireInstructions;

  DocumentSelector({
    Key? key,
    required this.loggedInUser,
    required this.typeId,
    required this.docType,
    this.requireInstructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await showDialog(
          context: context,
          builder: (BuildContext dialogContext) {
            return BlocProvider(
              create: (context) => UploadDocBloc(
                typeId: typeId,
                docType: docType,
                loggedInUser: loggedInUser,
                requireInstructions: requireInstructions,
              ),
              child: FilePickerDialog(
                requireInstructions: requireInstructions ?? true,
              ),
            );
          },
        );
      },
      child: DottedBorder(
        dashPattern: [6, 3],
        borderType: BorderType.RRect,
        radius: Radius.circular(4),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        color: Colors.grey.shade400,
        child: Row(
          children: [
            Icon(Icons.arrow_upward),
            SizedBox(width: 10),
            Text('Select Documents'),
          ],
        ),
      ),
    );
  }
}

class FilePickerDialog extends StatelessWidget {
  final bool requireInstructions;
  FilePickerDialog({required this.requireInstructions});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadDocBloc, UploadDocState>(
      listener: (context, state) {
        state.resultOption.fold(
          () => null,
          (a) => a.fold(
            (l) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Server Error')));
              Navigator.of(context).pop();
            },
            (r) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Upload successful')));
              Navigator.of(context).pop();
            },
          ),
        );
      },
      builder: (context, state) {
        return AlertDialog(
          title: Text(
            'Upload Documents',
            style: TextStyle(color: Color(0xff084348), fontSize: 18),
          ),
          content: Form(
            key: formKey,
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.selectedFile != null
                      ? state.selectedFile!.names[0]!
                      : "Select File",
                ),
                SelectFileButton(),
                SizedBox(height: 8),
                if (requireInstructions) DocInstructionsInput(),
                SizedBox(height: 8),
                if (state.uploadInProgress) CircularProgressIndicator(),
              ],
            ),
          ),
          actions: state.uploadInProgress
              ? [Container()]
              : [
                  MaterialButton(
                    color: Colors.orange,
                    child: Text('Upload'),
                    onPressed: () {
                      context
                          .read<UploadDocBloc>()
                          .add(UploadDocEvent.uploadPressed());
                    },
                  ),
                  MaterialButton(
                    child: Text('Cancel'),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
        );
      },
    );
  }
}

class DocInstructionsInput extends StatelessWidget {
  const DocInstructionsInput({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadDocBloc, UploadDocState>(
      builder: (context, state) {
        return TextFormField(
          validator: (value) {
            return state.instruction.value.fold(
              (l) => l.when(tooShort: (val) => 'Too short'),
              (r) => null,
            );
          },
          onChanged: (val) {
            context
                .read<UploadDocBloc>()
                .add(UploadDocEvent.docInstructionsInput(val));
          },
          maxLines: 6,
          minLines: 2,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            hintText: 'Document Instructions',
            labelText: 'Document Instructions',
            labelStyle: TextStyle(
                fontSize: 16, color: Color(0xff015c67).withOpacity(0.8)),
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color(0xff015c67).withOpacity(0.6))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff015c67), width: 2)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff015c67), width: 2)),
          ),
        );
      },
    );
  }
}

class SelectFileButton extends StatelessWidget {
  const SelectFileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UploadDocBloc, UploadDocState>(
      builder: (context, state) {
        return MaterialButton(
          color: Color(0xff084348),
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          onPressed: () async {
            FilePickerResult? selectedFile =
                await FilePicker.platform.pickFiles(allowMultiple: false);
            context
                .read<UploadDocBloc>()
                .add(UploadDocEvent.filedPicked(selectedFile));
          },
          child: Text(
            'Pick File',
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
