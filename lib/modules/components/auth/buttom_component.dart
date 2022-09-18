import 'package:flutter/material.dart';

class AuthBuildButtom extends StatelessWidget {
  final String title;
  final Function()? onTapFunction;
  const AuthBuildButtom({
    super.key,
    required this.title,
    this.onTapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: const Color(0xffFF725E),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
