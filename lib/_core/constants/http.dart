import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// http 통신
final dio = Dio(
  BaseOptions(
<<<<<<< HEAD
    baseUrl: "http://192.168.0.24:8080", // 내 IP 입력
=======
    baseUrl: "http://192.168.0.9:8080", // 내 IP 입력
>>>>>>> d309c8183053f5871a075dc621e76ee45b6f4a14
    contentType: "application/json; charset=utf-8",
  ),
);

// 휴대폰 로컬에 파일로 저장
const secureStorage = FlutterSecureStorage();
