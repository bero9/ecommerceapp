import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'Appclass.dart';
import 'data/repositories/repositories.authentication/authentication_repositories.dart';
import 'firebase_options.dart';

Future<void> main() async {
  /// Add Widget Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  /// ---GetX Local Storage
  await GetStorage.init();

  ///--- await splash until other item load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// initialize Firebase & Authentication
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp value) => Get.put(AuthenticationRepositories()));

  ///Load all the  Material Design
  runApp(const App());
}
