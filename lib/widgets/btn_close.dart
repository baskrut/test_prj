import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constant/assets.dart';

class BtnClose extends StatelessWidget {
  const BtnClose({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: SvgPicture.asset(Assets.close)
    );
  }
}
