import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tw_core/application/cha_room/bloc/chatroom_bloc.dart';
import 'package:tw_core/theme/tw_theme.dart';

class TWMessageHandler extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatroomBloc, ChatroomState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: TWTheme.kMainThemeColor, width: 6),
                  color: Colors.grey[100],
                ),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Enter chat here"),
                  maxLines: 3,
                  minLines: 1,
                ),
              )),
              SizedBox(width: 10),
              Center(
                child: Ink(
                  decoration: const ShapeDecoration(
                   color: TWTheme.kMainThemeColor,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                      
                      onPressed: () {
                        context.read<ChatroomBloc>().add(
                              ChatroomEvent.sendMessagePressed(_controller.text),
                            );
                        _controller.clear();
                      },
                      icon: Icon(
                        Icons.send,
                        size: 25,
                        color: TWTheme.twOrange,
                      )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
