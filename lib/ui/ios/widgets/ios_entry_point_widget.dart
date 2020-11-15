import 'package:flutter/cupertino.dart';
import 'package:imc_calculator_bloc_flutter/ui/ios/pages/ios_home_page.dart';

class IosEntryPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Índice de Massa Corporal',
      debugShowCheckedModeBanner: false,
      home: IosHomePage(title: 'Índice de Massa Corporal'),
    );
  }
}
