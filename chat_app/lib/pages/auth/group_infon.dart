import 'package:flutter/material.dart';

class GroupInfo extends StatefulWidget {
  final String groupId;
  final String groupFullName;
  final String adminName;
  const GroupInfo(
      {super.key,
      required this.groupId,
      required this.groupFullName,
      required this.adminName});

  @override
  State<GroupInfo> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {
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
      ),
      body: const Center(child: Text("Group Info")),
    );
  }
}
