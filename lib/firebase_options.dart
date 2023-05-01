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
    apiKey: 'AIzaSyC1DaKXkw6YManfpeuEzuKXYvckm5gR718',
    appId: '1:660674554127:web:fa055d9dd9d29e54a8f67a',
    messagingSenderId: '660674554127',
    projectId: 'assignment-928fd',
    authDomain: 'assignment-928fd.firebaseapp.com',
    storageBucket: 'assignment-928fd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmsXLeYKrEDqwD0EoAN7qweY5cU1-jhmU',
    appId: '1:660674554127:android:d7cde86889b37588a8f67a',
    messagingSenderId: '660674554127',
    projectId: 'assignment-928fd',
    storageBucket: 'assignment-928fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAslVEu3CnhaS_9Jsd4yKXr4BGeIQRP3yY',
    appId: '1:660674554127:ios:978d2b811199b170a8f67a',
    messagingSenderId: '660674554127',
    projectId: 'assignment-928fd',
    storageBucket: 'assignment-928fd.appspot.com',
    iosClientId: '660674554127-mra851hs2rs3uvhcamavefe1b2ivhkvg.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignmentPortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAslVEu3CnhaS_9Jsd4yKXr4BGeIQRP3yY',
    appId: '1:660674554127:ios:978d2b811199b170a8f67a',
    messagingSenderId: '660674554127',
    projectId: 'assignment-928fd',
    storageBucket: 'assignment-928fd.appspot.com',
    iosClientId: '660674554127-mra851hs2rs3uvhcamavefe1b2ivhkvg.apps.googleusercontent.com',
    iosBundleId: 'com.example.assignmentPortfolio',
  );
}
