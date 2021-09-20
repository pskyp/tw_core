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
        return Container(
          padding: EdgeInsets.all(5),
          color: TWTheme.kMainThemeColor,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                child: TextFormField(
                  controller: _controller,
                  decoration: InputDecoration(border: InputBorder.none),
                  maxLines: 3,
                  minLines: 1,
                ),
              )),
              SizedBox(width: 10),
              IconButton(
                  onPressed: () {
                    context.read<ChatroomBloc>().add(
                          ChatroomEvent.sendMessagePressed(_controller.text),
                        );
                    _controller.clear();
                  },
                  icon: Icon(
                    Icons.send,
                    size: 25,
                    color: Colors.white,
                  ))
            ],
          ),
        );
      },
    );
  }
}
