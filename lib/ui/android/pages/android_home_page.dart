import 'package:flutter/material.dart';
import 'package:imc_calculator_bloc_flutter/bloc/imc_calculate_bloc.dart';
import 'package:imc_calculator_bloc_flutter/ui/android/widgets/android_input_widget.dart';

class AndroidHomePage extends StatefulWidget {
  final String title;
  AndroidHomePage({Key key, this.title}) : super(key: key);

  @override
  _AndroidHomePageState createState() => _AndroidHomePageState();
}

class _AndroidHomePageState extends State<AndroidHomePage> {
  var imcCalculateBloc = ImcBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          AndroidInputWidget(
            label: "Altura em centímetros",
            ctrl: imcCalculateBloc.alturaCtrl,
          ),
          AndroidInputWidget(
            label: "Peso em quilogramas",
            ctrl: imcCalculateBloc.pesoCtrl,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              imcCalculateBloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white,
                ),
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
