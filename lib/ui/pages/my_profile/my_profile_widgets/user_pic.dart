import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserPic extends StatefulWidget {
  const UserPic({
    super.key,
  });

  @override
  State<UserPic> createState() => _UserPicState();
}

class _UserPicState extends State<UserPic> {
  File? _image;

  Future<void> _getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: _image != null
                ? FileImage(_image!)
                : AssetImage("assets/default.png") as ImageProvider<Object>,
          ),
          Positioned(
              top: 70,
              right: 0,
              child: IconButton(
                  icon: Icon(CupertinoIcons.camera_circle, size: 40),
                  onPressed: _getImage))
        ],
      ),
    );
  }
}
