import 'package:chat_gpt/app.dart';
import 'package:flutter/material.dart';
import 'package:chat_gpt/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(const ChatGptApp());
  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder: ((context) => const ChatGptApp()),
  //   ),
  // );
}
