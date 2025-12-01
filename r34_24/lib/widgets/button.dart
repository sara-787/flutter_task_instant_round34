import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String title;
  final Color color;
  final String path;
  const Button({
    super.key,
    required this.title,
    required this.color,
    required this.path
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 40),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor:color,
        padding: const EdgeInsets.symmetric(vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, path);
      },
      child:  Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
              );
  }
}