// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'API키',
    appId: '1:270638990483:web:c16183cbb357b5fb677966',
    messagingSenderId: '270638990483',
    projectId: 'practicefirestore-eb262',
    authDomain: 'practicefirestore-eb262.firebaseapp.com',
    storageBucket: 'practicefirestore-eb262.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'API키',
    appId: '1:270638990483:android:1c9ab13f8151ca4d677966',
    messagingSenderId: '270638990483',
    projectId: 'practicefirestore-eb262',
    storageBucket: 'practicefirestore-eb262.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'API키',
    appId: '1:270638990483:ios:5598651b5ef25b07677966',
    messagingSenderId: '270638990483',
    projectId: 'practicefirestore-eb262',
    storageBucket: 'practicefirestore-eb262.appspot.com',
    iosBundleId: 'com.example.teamProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'API키',
    appId: '1:270638990483:ios:2ae127c441bcc48e677966',
    messagingSenderId: '270638990483',
    projectId: 'practicefirestore-eb262',
    storageBucket: 'practicefirestore-eb262.appspot.com',
    iosBundleId: 'com.example.teamProject.RunnerTests',
  );
}
