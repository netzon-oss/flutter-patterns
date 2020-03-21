import 'package:fluffy/model/addition_parameters_model.dart';
import 'package:fluffy/pages/my_page2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_page_store.dart';
import 'right_padding.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  MyPageStore store;
  
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<MyPageStore>(context);
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              RightPadding(),
              Visibility(
                visible: store.answerContent.isNotEmpty,
                child: Text(store.answerContent),
              ),
              RaisedButton(
                onPressed: () async {
                  var response = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyPage2()),
                  );
                  if (response != null && response is AdditionParametersModel) {
                    final castedResponse = response;
                    store.setParameters(castedResponse);
                    store.refresh();
                  }
                },
                child: Text("Some Text"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
