import 'package:chat_app/pages/auth/group_infon.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String groupId;
  final String groupFullName;
  final String userName;
  const ChatPage(
      {super.key,
      required this.groupId,
      required this.groupFullName,
      required this.userName});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  Stream<QuerySnapshot>? chats;
  String admin = "";

  @override
  void initState() {
    getChatAndAdmin();
    super.initState();
  }

  getChatAndAdmin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.groupFullName,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
        ),
        actions: [
          IconButton(
              onPressed: () {
                nextScreen(
                    context,
                    GroupInfo(
                      adminName: admin,
                      groupFullName: widget.groupFullName,
                      groupId: widget.groupId,
                    ));
              },
              icon: const Icon(Icons.info))
        ],
      ),
    );
  }
}
