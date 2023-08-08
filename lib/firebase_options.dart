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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDmqI1Ifz9REyA7ikPshLkJCSYXaZvb3OQ',
    appId: '1:251863947541:web:327ba7ae6ff9da6bd8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    authDomain: 'crypto-list-app-d3a81.firebaseapp.com',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
    measurementId: 'G-C1E32X4YTM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtBjCUrlbGaJD1IgWm8CwpWBkXC_Xj7UE',
    appId: '1:251863947541:android:fb5e5d84b73a0424d8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8gjxc6HbQRgbheUahFf4-WNfs2VNKJMM',
    appId: '1:251863947541:ios:a72d6d8df972a2aed8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
    iosClientId: '251863947541-i163r3rqqchg95rtjf7nse5rfkcq6i23.apps.googleusercontent.com',
    iosBundleId: 'com.example.dartApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8gjxc6HbQRgbheUahFf4-WNfs2VNKJMM',
    appId: '1:251863947541:ios:1ac3667255642d95d8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
    iosClientId: '251863947541-rar8mg7sofs5s9egon7tjmp3iofh5obu.apps.googleusercontent.com',
    iosBundleId: 'com.example.dartApplication1.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDmqI1Ifz9REyA7ikPshLkJCSYXaZvb3OQ',
    appId: '1:251863947541:web:a6570dd903be2de5d8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    authDomain: 'crypto-list-app-d3a81.firebaseapp.com',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
    measurementId: 'G-0E61Z1WSCP',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyDmqI1Ifz9REyA7ikPshLkJCSYXaZvb3OQ',
    appId: '1:251863947541:web:4395b36937d1af4ad8f11c',
    messagingSenderId: '251863947541',
    projectId: 'crypto-list-app-d3a81',
    authDomain: 'crypto-list-app-d3a81.firebaseapp.com',
    storageBucket: 'crypto-list-app-d3a81.appspot.com',
    measurementId: 'G-P0YDC33909',
  );
}