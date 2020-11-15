import 'package:flutter/material.dart';
import 'package:imc_calculator_bloc_flutter/ui/android/pages/android_home_page.dart';

class AndroidEntryPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Índice de Massa Corporal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AndroidHomePage(title: 'Índice de Massa Corporal'),
    );
  }
}
