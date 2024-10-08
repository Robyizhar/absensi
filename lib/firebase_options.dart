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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB0kc1C_o57yqHUFq3BG1CrocwB7GFrlM8',
    appId: '1:256296825040:android:d91e80e083f286bd392ed5',
    messagingSenderId: '256296825040',
    projectId: 'presence-72ae4',
    databaseURL: 'https://presence-72ae4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'presence-72ae4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCg_4WAya2gA08EAa_Psg4nDLCCYYiVspM',
    appId: '1:256296825040:ios:890ffc63290607f0392ed5',
    messagingSenderId: '256296825040',
    projectId: 'presence-72ae4',
    databaseURL: 'https://presence-72ae4-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'presence-72ae4.appspot.com',
    iosClientId: '256296825040-a4i2gk3bnlse2dtv9ctjg7o0nuu67u7j.apps.googleusercontent.com',
    iosBundleId: 'robby-izhar.com.absensi',
  );
}
