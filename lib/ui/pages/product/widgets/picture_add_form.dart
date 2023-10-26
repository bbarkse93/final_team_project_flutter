import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';

class PictureAddForm extends StatefulWidget {
  final int maxImages;
  PictureAddForm({
    super.key,
    this.maxImages = 10,
  });

  @override
  State<PictureAddForm> createState() => _PictureAddFormState();
}

class _PictureAddFormState extends State<PictureAddForm> {
  File? _selectedImage;
  List<Widget> images = [];

  @override
  void initState() {
    super.initState();
  }

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
                // 추가 버튼 누르면 새로운 버튼 추가
                setState(() {});
              }),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: GestureDetector(
              child: Row(
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
                  SizedBox(width: smallGap),
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
        ),
      ],
    );
  }

  void _pickImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
        // 인코딩화
        String base64Encode(String pickImage) {
          String encode = base64.encode(utf8.encode(pickImage));
          print(encode); //bWVzc2FnZSDsnoXri4jri6QuLUJBU0U2NA==

          return encode;
        }

        // 디코딩화 코드
        List<int> base64Decode(String encoded) {
          List<int> decode = base64.decode(encoded);
          Logger().d(decode);

          // print(utf8.decode(decode)); //

          return decode;
        }
      });
    }
  }
}
