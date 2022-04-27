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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsFd6y8trhuJ1Y_dIYZItiq3XBACbAJK0',
    appId: '1:785992082504:android:42f5fd48fd78868b75e47d',
    messagingSenderId: '785992082504',
    projectId: 'insta-clone-app-conny',
    storageBucket: 'insta-clone-app-conny.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrUe5BpaT5rCvAMrhpDHG0xTVNVLNFjSw',
    appId: '1:785992082504:ios:7d939ab925045e1275e47d',
    messagingSenderId: '785992082504',
    projectId: 'insta-clone-app-conny',
    storageBucket: 'insta-clone-app-conny.appspot.com',
    iosClientId: '785992082504-a70l5pvtq2hsn4e8uevjg2dt11e381mg.apps.googleusercontent.com',
    iosBundleId: 'com.example.instaClone',
  );
}
