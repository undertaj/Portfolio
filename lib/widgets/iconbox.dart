import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconBox extends StatelessWidget {
  final String value;
  const IconBox({super.key,required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62.49,
      height: 62.49,
      decoration: ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(width: 2, color: Color(0xFF5FBCFF)),
        ),
      ),
      child:  Padding(
        padding: const EdgeInsets.all(9.0),
        child: SvgPicture.asset('icons/${value}_icon.svg'),
      ),
    );
  }
}
