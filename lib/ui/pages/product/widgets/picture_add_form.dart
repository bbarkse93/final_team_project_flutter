import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:team_project/_core/constants/size.dart';
import 'package:team_project/_core/utils/my_base64_util.dart';

class PictureAddForm extends StatefulWidget {
  const PictureAddForm({
    super.key,
  });

  @override
  State<PictureAddForm> createState() => _PictureAddFormState();
}

class _PictureAddFormState extends State<PictureAddForm> {
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: smallGap),
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: SizedBox(
                width: 50,
                height: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "/10",
                      style: TextStyle(color: Colors.black54),
                    ),
                    Icon(
                      CupertinoIcons.photo_camera_solid,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
              onPressed: () {
                _pickImageFromGallery();
              }),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75,
                  width: 75,
                  child: _selectedImage != null
                      ? Image.file(
                          _selectedImage!,
                          fit: BoxFit.cover,
                        )
                      : Text(""),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });

      // 인코딩 진행 코드
      String encodeImagePath = base64Encode(pickedImage.path);
      print("갤러리에서 들고오는 겁니다 : ${encodeImagePath}");
    }
  }
}
