import 'package:flutter/material.dart';

import '../style/style.dart';

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 6,
      color: Style.primaryGrey,
    );
  }
}
