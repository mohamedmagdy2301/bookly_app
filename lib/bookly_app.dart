import 'package:bookly_app/core/routers/routers_manager.dart';
import 'package:bookly_app/core/theme/theming_app.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RoutersManager.router,
      debugShowCheckedModeBanner: false,
      theme: appTheme,
    );
  }
}
