import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// http 통신
final dio = Dio(
  BaseOptions(
    baseUrl: "http://192.168.219.175:8080", // 팀장
    // baseUrl: "http://192.168.200.2:8080", // 본죽
    // baseUrl: "http://192.168.0.24:8080, // 정완
    // baseUrl: "http://192.168.219.105:8080", // 내 IP 입력

    contentType: "application/json; charset=utf-8",
  ),
);

// 휴대폰 로컬에 파일로 저장
const secureStorage = FlutterSecureStorage();
