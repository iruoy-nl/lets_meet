import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

const android = FirebaseOptions(
  apiKey: 'AIzaSyDOg7C7ITsrK7lvzMQTiiItubnEux1qIPQ',
  appId: '1:610588146245:android:9d3a4f31e7a2c64077012c',
  messagingSenderId: '610588146245',
  projectId: 'let-s-meet-9e5f0',
  storageBucket: 'let-s-meet-9e5f0.appspot.com',
);

const ios = FirebaseOptions(
  apiKey: 'AIzaSyAZOPUvI4j7XyIyCQL8HN0dR1AEF7gjeMU',
  appId: '1:610588146245:ios:71c5291bcd40321577012c',
  messagingSenderId: '610588146245',
  projectId: 'let-s-meet-9e5f0',
  storageBucket: 'let-s-meet-9e5f0.appspot.com',
  iosClientId:
      '610588146245-mumf6magqkia4u72s1jq24gpl4rnkc6u.apps.googleusercontent.com',
  iosBundleId: 'com.example.letsMeet',
);

FirebaseOptions get options {
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return android;

    case TargetPlatform.iOS:
      return ios;

    default:
      throw UnsupportedError(
        'Firebase has not been configured for: $defaultTargetPlatform.',
      );
  }
}
