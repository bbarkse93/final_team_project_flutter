import 'package:flutter/material.dart';
import 'package:team_project/_core/constants/color.dart';
import 'package:team_project/ui/pages/my_profile/my_profile_widgets/my_profile_update_body.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("프로필 수정"),
      ),
      body: MyProfileUpdateBody(),
    );
  }
}

// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:team_project/_core/constants/color.dart';
// import 'package:team_project/_core/constants/size.dart';
//
// class MyProfilePage extends StatefulWidget {
//   const MyProfilePage({super.key});
//
//   @override
//   State<MyProfilePage> createState() => _MyProfilePageState();
// }
//
// class _MyProfilePageState extends State<MyProfilePage> {
//   File? _image;
//
//   Future<void> _getImage() async {
//     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
//
//     if (image != null) {
//       setState(() {
//         _image = File(image.path);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios),
//             onPressed: () {
//               Navigator.pop(context);
//             }),
//         title: Text("프로필 수정"),
//         actions: [
//           TextButton(
//             child:
//                 Text("완료", style: TextStyle(color: kDarkColor, fontSize: 20)),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             //프로필 사진
//             SizedBox(height: 40),
//             Center(
//               child: Stack(
//                 children: [
//                   CircleAvatar(
//                     radius: 60,
//                     backgroundImage: _image != null
//                         ? FileImage(_image!)
//                         : AssetImage("assets/default.png")
//                             as ImageProvider<Object>,
//                   ),
//                   Positioned(
//                       top: 70,
//                       right: 0,
//                       child: IconButton(
//                         icon: Icon(CupertinoIcons.camera_circle, size: 40),
//                         onPressed: _getImage,
//                       ))
//                 ],
//               ),
//             ),
//             //유저 닉네임
//             SizedBox(height: 40),
//             Text("닉네임"),
//             const SizedBox(height: smallGap),
//             TextFormField(
//               obscureText: false,
//               decoration: InputDecoration(
//                 hintText: "Enter Password",
//                 enabledBorder: OutlineInputBorder(
//                   // 3. 기본 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   // 4. 손가락 터치시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   // 5. 에러발생시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//
// //유저 비밀번호
//             SizedBox(height: 40),
//             Text("비밀번호"),
//             const SizedBox(height: smallGap),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: "Enter Password",
//                 enabledBorder: OutlineInputBorder(
//                   // 3. 기본 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   // 4. 손가락 터치시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   // 5. 에러발생시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//
// //비밀번호 확인
//             SizedBox(height: 40),
//             Text("비밀번호 확인"),
//             const SizedBox(height: smallGap),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: "Enter Password",
//                 enabledBorder: OutlineInputBorder(
//                   // 3. 기본 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   // 4. 손가락 터치시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 errorBorder: OutlineInputBorder(
//                   // 5. 에러발생시 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 focusedErrorBorder: OutlineInputBorder(
//                   // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
