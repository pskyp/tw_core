import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tw_core/application/mobile_upload_doc_bloc/mupload_doc_bloc.dart';

class MFilePickerDialog extends StatelessWidget {
  final bool requireInstructions;
  MFilePickerDialog({required this.requireInstructions});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MUploadDocBloc, MUploadDocState>(
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
                _SelectFileButton(),
                SizedBox(height: 8),
                if (requireInstructions) _DocInstructionsInput(),
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
                          .read<MUploadDocBloc>()
                          .add(MUploadDocEvent.uploadPressed());
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

class _DocInstructionsInput extends StatelessWidget {
  const _DocInstructionsInput({Key? key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MUploadDocBloc, MUploadDocState>(
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
                .read<MUploadDocBloc>()
                .add(MUploadDocEvent.docInstructionsInput(val));
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

class _SelectFileButton extends StatelessWidget {
  const _SelectFileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MUploadDocBloc, MUploadDocState>(
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
                .read<MUploadDocBloc>()
                .add(MUploadDocEvent.filedPicked(selectedFile));
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
