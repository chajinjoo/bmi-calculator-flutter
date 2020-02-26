import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0), //사방 여백
      decoration: BoxDecoration(
        color: colour, //컨테이너 색상
        borderRadius: BorderRadius.circular(10.0), //컨테이너 테두리
      ),
    );
  }
}
