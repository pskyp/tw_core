import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tw_core/models/chat_models/chat_room.dart';

part 'joint_chat_bloc.freezed.dart';
part 'joint_chat_event.dart';
part 'joint_chat_state.dart';

class JointChatBloc extends Bloc<JointChatEvent, JointChatState> {
  JointChatBloc({required JointChatState chatState}) : super(chatState){
    

    on<OpenTenderChatRoom>((event, emit) async {
      emit(JointChatState(selectedChatRoomOption: optionOf(event.chatRoom)));
    });
  }


}
