import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon; //속성 지정
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed}); //생성자로 초기화

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon), // - 버튼과 +버튼 2개가 있으니 이건 속성을 따로 뺴줘야함
      onPressed: onPressed,
      elevation: 0.0, //그림자
      constraints: BoxConstraints.tightFor(
        //버튼크기
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(), //버튼 모양
      fillColor: Color(0xFF4C4F5E), //버튼 색상
    );
  }
}
