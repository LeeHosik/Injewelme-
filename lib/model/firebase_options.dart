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
    apiKey: 'AIzaSyC7ZAUC2Yvb7ODeU0vgpvOOjseVYxLBsb8',
    appId: '1:353221602927:web:a2755947447b28b111e79a',
    messagingSenderId: '353221602927',
    projectId: 'injewelmeproject-680f3',
    authDomain: 'injewelmeproject-680f3.firebaseapp.com',
    storageBucket: 'injewelmeproject-680f3.appspot.com',
    measurementId: 'G-Z6LYTW8LL6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJhcj4mfPd9dzmcBG77Dy98RwWiCg1wSU',
    appId: '1:353221602927:android:e402eaee0444465011e79a',
    messagingSenderId: '353221602927',
    projectId: 'injewelmeproject-680f3',
    storageBucket: 'injewelmeproject-680f3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0Vs4R2r1XwIvSGIiEjaX1udhSgz6cmeI',
    appId: '1:353221602927:ios:6247d033f5e4be4b11e79a',
    messagingSenderId: '353221602927',
    projectId: 'injewelmeproject-680f3',
    storageBucket: 'injewelmeproject-680f3.appspot.com',
    iosClientId: '353221602927-doupit1jntkd97gil8e0e9r8eh9sq6ee.apps.googleusercontent.com',
    iosBundleId: 'com.example.inj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC0Vs4R2r1XwIvSGIiEjaX1udhSgz6cmeI',
    appId: '1:353221602927:ios:6247d033f5e4be4b11e79a',
    messagingSenderId: '353221602927',
    projectId: 'injewelmeproject-680f3',
    storageBucket: 'injewelmeproject-680f3.appspot.com',
    iosClientId: '353221602927-doupit1jntkd97gil8e0e9r8eh9sq6ee.apps.googleusercontent.com',
    iosBundleId: 'com.example.inj',
  );
}