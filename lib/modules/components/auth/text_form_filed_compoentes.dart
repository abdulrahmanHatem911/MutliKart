import 'package:flutter/material.dart';

class AuthTextFormFiled extends StatelessWidget {
  final TextInputType textInputType;
  final String hintTilte;
  final IconData prefixIcon;
  IconData? sufixIcon;
  AuthTextFormFiled({
    super.key,
    required this.textInputType,
    required this.hintTilte,
    required this.prefixIcon,
    this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.07,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintTilte,
          hintStyle: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontSize: 14.0, color: Colors.grey.shade500),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.grey.shade600,
          ),
          suffixIcon: Icon(
            sufixIcon,
            color: Colors.grey.shade500,
          ),
        ),
      ),
    );
  }
}
