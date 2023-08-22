import 'package:flutter/material.dart';

bottomButton({required String text, required Function onPressed}) {
  return GestureDetector(
    onTap: () {
      onPressed();
    },
    child: Container(
      color: const Color.fromRGBO(0, 202, 179, 1),
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}
