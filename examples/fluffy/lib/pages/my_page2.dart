import 'package:fluffy/model/addition_parameters_model.dart';
import 'package:flutter/material.dart';

class MyPage2 extends StatefulWidget {
  @override
  _MyPage2State createState() => _MyPage2State();
}

class _MyPage2State extends State<MyPage2> {
  final _formKey = GlobalKey<FormState>();
  final firstNumberTextFieldController = TextEditingController();
  final secondNumberTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Page2"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Form(
                  key: _formKey,
                  child: Column(children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Add number here",
                          labelText: "First Number"),
                      controller: firstNumberTextFieldController,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Add number here",
                          labelText: "Second Number"),
                      controller: secondNumberTextFieldController,
                    ),
                    RaisedButton(
                      onPressed: () {
                        String firstNumber =
                            firstNumberTextFieldController.text;
                        String secondNumber =
                            secondNumberTextFieldController.text;
                        int first = int.parse(firstNumber);
                        int second = int.parse(secondNumber);

                        final objectToPass = AdditionParametersModel(
                            firstNumber: first, secondNUmber: second);

                        Navigator.pop(context, objectToPass);
                      },
                      child: Text("Some Text"),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
