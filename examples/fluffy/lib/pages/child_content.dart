import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my_page_store.dart';

class ChildContent extends StatefulWidget {
  @override
  _ChildContentState createState() => _ChildContentState();
}

class _ChildContentState extends State<ChildContent> {
  MyPageStore store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<MyPageStore>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Text("From child: ${store.messageContent}");
  }
}
