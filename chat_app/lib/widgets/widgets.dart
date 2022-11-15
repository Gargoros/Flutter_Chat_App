import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFF9800), width: 2)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9C27B0), width: 2)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFF44336), width: 2)),
);

void nextScreen(context, page) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void nextScreenReplace(context, page) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => page));
}

void showSnackBar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: const TextStyle(fontSize: 14),
    ),
    backgroundColor: color,
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
      label: "Ok",
      onPressed: () {},
      textColor: Colors.white,
    ),
  ));
}
