// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDSh8tgiBTfHzP4VXRuBWDVuq7ouXkn-Qs',
    appId: '1:300105089804:web:73265ecd8984ecbfef3f29',
    messagingSenderId: '300105089804',
    projectId: 'schoolproject-52c01',
    authDomain: 'schoolproject-52c01.firebaseapp.com',
    storageBucket: 'schoolproject-52c01.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKhN9ddaqdjUJUj0KAP1kQf5qAcc4lRXo',
    appId: '1:300105089804:android:3b2df76b3f9d87a8ef3f29',
    messagingSenderId: '300105089804',
    projectId: 'schoolproject-52c01',
    storageBucket: 'schoolproject-52c01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4tC2BzVxhjntOgRdRPHmj_fcNgbLGyIs',
    appId: '1:300105089804:ios:d9d7ecb27412703def3f29',
    messagingSenderId: '300105089804',
    projectId: 'schoolproject-52c01',
    storageBucket: 'schoolproject-52c01.appspot.com',
    iosBundleId: 'com.example.projectone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4tC2BzVxhjntOgRdRPHmj_fcNgbLGyIs',
    appId: '1:300105089804:ios:d9d7ecb27412703def3f29',
    messagingSenderId: '300105089804',
    projectId: 'schoolproject-52c01',
    storageBucket: 'schoolproject-52c01.appspot.com',
    iosBundleId: 'com.example.projectone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDSh8tgiBTfHzP4VXRuBWDVuq7ouXkn-Qs',
    appId: '1:300105089804:web:71a928d1afb9b6b4ef3f29',
    messagingSenderId: '300105089804',
    projectId: 'schoolproject-52c01',
    authDomain: 'schoolproject-52c01.firebaseapp.com',
    storageBucket: 'schoolproject-52c01.appspot.com',
  );
}
