import 'package:flutter/cupertino.dart';
import 'package:imc_calculator_bloc_flutter/bloc/imc_calculate_bloc.dart';
import 'package:imc_calculator_bloc_flutter/ui/ios/widgets/ios_input_widget.dart';

class IosHomePage extends StatefulWidget {
  final String title;
  IosHomePage({Key key, this.title}) : super(key: key);

  @override
  _IosHomePageState createState() => _IosHomePageState();
}

class _IosHomePageState extends State<IosHomePage> {
  var imcCalculateBloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      child: ListView(
        children: [
          IosInputWidget(
            label: "Altura em centímetros",
            ctrl: imcCalculateBloc.alturaCtrl,
          ),
          IosInputWidget(
            label: "Peso em quilogramas",
            ctrl: imcCalculateBloc.pesoCtrl,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              imcCalculateBloc.result,
              textAlign: TextAlign.center,
              style: TextStyle(color: CupertinoColors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: CupertinoButton.filled(
              child: Text(
                "Calcular",
                style: TextStyle(color: CupertinoColors.white),
              ),
              onPressed: () {
                setState(() {
                  imcCalculateBloc.calculate();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
