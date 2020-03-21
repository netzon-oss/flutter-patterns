import 'package:flutter/material.dart';

import 'left_padding.dart';

class RightPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(right: 20),
      child: LeftPadding(),
    );
  }
}
