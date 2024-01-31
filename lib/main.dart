import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:native_design/presentation/login/login.dart';
import 'package:native_design/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  PlatformApp(
      title: 'native design',
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      material: (_,__)=> MaterialAppData(theme: materialTheme),
      cupertino: (_,__) => CupertinoAppData(theme: cupertinoTheme),
    );
  }
}
