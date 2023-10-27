import 'package:flutter/material.dart';

class WriteTextFormField extends StatelessWidget {
  final controllerName;
  final hintText;
  final funValidator;
  const WriteTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextFormField(
        controller: controllerName,
        obscureText: false,
        validator: funValidator,
        decoration: InputDecoration(
          hintText: "$hintText",
          hintStyle: TextStyle(fontSize: 15),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
