import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc_calculator_bloc_flutter/ui/android/widgets/android_entry_point_widget.dart';
import 'package:imc_calculator_bloc_flutter/ui/ios/widgets/ios_entry_point_widget.dart';

void main() => Platform.isIOS
    ? runApp(IosEntryPointWidget())
    : runApp(AndroidEntryPointWidget());
