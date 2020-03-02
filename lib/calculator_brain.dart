import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String calculateBMI() {
    //BMI 계산 공식. BMI 결과를 문자열 타입으로 반환한다
    _bmi = weight / pow(height / 100, 2); //pow(x, 제곱)
    return _bmi.toStringAsFixed(1);
    //위에 공식으로는 겁나 긴 실수가 나오니까 10수로 반환시킨다. (괄호 안에 1을 씀으로 소수점 이하 한자리만 반환해줌)
  }
  //상단 할당 변수명이 그냥 double bmi 였다면 {} 중괄호 안에 해당 로컬에서만 값을 볼수 있어서
  //getResult bmi로 접근을 못한다. 그렇기 때문에 프라이빗 변수로 선언을 해주고 모든 명을 똑같이 바꿔주면 접근 가능하다.

  String getResult() {
    //결과가 될 문자열을 반환하는 메소드
    if (_bmi >= 25) {
      return '과체중';
    } else if (_bmi > 18.5) {
      return '정상';
    } else {
      return '저체중';
    }
  }

  String getInterpretation() {
    //BMI 해석 메소드
    if (_bmi >= 25) {
      return '당신은 정상 체중보다 높습니다.\n운동을 좀 더 해주세요.';
    } else if (_bmi > 18.5) {
      return '당신은 정상 체중입니다.\n잘하고 있어요!';
    } else {
      return '당신은 정상 체중보다 낮습니다.\n음식을 좀 더 섭취 해주세요.';
    }
  }
}
