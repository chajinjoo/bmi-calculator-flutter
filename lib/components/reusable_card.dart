import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0), //사방 여백
        decoration: BoxDecoration(
          color: colour, //컨테이너 색상
          borderRadius: BorderRadius.circular(10.0), //컨테이너 테두리
        ),
      ),
    );
  }
}
