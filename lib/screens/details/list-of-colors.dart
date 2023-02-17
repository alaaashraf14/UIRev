import 'package:flutter/material.dart';
import 'package:revision/constants.dart';
import 'package:revision/screens/details/color-dots.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            ColorDot(
              fillColor: Color(0xFF80989A),
              isSelected: true,
            ),
            ColorDot(
              fillColor: Color(0xFFFF5200),
            ),
            ColorDot(
              fillColor: kPrimaryColor,

            ),
            ColorDot(
              fillColor: Colors.black,

            ),
            ColorDot(
              fillColor: Colors.blue,

            ),
          ],
        ),
      );

  }
}
