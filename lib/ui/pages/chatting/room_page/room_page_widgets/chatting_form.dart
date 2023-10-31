import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/size.dart';

class ChattingForm extends StatefulWidget {
  final Function(String)? onSubmitted;

  ChattingForm({Key? key, this.onSubmitted}) : super(key: key);

  @override
  _ChattingFormState createState() => _ChattingFormState();
}

class _ChattingFormState extends State<ChattingForm> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: TextField(
          controller: controller,
          maxLines: 1,
          style: const TextStyle(fontSize: mediumGap),
          decoration: const InputDecoration(
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
          onSubmitted: (text) {
            if (widget.onSubmitted != null) {
              widget.onSubmitted!(text);
            }
            controller.clear();
          },
        ),
      ),
    );
  }
}
