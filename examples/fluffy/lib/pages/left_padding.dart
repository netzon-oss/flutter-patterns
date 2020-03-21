import 'package:fluffy/pages/child_content.dart';
import 'package:flutter/material.dart';

class LeftPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: 20),
      child: ChildContent(),
    );
  }
}
