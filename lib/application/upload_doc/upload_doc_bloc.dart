import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/core/tw_min_length_string/tw_min_length_string.dart';
import 'package:tw_core/models/errors.dart';
import 'package:tw_core/models/tw_document/tw_document.dart';
import 'package:tw_core/models/tw_user/tw_user.dart';
import 'package:tw_core/services/storage_facade.dart';

part 'upload_doc_bloc.freezed.dart';
part 'upload_doc_event.dart';
part 'upload_doc_state.dart';

class UploadDocBloc extends Bloc<UploadDocEvent, UploadDocState> {
  UploadDocBloc({
    required TWUser loggedInUser,
    required String typeId,
    required TWDocType docType,
    bool? requireInstructions,
  }) : super(
          UploadDocState.initial(
            loggedInUser: loggedInUser,
            typeId: typeId,
            docType: docType,
            requireInstructions: requireInstructions,
          ),
        ) {
    on<DocInstructionsInput>((event, emit) async {
      emit(state.copyWith(
        instruction: TWString(event.input, TWString.DOC_INSTRUCTIONS_ML),
      ));
    });
    on<FiledPicked>((event, emit) async {
      if (event.file != null) {
        emit(state.copyWith(selectedFile: event.file));
      }
    });
    on<UploadPressed>((event, emit) async {
      emit(state.copyWith(showErrorMessages: true));
      if (!state.allInputsValid) return;
      emit(state.copyWith(uploadInProgress: true));
      Either<TWServerError, Unit> result = await StorageFacade().uploadDocument(
        loggedInUser: state.loggedInUser,
        typeId: state.typeId,
        file: state.selectedFile!,
        instructions:
            (state.requireInstructions == null || state.requireInstructions!)
                ? state.instruction
                : TWString(
                    'No instructions found',
                    TWString.min_length,
                  ),
        docType: state.docType,
      );
      emit(state.copyWith(
        uploadInProgress: false,
        resultOption: optionOf(result),
      ));
    });
  }
}
