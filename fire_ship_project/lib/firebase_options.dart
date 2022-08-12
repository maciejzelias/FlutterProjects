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
    apiKey: 'AIzaSyCqvtD15lGGwSdI3UC-VbhO5HIrAqvhrzI',
    appId: '1:911134742494:web:26aa0daff3ce8c4207ef4f',
    messagingSenderId: '911134742494',
    projectId: 'fireshipproject-17a7e',
    authDomain: 'fireshipproject-17a7e.firebaseapp.com',
    storageBucket: 'fireshipproject-17a7e.appspot.com',
    measurementId: 'G-S4EHN6DBT4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZUNMRh0bv-kmfEwbRvYRGmirixQEjEww',
    appId: '1:911134742494:android:508bfffd1451086907ef4f',
    messagingSenderId: '911134742494',
    projectId: 'fireshipproject-17a7e',
    storageBucket: 'fireshipproject-17a7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4eHP4ZTumozKb_aNYamXQqkFxZUijezI',
    appId: '1:911134742494:ios:e29a132b244d302e07ef4f',
    messagingSenderId: '911134742494',
    projectId: 'fireshipproject-17a7e',
    storageBucket: 'fireshipproject-17a7e.appspot.com',
    iosClientId: '911134742494-ijqjj2h8r76l9tge4e2dm531o7m0256p.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireShipProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4eHP4ZTumozKb_aNYamXQqkFxZUijezI',
    appId: '1:911134742494:ios:e29a132b244d302e07ef4f',
    messagingSenderId: '911134742494',
    projectId: 'fireshipproject-17a7e',
    storageBucket: 'fireshipproject-17a7e.appspot.com',
    iosClientId: '911134742494-ijqjj2h8r76l9tge4e2dm531o7m0256p.apps.googleusercontent.com',
    iosBundleId: 'com.example.fireShipProject',
  );
}