import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  //위젯 추출해주고
  final Function onTap;
  //onTap과 buttonTitle 속성은 두페이지의 푸터마다 다르게 값을 줘야하니까 따로 정의한다
  final String buttonTitle;

  BottomButton({@required this.onTap, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonTextStyle,
          ),
        ),
        color: KBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: KBottomContainerHeight,
      ),
    );
  }
}
