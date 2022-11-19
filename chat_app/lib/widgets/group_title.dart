import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../pages/chat_page.dart';

class GroupTitle extends StatefulWidget {
  final String userFullName;
  final String groupId;
  final String groupName;
  const GroupTitle(
      {super.key,
      required this.userFullName,
      required this.groupId,
      required this.groupName});

  @override
  State<GroupTitle> createState() => _GroupTitleState();
}

class _GroupTitleState extends State<GroupTitle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        nextScreen(
            context,
            ChatPage(
              groupFullName: widget.groupName,
              groupId: widget.groupId,
              userName: widget.userFullName,
            ));
      }),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: Text(
              widget.groupName.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          title: Text(
            widget.groupName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Join the conversation as ${widget.userFullName}",
            style: const TextStyle(fontSize: 13),
          ),
        ),
      ),
    );
  }
}
