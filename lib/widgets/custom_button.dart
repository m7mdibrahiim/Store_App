import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.text});
  String? text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
        )),
        height: 40,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.deepPurple),
      ),
    );
  }
}
