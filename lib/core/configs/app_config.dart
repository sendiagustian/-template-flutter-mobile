import 'package:flutter/material.dart';

import 'environment_config.dart';

class AppConfig {
  final Environment env;

  AppConfig(this.env);

  Future<void> init() async {
    // Flutter initialization
    WidgetsFlutterBinding.ensureInitialized();

    // Environment configuration
    await env.configure();

    // Firebase initialization
    // await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);

    // Auth persistence
    // FirebaseAuth.instanceFor(app: Firebase.app());

    // Hive initialization
    // await Hive.initFlutter();
    // await Hive.close();
    // await _apiServices.getToken().then((token) async {
    //   await _sessionUtil.clearSession().then((_) async {
    //     if (token != null) {
    //       await _sessionUtil.writeSession(_sessionUtil.authKey, token);
    //     }
    //   });
    // });
  }
}