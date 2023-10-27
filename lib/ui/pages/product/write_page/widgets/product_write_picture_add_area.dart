import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logger/logger.dart';
import 'package:team_project/_core/constants/size.dart';

class PictureAddArea extends StatefulWidget {
  final ValueNotifier<List<String>>? photoList; // Non-nullable ValueNotifier를 사용

  final int maxImages;

  PictureAddArea({
    this.photoList, // 'required' 키워드를 사용하여 photoList가 null이 아니라는 것을 명시
    Key? key,
    this.maxImages = 10,
  }) : super(key: key);

  @override
  State<PictureAddArea> createState() => _PictureAddFormState();
}

class _PictureAddFormState extends State<PictureAddArea> {
  File? _selectedImage;
  List<File> allImage = [];
  List<String> encodedAllImage = [];

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
                      "${allImage.length}/10",
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
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: allImage.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: smallGap),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          allImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      right: -10,
                      top: -10,
                      child: IconButton(
                        icon: Icon(CupertinoIcons.xmark_circle),
                        onPressed: () {
                          setState(() {
                            allImage.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  void _pickImageFromGallery() async {
    XFile? pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      Uint8List temp = await pickedImage.readAsBytes();
      List<int> real = temp.toList();
      String dd = base64Encode(real);

      setState(() {
        _selectedImage = File(pickedImage.path);

        List<File> temp = allImage;
        temp.add(_selectedImage!);

        encodedAllImage.add(dd);
        Logger().d(encodedAllImage);
        allImage = temp;
      });

      widget.photoList!.value = encodedAllImage; // 'widget.photoList.value'에 값을 설정
      Logger().d(widget.photoList!.value.length);
    }
  }
}
