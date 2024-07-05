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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA1pWATyhGNoZl15dAZo12pvUEERoJb5qc',
    appId: '1:551635500586:web:7d06f05aaf8aac00cfcd53',
    messagingSenderId: '551635500586',
    projectId: 'skin-care-1d7f7',
    authDomain: 'skin-care-1d7f7.firebaseapp.com',
    storageBucket: 'skin-care-1d7f7.appspot.com',
    measurementId: 'G-P4X9XVW9YY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7q5uYyEvYAJXAlcKd5riHN8q-U0vtaQw',
    appId: '1:551635500586:android:f15ea148480e657bcfcd53',
    messagingSenderId: '551635500586',
    projectId: 'skin-care-1d7f7',
    storageBucket: 'skin-care-1d7f7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-M8h2MapPKRYOY-5F3WLy4wdKHGSlayw',
    appId: '1:551635500586:ios:87c8678bf1a8b76ecfcd53',
    messagingSenderId: '551635500586',
    projectId: 'skin-care-1d7f7',
    storageBucket: 'skin-care-1d7f7.appspot.com',
    iosBundleId: 'com.skin.skinCar',
  );

}