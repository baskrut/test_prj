import 'package:flutter/cupertino.dart';
import '../constant/colors.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    this.itemBody,
    this.width = 350,
    this.isHorizontal = true,
    Key key,
  }) : super(key: key);

  final bool isHorizontal;
  final String itemBody;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: width,
      margin:  EdgeInsets.symmetric(
        horizontal: isHorizontal ? 8 : 16 ,
        vertical: isHorizontal ? 16 : 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ProjectColor.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0),
            color: ProjectColor.grey,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Text(
          itemBody,
          style: const TextStyle(
            fontSize: 24,
            color: ProjectColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
