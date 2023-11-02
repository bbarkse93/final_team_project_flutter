import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateTextFormField extends StatelessWidget {
  final controllerName;
  final hintText;
  final funValidator;

  const UpdateTextFormField({
    required this.funValidator,
    required this.controllerName,
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: Consumer(
        builder: (context, ref, child) {
          return (TextFormField(
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
          ));
        },
      ),
    );
  }
}
