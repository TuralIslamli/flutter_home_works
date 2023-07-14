import 'package:crypto_coins/router/router.dart';
import 'package:crypto_coins/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoApp extends StatelessWidget {
  const CryptoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto app',
      routes: routes,
      theme: darkTheme,
    );
  }
}
