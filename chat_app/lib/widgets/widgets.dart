import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(color: Colors.black),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFF9800), width: 2)),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9C27B0), width: 2)),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFF44336), width: 2)),
);
