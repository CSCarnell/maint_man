import 'package:flutter/material.dart';

class ACFTnew extends StatefulWidget {
  const ACFTnew({Key? key}) : super(key: key);

  @override
  State<ACFTnew> createState() => _ACFTnewState();
}

enum Gender { male, female }

Gender? _gender = Gender.male;

class _ACFTnewState extends State<ACFTnew> {
  bool male = false;
  bool female = false;

  int age = 140;
  String ageText = '17-21';
  int deadLift = 0;
  int deadLiftScore = 0;

  double throwDistance = 4.5;
  int throwScore = 60;

  int pushup = 10;
  int pushupScore = 10;

  void setAge() {
    setState(() {});
  }

  void calcPushupScore() {
    setState(() {
      if (ageText == '17-21' && _gender == Gender.male) {
        if (pushup == 10) {
          pushupScore = 60;
        }
        if (pushup == 13) {
          pushupScore = 61;
        }
        if (pushup == 16) {
          pushupScore = 62;
        }
        if (pushup == 17) {
          pushupScore = 63;
        }
        if (pushup == 20) {
          pushupScore = 64;
        }
        if (pushup == 22) {
          pushupScore = 65;
        }
        if (pushup == 23) {
          pushupScore = 66;
        }
        if (pushup == 24) {
          pushupScore = 67;
        }
        if (pushup == 25) {
          pushupScore = 68;
        }
        if (pushup == 27) {
          pushupScore = 69;
        }
        if (pushup == 28) {
          pushupScore = 70;
        }
        if (pushup == 29) {
          pushupScore = 71;
        }
        if (pushup == 30) {
          pushupScore = 72;
        }
        if (pushup == 31) {
          pushupScore = 73;
        }
        if (pushup == 32) {
          pushupScore = 75;
        }
        if (pushup == 33) {
          pushupScore = 76;
        }
        if (pushup == 34) {
          pushupScore = 77;
        }
        if (pushup == 35) {
          pushupScore = 78;
        }
        if (pushup == 36) {
          pushupScore = 79;
        }
        if (pushup == 37) {
          pushupScore = 80;
        }
        if (pushup == 38) {
          pushupScore = 82;
        }
        if (pushup == 39) {
          pushupScore = 83;
        }
        if (pushup == 40) {
          pushupScore = 84;
        }
        if (pushup == 41) {
          pushupScore = 86;
        }
        if (pushup == 42) {
          pushupScore = 87;
        }
        if (pushup == 43) {
          pushupScore = 88;
        }
        if (pushup == 44) {
          pushupScore = 89;
        }
        if (pushup == 45) {
          pushupScore = 90;
        }
        if (pushup == 46) {
          pushupScore = 91;
        }
        if (pushup == 47) {
          pushupScore = 92;
        }
        if (pushup == 48) {
          pushupScore = 93;
        }
        if (pushup == 49) {
          pushupScore = 94;
        }
        if (pushup == 50) {
          pushupScore = 95;
        }
        if (pushup == 51) {
          pushupScore = 96;
        }
        if (pushup == 53) {
          pushupScore = 97;
        }
        if (pushup == 54) {
          pushupScore = 98;
        }
        if (pushup == 56) {
          pushupScore = 99;
        }
        if (pushup == 57) {
          pushupScore = 100;
        }
      }
      if (ageText == '17-21' && _gender == Gender.female) {
        if (pushup == 10) {
          pushupScore = 60;
        }
        if (pushup == 11) {
          pushupScore = 61;
        }
        if (pushup == 12) {
          pushupScore = 62;
        }
        if (pushup == 13) {
          pushupScore = 64;
        }
        if (pushup == 14) {
          pushupScore = 65;
        }
        if (pushup == 15) {
          pushupScore = 66;
        }
        if (pushup == 16) {
          pushupScore = 68;
        }
        if (pushup == 17) {
          pushupScore = 69;
        }
        if (pushup == 18) {
          pushupScore = 70;
        }
        if (pushup == 19) {
          pushupScore = 71;
        }
        if (pushup == 20) {
          pushupScore = 72;
        }
        if (pushup == 21) {
          pushupScore = 74;
        }
        if (pushup == 22) {
          pushupScore = 75;
        }
        if (pushup == 23) {
          pushupScore = 76;
        }
        if (pushup == 24) {
          pushupScore = 77;
        }
        if (pushup == 25) {
          pushupScore = 78;
        }
        if (pushup == 26) {
          pushupScore = 79;
        }
        if (pushup == 27) {
          pushupScore = 80;
        }
        if (pushup == 28) {
          pushupScore = 82;
        }
        if (pushup == 29) {
          pushupScore = 83;
        }
        if (pushup == 30) {
          pushupScore = 84;
        }
        if (pushup == 31) {
          pushupScore = 85;
        }
        if (pushup == 32) {
          pushupScore = 86;
        }
        if (pushup == 33) {
          pushupScore = 87;
        }
        if (pushup == 34) {
          pushupScore = 88;
        }
        if (pushup == 35) {
          pushupScore = 89;
        }
        if (pushup == 36) {
          pushupScore = 90;
        }
        if (pushup == 37) {
          pushupScore = 91;
        }
        if (pushup == 38) {
          pushupScore = 92;
        }
        if (pushup == 39) {
          pushupScore = 94;
        }
        if (pushup == 42) {
          pushupScore = 95;
        }
        if (pushup == 43) {
          pushupScore = 96;
        }
        if (pushup == 45) {
          pushupScore = 97;
        }
        if (pushup == 47) {
          pushupScore = 98;
        }
        if (pushup == 50) {
          pushupScore = 99;
        }
        if (pushup == 53) {
          pushupScore = 100;
        }
      }
      if (ageText == '22-26' && _gender == Gender.male) {
        if (pushup == 10) {
          pushupScore = 60;
        }
        if (pushup == 12) {
          pushupScore = 61;
        }
        if (pushup == 13) {
          pushupScore = 62;
        }
        if (pushup == 14) {
          pushupScore = 63;
        }
        if (pushup == 16) {
          pushupScore = 64;
        }
        if (pushup == 17) {
          pushupScore = 65;
        }
        if (pushup == 20) {
          pushupScore = 66;
        }
        if (pushup == 21) {
          pushupScore = 68;
        }
        if (pushup == 22) {
          pushupScore = 69;
        }
        if (pushup == 25) {
          pushupScore = 70;
        }
        if (pushup == 26) {
          pushupScore = 71;
        }
        if (pushup == 27) {
          pushupScore = 72;
        }
        if (pushup == 30) {
          pushupScore = 73;
        }
        if (pushup == 31) {
          pushupScore = 76;
        }
        if (pushup == 32) {
          pushupScore = 77;
        }
        if (pushup == 33) {
          pushupScore = 78;
        }
        if (pushup == 34) {
          pushupScore = 79;
        }
        if (pushup == 35) {
          pushupScore = 80;
        }
        if (pushup == 37) {
          pushupScore = 82;
        }
        if (pushup == 38) {
          pushupScore = 83;
        }
        if (pushup == 40) {
          pushupScore = 84;
        }
        if (pushup == 41) {
          pushupScore = 85;
        }
        if (pushup == 42) {
          pushupScore = 86;
        }
        if (pushup == 43) {
          pushupScore = 87;
        }
        if (pushup == 44) {
          pushupScore = 88;
        }
        if (pushup == 45) {
          pushupScore = 89;
        }
        if (pushup == 46) {
          pushupScore = 90;
        }
        if (pushup == 47) {
          pushupScore = 91;
        }
        if (pushup == 48) {
          pushupScore = 92;
        }
        if (pushup == 49) {
          pushupScore = 93;
        }
        if (pushup == 50) {
          pushupScore = 94;
        }
        if (pushup == 52) {
          pushupScore = 95;
        }
        if (pushup == 53) {
          pushupScore = 96;
        }
        if (pushup == 54) {
          pushupScore = 97;
        }
        if (pushup == 57) {
          pushupScore = 98;
        }
        if (pushup == 60) {
          pushupScore = 99;
        }
        if (pushup == 61) {
          pushupScore = 100;
        }
      }
      if (ageText == '27-31 ' && _gender == Gender.male) {
        if (pushup == 10) {
          pushupScore = 60;
        }
        if (pushup == 12) {
          pushupScore = 61;
        }
        if (pushup == 13) {
          pushupScore = 62;
        }
        if (pushup == 14) {
          pushupScore = 63;
        }
        if (pushup == 16) {
          pushupScore = 64;
        }
        if (pushup == 17) {
          pushupScore = 65;
        }
        if (pushup == 20) {
          pushupScore = 66;
        }
        if (pushup == 21) {
          pushupScore = 68;
        }
        if (pushup == 22) {
          pushupScore = 69;
        }
        if (pushup == 25) {
          pushupScore = 70;
        }
        if (pushup == 26) {
          pushupScore = 71;
        }
        if (pushup == 27) {
          pushupScore = 72;
        }
        if (pushup == 30) {
          pushupScore = 73;
        }
        if (pushup == 31) {
          pushupScore = 76;
        }
        if (pushup == 32) {
          pushupScore = 77;
        }
        if (pushup == 33) {
          pushupScore = 78;
        }
        if (pushup == 34) {
          pushupScore = 79;
        }
        if (pushup == 35) {
          pushupScore = 80;
        }
        if (pushup == 37) {
          pushupScore = 82;
        }
        if (pushup == 38) {
          pushupScore = 83;
        }
        if (pushup == 40) {
          pushupScore = 84;
        }
        if (pushup == 41) {
          pushupScore = 85;
        }
        if (pushup == 42) {
          pushupScore = 86;
        }
        if (pushup == 43) {
          pushupScore = 87;
        }
        if (pushup == 44) {
          pushupScore = 88;
        }
        if (pushup == 45) {
          pushupScore = 89;
        }
        if (pushup == 46) {
          pushupScore = 90;
        }
        if (pushup == 47) {
          pushupScore = 91;
        }
        if (pushup == 48) {
          pushupScore = 92;
        }
        if (pushup == 49) {
          pushupScore = 93;
        }
        if (pushup == 50) {
          pushupScore = 94;
        }
        if (pushup == 52) {
          pushupScore = 95;
        }
        if (pushup == 53) {
          pushupScore = 96;
        }
        if (pushup == 54) {
          pushupScore = 97;
        }
        if (pushup == 57) {
          pushupScore = 98;
        }
        if (pushup == 60) {
          pushupScore = 99;
        }
        if (pushup == 61) {
          pushupScore = 100;
        }
      }
    });
  }

  void calcDeadliftScore() {
    setState(() {
      if (ageText == '17-21' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 61;
        }
        if (deadLift == 160) {
          deadLiftScore = 64;
        }
        if (deadLift == 170) {
          deadLiftScore = 67;
        }
        if (deadLift == 180) {
          deadLiftScore = 68;
        }
        if (deadLift == 190) {
          deadLiftScore = 69;
        }
        if (deadLift == 200) {
          deadLiftScore = 72;
        }
        if (deadLift == 210) {
          deadLiftScore = 74;
        }
        if (deadLift == 220) {
          deadLiftScore = 77;
        }
        if (deadLift == 230) {
          deadLiftScore = 79;
        }
        if (deadLift == 240) {
          deadLiftScore = 82;
        }
        if (deadLift == 250) {
          deadLiftScore = 83;
        }
        if (deadLift == 260) {
          deadLiftScore = 84;
        }
        if (deadLift == 270) {
          deadLiftScore = 87;
        }
        if (deadLift == 280) {
          deadLiftScore = 90;
        }
        if (deadLift == 290) {
          deadLiftScore = 91;
        }
        if (deadLift == 300) {
          deadLiftScore = 93;
        }
        if (deadLift == 310) {
          deadLiftScore = 95;
        }
        if (deadLift == 320) {
          deadLiftScore = 96;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '17-21' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 64;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 78;
        }
        if (deadLift == 160) {
          deadLiftScore = 87;
        }
        if (deadLift == 170) {
          deadLiftScore = 91;
        }
        if (deadLift == 180) {
          deadLiftScore = 94;
        }
        if (deadLift == 190) {
          deadLiftScore = 97;
        }
        if (deadLift == 200) {
          deadLiftScore = 98;
        }
        if (deadLift >= 210) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '22-26' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 64;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 78;
        }
        if (deadLift == 160) {
          deadLiftScore = 87;
        }
        if (deadLift == 170) {
          deadLiftScore = 89;
        }
        if (deadLift == 180) {
          deadLiftScore = 91;
        }
        if (deadLift == 190) {
          deadLiftScore = 94;
        }
        if (deadLift == 200) {
          deadLiftScore = 96;
        }
        if (deadLift == 210) {
          deadLiftScore = 98;
        }
        if (deadLift == 220) {
          deadLiftScore = 99;
        }
        if (deadLift >= 230) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '27-31' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 64;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 86;
        }
        if (deadLift == 170) {
          deadLiftScore = 89;
        }
        if (deadLift == 180) {
          deadLiftScore = 91;
        }
        if (deadLift == 190) {
          deadLiftScore = 94;
        }
        if (deadLift == 200) {
          deadLiftScore = 95;
        }
        if (deadLift == 210) {
          deadLiftScore = 98;
        }
        if (deadLift == 220) {
          deadLiftScore = 99;
        }
        if (deadLift >= 230) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '32-36' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 64;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 88;
        }
        if (deadLift == 170) {
          deadLiftScore = 91;
        }
        if (deadLift == 180) {
          deadLiftScore = 93;
        }
        if (deadLift == 190) {
          deadLiftScore = 95;
        }
        if (deadLift == 200) {
          deadLiftScore = 96;
        }
        if (deadLift == 210) {
          deadLiftScore = 98;
        }
        if (deadLift == 220) {
          deadLiftScore = 99;
        }
        if (deadLift >= 230) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '37-41' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 65;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 90;
        }
        if (deadLift == 170) {
          deadLiftScore = 93;
        }
        if (deadLift == 180) {
          deadLiftScore = 95;
        }
        if (deadLift == 190) {
          deadLiftScore = 97;
        }
        if (deadLift == 200) {
          deadLiftScore = 99;
        }
        if (deadLift >= 210) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '37-41' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 65;
        }
        if (deadLift == 140) {
          deadLiftScore = 71;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 90;
        }
        if (deadLift == 170) {
          deadLiftScore = 93;
        }
        if (deadLift == 180) {
          deadLiftScore = 95;
        }
        if (deadLift == 190) {
          deadLiftScore = 97;
        }
        if (deadLift == 200) {
          deadLiftScore = 99;
        }
        if (deadLift >= 210) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '42-46' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 65;
        }
        if (deadLift == 140) {
          deadLiftScore = 72;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 90;
        }
        if (deadLift == 170) {
          deadLiftScore = 95;
        }
        if (deadLift == 180) {
          deadLiftScore = 96;
        }
        if (deadLift == 190) {
          deadLiftScore = 98;
        }
        if (deadLift == 200) {
          deadLiftScore = 99;
        }
        if (deadLift >= 210) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '47-51' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 67;
        }
        if (deadLift == 140) {
          deadLiftScore = 73;
        }
        if (deadLift == 150) {
          deadLiftScore = 79;
        }
        if (deadLift == 160) {
          deadLiftScore = 90;
        }
        if (deadLift == 170) {
          deadLiftScore = 97;
        }
        if (deadLift == 180) {
          deadLiftScore = 99;
        }
        if (deadLift >= 190) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '52-56' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 70;
        }
        if (deadLift == 140) {
          deadLiftScore = 80;
        }
        if (deadLift == 150) {
          deadLiftScore = 90;
        }
        if (deadLift == 160) {
          deadLiftScore = 97;
        }
        if (deadLift == 170) {
          deadLiftScore = 98;
        }
        if (deadLift == 180) {
          deadLiftScore = 99;
        }
        if (deadLift >= 190) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '57-61' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 71;
        }
        if (deadLift == 140) {
          deadLiftScore = 80;
        }
        if (deadLift == 150) {
          deadLiftScore = 90;
        }
        if (deadLift == 160) {
          deadLiftScore = 99;
        }
        if (deadLift >= 170) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '62+' && _gender == Gender.female) {
        if (deadLift <= 60) {
          deadLiftScore = 0;
        }
        if (deadLift == 70) {
          deadLiftScore = 10;
        }
        if (deadLift == 80) {
          deadLiftScore = 20;
        }
        if (deadLift == 90) {
          deadLiftScore = 30;
        }
        if (deadLift == 100) {
          deadLiftScore = 40;
        }
        if (deadLift == 110) {
          deadLiftScore = 50;
        }
        if (deadLift == 120) {
          deadLiftScore = 60;
        }
        if (deadLift == 130) {
          deadLiftScore = 72;
        }
        if (deadLift == 140) {
          deadLiftScore = 80;
        }
        if (deadLift == 150) {
          deadLiftScore = 90;
        }
        if (deadLift == 160) {
          deadLiftScore = 99;
        }
        if (deadLift >= 170) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '22-26' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 61;
        }
        if (deadLift == 160) {
          deadLiftScore = 65;
        }
        if (deadLift == 170) {
          deadLiftScore = 67;
        }
        if (deadLift == 180) {
          deadLiftScore = 69;
        }
        if (deadLift == 190) {
          deadLiftScore = 70;
        }
        if (deadLift == 200) {
          deadLiftScore = 71;
        }
        if (deadLift == 210) {
          deadLiftScore = 73;
        }
        if (deadLift == 220) {
          deadLiftScore = 75;
        }
        if (deadLift == 230) {
          deadLiftScore = 77;
        }
        if (deadLift == 240) {
          deadLiftScore = 79;
        }
        if (deadLift == 250) {
          deadLiftScore = 81;
        }
        if (deadLift == 260) {
          deadLiftScore = 84;
        }
        if (deadLift == 270) {
          deadLiftScore = 86;
        }
        if (deadLift == 280) {
          deadLiftScore = 88;
        }
        if (deadLift == 290) {
          deadLiftScore = 89;
        }

        if (deadLift == 310) {
          deadLiftScore = 90;
        }
        if (deadLift == 320) {
          deadLiftScore = 92;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '27-31' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 63;
        }
        if (deadLift == 160) {
          deadLiftScore = 65;
        }
        if (deadLift == 170) {
          deadLiftScore = 68;
        }
        if (deadLift == 180) {
          deadLiftScore = 69;
        }
        if (deadLift == 190) {
          deadLiftScore = 70;
        }
        if (deadLift == 200) {
          deadLiftScore = 71;
        }
        if (deadLift == 210) {
          deadLiftScore = 73;
        }
        if (deadLift == 220) {
          deadLiftScore = 75;
        }
        if (deadLift == 230) {
          deadLiftScore = 77;
        }
        if (deadLift == 240) {
          deadLiftScore = 79;
        }
        if (deadLift == 250) {
          deadLiftScore = 81;
        }
        if (deadLift == 260) {
          deadLiftScore = 84;
        }
        if (deadLift == 270) {
          deadLiftScore = 85;
        }
        if (deadLift == 280) {
          deadLiftScore = 87;
        }
        if (deadLift == 290) {
          deadLiftScore = 88;
        }
        if (deadLift == 300) {
          deadLiftScore = 89;
        }
        if (deadLift == 310) {
          deadLiftScore = 90;
        }
        if (deadLift == 320) {
          deadLiftScore = 91;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '32-36' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 66;
        }
        if (deadLift == 160) {
          deadLiftScore = 68;
        }
        if (deadLift == 170) {
          deadLiftScore = 69;
        }
        if (deadLift == 180) {
          deadLiftScore = 70;
        }
        if (deadLift == 190) {
          deadLiftScore = 71;
        }
        if (deadLift == 200) {
          deadLiftScore = 73;
        }
        if (deadLift == 210) {
          deadLiftScore = 75;
        }
        if (deadLift == 220) {
          deadLiftScore = 77;
        }
        if (deadLift == 230) {
          deadLiftScore = 79;
        }
        if (deadLift == 240) {
          deadLiftScore = 81;
        }
        if (deadLift == 250) {
          deadLiftScore = 83;
        }
        if (deadLift == 260) {
          deadLiftScore = 85;
        }
        if (deadLift == 270) {
          deadLiftScore = 87;
        }
        if (deadLift == 280) {
          deadLiftScore = 88;
        }
        if (deadLift == 290) {
          deadLiftScore = 89;
        }
        if (deadLift == 300) {
          deadLiftScore = 90;
        }
        if (deadLift == 310) {
          deadLiftScore = 91;
        }
        if (deadLift == 320) {
          deadLiftScore = 93;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '37-41' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 68;
        }
        if (deadLift == 160) {
          deadLiftScore = 70;
        }
        if (deadLift == 170) {
          deadLiftScore = 71;
        }
        if (deadLift == 180) {
          deadLiftScore = 72;
        }
        if (deadLift == 190) {
          deadLiftScore = 74;
        }
        if (deadLift == 200) {
          deadLiftScore = 76;
        }
        if (deadLift == 210) {
          deadLiftScore = 78;
        }
        if (deadLift == 220) {
          deadLiftScore = 81;
        }
        if (deadLift == 230) {
          deadLiftScore = 82;
        }
        if (deadLift == 240) {
          deadLiftScore = 84;
        }
        if (deadLift == 250) {
          deadLiftScore = 86;
        }
        if (deadLift == 260) {
          deadLiftScore = 88;
        }
        if (deadLift == 270) {
          deadLiftScore = 90;
        }
        if (deadLift == 280) {
          deadLiftScore = 91;
        }
        if (deadLift == 290) {
          deadLiftScore = 92;
        }
        if (deadLift == 300) {
          deadLiftScore = 93;
        }
        if (deadLift == 310) {
          deadLiftScore = 94;
        }
        if (deadLift == 320) {
          deadLiftScore = 95;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '42-46' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 69;
        }
        if (deadLift == 160) {
          deadLiftScore = 73;
        }
        if (deadLift == 170) {
          deadLiftScore = 75;
        }
        if (deadLift == 180) {
          deadLiftScore = 76;
        }
        if (deadLift == 190) {
          deadLiftScore = 77;
        }
        if (deadLift == 200) {
          deadLiftScore = 79;
        }
        if (deadLift == 210) {
          deadLiftScore = 81;
        }
        if (deadLift == 220) {
          deadLiftScore = 84;
        }
        if (deadLift == 230) {
          deadLiftScore = 85;
        }
        if (deadLift == 240) {
          deadLiftScore = 87;
        }
        if (deadLift == 250) {
          deadLiftScore = 89;
        }
        if (deadLift == 260) {
          deadLiftScore = 91;
        }
        if (deadLift == 270) {
          deadLiftScore = 92;
        }
        if (deadLift == 280) {
          deadLiftScore = 93;
        }
        if (deadLift == 290) {
          deadLiftScore = 94;
        }
        if (deadLift == 300) {
          deadLiftScore = 95;
        }
        if (deadLift == 310) {
          deadLiftScore = 96;
        }
        if (deadLift == 320) {
          deadLiftScore = 97;
        }
        if (deadLift == 330) {
          deadLiftScore = 99;
        }
        if (deadLift >= 340) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '47-51' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 70;
        }
        if (deadLift == 160) {
          deadLiftScore = 78;
        }
        if (deadLift == 170) {
          deadLiftScore = 80;
        }
        if (deadLift == 180) {
          deadLiftScore = 81;
        }
        if (deadLift == 190) {
          deadLiftScore = 83;
        }
        if (deadLift == 200) {
          deadLiftScore = 85;
        }
        if (deadLift == 210) {
          deadLiftScore = 87;
        }
        if (deadLift == 220) {
          deadLiftScore = 89;
        }
        if (deadLift == 230) {
          deadLiftScore = 90;
        }
        if (deadLift == 240) {
          deadLiftScore = 91;
        }
        if (deadLift == 250) {
          deadLiftScore = 92;
        }
        if (deadLift == 260) {
          deadLiftScore = 93;
        }
        if (deadLift == 270) {
          deadLiftScore = 94;
        }
        if (deadLift == 280) {
          deadLiftScore = 95;
        }
        if (deadLift == 290) {
          deadLiftScore = 96;
        }
        if (deadLift == 300) {
          deadLiftScore = 97;
        }
        if (deadLift == 310) {
          deadLiftScore = 98;
        }
        if (deadLift == 320) {
          deadLiftScore = 99;
        }
        if (deadLift >= 330) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '52-56' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 70;
        }
        if (deadLift == 160) {
          deadLiftScore = 79;
        }
        if (deadLift == 170) {
          deadLiftScore = 84;
        }
        if (deadLift == 180) {
          deadLiftScore = 85;
        }
        if (deadLift == 190) {
          deadLiftScore = 86;
        }
        if (deadLift == 200) {
          deadLiftScore = 88;
        }
        if (deadLift == 210) {
          deadLiftScore = 90;
        }
        if (deadLift == 220) {
          deadLiftScore = 93;
        }
        if (deadLift == 230) {
          deadLiftScore = 94;
        }
        if (deadLift == 240) {
          deadLiftScore = 95;
        }
        if (deadLift == 250) {
          deadLiftScore = 96;
        }
        if (deadLift == 260) {
          deadLiftScore = 97;
        }
        if (deadLift == 270) {
          deadLiftScore = 98;
        }
        if (deadLift == 280) {
          deadLiftScore = 99;
        }
        if (deadLift >= 290) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '57-61' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 71;
        }
        if (deadLift == 160) {
          deadLiftScore = 79;
        }
        if (deadLift == 170) {
          deadLiftScore = 89;
        }
        if (deadLift == 180) {
          deadLiftScore = 91;
        }
        if (deadLift == 190) {
          deadLiftScore = 93;
        }
        if (deadLift == 200) {
          deadLiftScore = 94;
        }
        if (deadLift == 210) {
          deadLiftScore = 96;
        }
        if (deadLift == 220) {
          deadLiftScore = 97;
        }
        if (deadLift == 230) {
          deadLiftScore = 98;
        }
        if (deadLift == 240) {
          deadLiftScore = 99;
        }
        if (deadLift >= 250) {
          deadLiftScore = 100;
        }
      }
      if (ageText == '62+' && _gender == Gender.male) {
        if (deadLift <= 80) {
          deadLiftScore = 0;
        }
        if (deadLift == 90) {
          deadLiftScore = 10;
        }
        if (deadLift == 100) {
          deadLiftScore = 20;
        }
        if (deadLift == 110) {
          deadLiftScore = 30;
        }
        if (deadLift == 120) {
          deadLiftScore = 40;
        }
        if (deadLift == 130) {
          deadLiftScore = 50;
        }
        if (deadLift == 140) {
          deadLiftScore = 60;
        }
        if (deadLift == 150) {
          deadLiftScore = 72;
        }
        if (deadLift == 160) {
          deadLiftScore = 82;
        }
        if (deadLift == 170) {
          deadLiftScore = 92;
        }
        if (deadLift == 180) {
          deadLiftScore = 93;
        }
        if (deadLift == 190) {
          deadLiftScore = 94;
        }
        if (deadLift == 200) {
          deadLiftScore = 95;
        }
        if (deadLift == 210) {
          deadLiftScore = 98;
        }
        if (deadLift == 220) {
          deadLiftScore = 99;
        }
        if (deadLift >= 230) {
          deadLiftScore = 100;
        }
      }
    });
  }

  void calcThrowScore() {
    setState(() {
      if (ageText == '17-21' && _gender == Gender.male) {
        if (throwDistance <= 6.0) {
          throwScore = 60;
        }
        if (throwDistance == 6.6) {
          throwScore = 61;
        }
        if (throwDistance == 6.9) {
          throwScore = 62;
        }
        if (throwDistance == 7.2) {
          throwScore = 63;
        }
        if (throwDistance == 7.4) {
          throwScore = 64;
        }
        if (throwDistance == 7.5) {
          throwScore = 65;
        }
        if (throwDistance == 7.7) {
          throwScore = 66;
        }
        if (throwDistance == 7.9) {
          throwScore = 67;
        }
        if (throwDistance == 8.0) {
          throwScore = 68;
        }
        if (throwDistance == 8.1) {
          throwScore = 69;
        }
        if (throwDistance == 8.2) {
          throwScore = 70;
        }
        if (throwDistance == 8.3) {
          throwScore = 71;
        }
        if (throwDistance == 8.4) {
          throwScore = 72;
        }
        if (throwDistance == 8.5) {
          throwScore = 73;
        }
        if (throwDistance == 8.6) {
          throwScore = 74;
        }
        if (throwDistance == 8.8) {
          throwScore = 75;
        }
        if (throwDistance == 8.9) {
          throwScore = 76;
        }
        if (throwDistance == 9.0) {
          throwScore = 77;
        }
        if (throwDistance == 9.1) {
          throwScore = 78;
        }
        if (throwDistance == 9.2) {
          throwScore = 79;
        }
        if (throwDistance == 9.3) {
          throwScore = 80;
        }
        if (throwDistance == 9.4) {
          throwScore = 81;
        }
        if (throwDistance == 9.5) {
          throwScore = 82;
        }
        if (throwDistance == 9.6) {
          throwScore = 83;
        }
        if (throwDistance == 9.7) {
          throwScore = 84;
        }
        if (throwDistance == 9.8) {
          throwScore = 85;
        }
        if (throwDistance == 9.9) {
          throwScore = 86;
        }
        if (throwDistance == 10.0) {
          throwScore = 87;
        }
        if (throwDistance == 10.3) {
          throwScore = 88;
        }
        if (throwDistance == 10.4) {
          throwScore = 89;
        }
        if (throwDistance == 10.5) {
          throwScore = 90;
        }
        if (throwDistance == 10.6) {
          throwScore = 91;
        }
        if (throwDistance == 10.7) {
          throwScore = 92;
        }
        if (throwDistance == 10.9) {
          throwScore = 93;
        }
        if (throwDistance == 11.0) {
          throwScore = 94;
        }
        if (throwDistance == 11.3) {
          throwScore = 95;
        }
        if (throwDistance == 11.5) {
          throwScore = 96;
        }
        if (throwDistance == 11.7) {
          throwScore = 97;
        }
        if (throwDistance == 12.0) {
          throwScore = 98;
        }
        if (throwDistance == 12.4) {
          throwScore = 99;
        }
        if (throwDistance >= 12.6) {
          throwScore = 100;
        }
      }
      if (ageText == '22-26' && _gender == Gender.male) {
        if (throwDistance <= 6.3) {
          throwScore = 60;
        }
        if (throwDistance == 6.9) {
          throwScore = 61;
        }
        if (throwDistance == 7.3) {
          throwScore = 62;
        }
        if (throwDistance == 7.5) {
          throwScore = 63;
        }
        if (throwDistance == 7.7) {
          throwScore = 64;
        }
        if (throwDistance == 7.8) {
          throwScore = 65;
        }
        if (throwDistance == 8.1) {
          throwScore = 66;
        }
        if (throwDistance == 8.2) {
          throwScore = 67;
        }
        if (throwDistance == 8.3) {
          throwScore = 68;
        }
        if (throwDistance == 8.5) {
          throwScore = 69;
        }
        if (throwDistance == 8.6) {
          throwScore = 70;
        }
        if (throwDistance == 8.8) {
          throwScore = 71;
        }
        if (throwDistance == 8.9) {
          throwScore = 72;
        }
        if (throwDistance == 9.0) {
          throwScore = 73;
        }
        if (throwDistance == 9.1) {
          throwScore = 74;
        }
        if (throwDistance == 9.2) {
          throwScore = 75;
        }
        if (throwDistance == 9.3) {
          throwScore = 76;
        }
        if (throwDistance == 9.4) {
          throwScore = 77;
        }
        if (throwDistance == 9.5) {
          throwScore = 78;
        }
        if (throwDistance == 9.6) {
          throwScore = 79;
        }
        if (throwDistance == 9.7) {
          throwScore = 80;
        }
        if (throwDistance == 9.8) {
          throwScore = 81;
        }
        if (throwDistance == 9.9) {
          throwScore = 82;
        }
        if (throwDistance == 10.0) {
          throwScore = 83;
        }
        if (throwDistance == 10.1) {
          throwScore = 84;
        }
        if (throwDistance == 10.2) {
          throwScore = 85;
        }
        if (throwDistance == 10.3) {
          throwScore = 86;
        }
        if (throwDistance == 10.4) {
          throwScore = 87;
        }
        if (throwDistance == 10.6) {
          throwScore = 88;
        }
        if (throwDistance == 10.7) {
          throwScore = 89;
        }
        if (throwDistance == 11.0) {
          throwScore = 90;
        }
        if (throwDistance == 11.1) {
          throwScore = 91;
        }
        if (throwDistance == 11.3) {
          throwScore = 92;
        }
        if (throwDistance == 11.4) {
          throwScore = 93;
        }
        if (throwDistance == 11.5) {
          throwScore = 94;
        }
        if (throwDistance == 11.8) {
          throwScore = 95;
        }
        if (throwDistance == 12.0) {
          throwScore = 96;
        }
        if (throwDistance == 12.2) {
          throwScore = 97;
        }
        if (throwDistance == 12.5) {
          throwScore = 98;
        }
        if (throwDistance == 12.9) {
          throwScore = 99;
        }
        if (throwDistance >= 13.0) {
          throwScore = 100;
        }
      }
      if (ageText == '27-31' && _gender == Gender.male) {
        if (throwDistance <= 6.5) {
          throwScore = 60;
        }
        if (throwDistance == 7.1) {
          throwScore = 61;
        }
        if (throwDistance == 7.5) {
          throwScore = 62;
        }
        if (throwDistance == 7.7) {
          throwScore = 63;
        }
        if (throwDistance == 7.9) {
          throwScore = 64;
        }
        if (throwDistance == 8.1) {
          throwScore = 65;
        }
        if (throwDistance == 8.3) {
          throwScore = 66;
        }
        if (throwDistance == 8.4) {
          throwScore = 67;
        }
        if (throwDistance == 8.5) {
          throwScore = 68;
        }
        if (throwDistance == 8.6) {
          throwScore = 69;
        }
        if (throwDistance == 8.8) {
          throwScore = 70;
        }
        if (throwDistance == 8.9) {
          throwScore = 71;
        }
        if (throwDistance == 9.0) {
          throwScore = 72;
        }
        if (throwDistance == 9.2) {
          throwScore = 73;
        }
        if (throwDistance == 9.3) {
          throwScore = 75;
        }
        if (throwDistance == 9.4) {
          throwScore = 76;
        }
        if (throwDistance == 9.6) {
          throwScore = 77;
        }
        if (throwDistance == 9.7) {
          throwScore = 78;
        }

        if (throwDistance == 9.8) {
          throwScore = 80;
        }
        if (throwDistance == 10.0) {
          throwScore = 81;
        }
        if (throwDistance == 10.1) {
          throwScore = 82;
        }
        if (throwDistance == 10.2) {
          throwScore = 83;
        }
        if (throwDistance == 10.4) {
          throwScore = 84;
        }
        if (throwDistance == 10.5) {
          throwScore = 85;
        }
        if (throwDistance == 10.6) {
          throwScore = 86;
        }
        if (throwDistance == 10.7) {
          throwScore = 87;
        }
        if (throwDistance == 10.9) {
          throwScore = 88;
        }
        if (throwDistance == 11.0) {
          throwScore = 89;
        }
        if (throwDistance == 11.1) {
          throwScore = 90;
        }
        if (throwDistance == 11.3) {
          throwScore = 91;
        }
        if (throwDistance == 11.4) {
          throwScore = 92;
        }
        if (throwDistance == 11.6) {
          throwScore = 93;
        }
        if (throwDistance == 11.7) {
          throwScore = 94;
        }
        if (throwDistance == 12.0) {
          throwScore = 95;
        }
        if (throwDistance == 12.2) {
          throwScore = 96;
        }
        if (throwDistance == 12.4) {
          throwScore = 97;
        }
        if (throwDistance == 12.6) {
          throwScore = 98;
        }
        if (throwDistance == 12.9) {
          throwScore = 99;
        }
        if (throwDistance >= 13.1) {
          throwScore = 100;
        }
      }
      if (ageText == '32-36' && _gender == Gender.male) {
        if (throwDistance <= 6.5) {
          throwScore = 60;
        }
        if (throwDistance == 7.1) {
          throwScore = 61;
        }
        if (throwDistance == 7.4) {
          throwScore = 62;
        }
        if (throwDistance == 7.6) {
          throwScore = 63;
        }
        if (throwDistance == 7.9) {
          throwScore = 64;
        }
        if (throwDistance == 8.1) {
          throwScore = 65;
        }
        if (throwDistance == 8.2) {
          throwScore = 66;
        }
        if (throwDistance == 8.3) {
          throwScore = 67;
        }
        if (throwDistance == 8.5) {
          throwScore = 68;
        }
        if (throwDistance == 8.6) {
          throwScore = 69;
        }
        if (throwDistance == 8.7) {
          throwScore = 70;
        }
        if (throwDistance == 8.8) {
          throwScore = 71;
        }
        if (throwDistance == 8.9) {
          throwScore = 72;
        }
        if (throwDistance == 9.1) {
          throwScore = 73;
        }
        if (throwDistance == 9.2) {
          throwScore = 74;
        }
        if (throwDistance == 9.3) {
          throwScore = 75;
        }
        if (throwDistance == 9.4) {
          throwScore = 76;
        }
        if (throwDistance == 9.5) {
          throwScore = 77;
        }
        if (throwDistance == 9.6) {
          throwScore = 78;
        }
        if (throwDistance == 9.7) {
          throwScore = 79;
        }
        if (throwDistance == 9.8) {
          throwScore = 80;
        }
        if (throwDistance == 9.9) {
          throwScore = 81;
        }
        if (throwDistance == 10.0) {
          throwScore = 82;
        }
        if (throwDistance == 10.1) {
          throwScore = 83;
        }
        if (throwDistance == 10.2) {
          throwScore = 84;
        }
        if (throwDistance == 10.3) {
          throwScore = 85;
        }
        if (throwDistance == 10.4) {
          throwScore = 86;
        }
        if (throwDistance == 10.5) {
          throwScore = 87;
        }
        if (throwDistance == 10.7) {
          throwScore = 88;
        }
        if (throwDistance == 10.8) {
          throwScore = 89;
        }
        if (throwDistance == 11.0) {
          throwScore = 90;
        }
        if (throwDistance == 11.2) {
          throwScore = 91;
        }
        if (throwDistance == 11.3) {
          throwScore = 92;
        }
        if (throwDistance == 11.4) {
          throwScore = 93;
        }
        if (throwDistance == 11.6) {
          throwScore = 94;
        }
        if (throwDistance == 11.8) {
          throwScore = 95;
        }
        if (throwDistance == 12.0) {
          throwScore = 96;
        }
        if (throwDistance == 12.2) {
          throwScore = 97;
        }
        if (throwDistance == 12.4) {
          throwScore = 98;
        }
        if (throwDistance == 12.6) {
          throwScore = 99;
        }
        if (throwDistance >= 12.9) {
          throwScore = 100;
        }
      }
      if (ageText == '37-41' && _gender == Gender.male) {
        if (throwDistance <= 6.4) {
          throwScore = 60;
        }
        if (throwDistance == 7.0) {
          throwScore = 61;
        }
        if (throwDistance == 7.3) {
          throwScore = 62;
        }
        if (throwDistance == 7.5) {
          throwScore = 63;
        }
        if (throwDistance == 7.7) {
          throwScore = 64;
        }
        if (throwDistance == 7.8) {
          throwScore = 65;
        }
        if (throwDistance == 8.1) {
          throwScore = 66;
        }
        if (throwDistance == 8.2) {
          throwScore = 67;
        }
        if (throwDistance == 8.3) {
          throwScore = 68;
        }
        if (throwDistance == 8.5) {
          throwScore = 69;
        }
        if (throwDistance == 8.6) {
          throwScore = 70;
        }
        if (throwDistance == 8.7) {
          throwScore = 71;
        }
        if (throwDistance == 8.8) {
          throwScore = 72;
        }
        if (throwDistance == 8.9) {
          throwScore = 73;
        }
        if (throwDistance == 9.0) {
          throwScore = 74;
        }
        if (throwDistance == 9.1) {
          throwScore = 75;
        }
        if (throwDistance == 9.2) {
          throwScore = 76;
        }
        if (throwDistance == 9.3) {
          throwScore = 77;
        }
        if (throwDistance == 9.4) {
          throwScore = 78;
        }
        if (throwDistance == 9.5) {
          throwScore = 79;
        }
        if (throwDistance == 9.6) {
          throwScore = 80;
        }
        if (throwDistance == 9.7) {
          throwScore = 81;
        }
        if (throwDistance == 9.8) {
          throwScore = 82;
        }
        if (throwDistance == 9.9) {
          throwScore = 83;
        }
        if (throwDistance == 10.1) {
          throwScore = 84;
        }
        if (throwDistance == 10.2) {
          throwScore = 85;
        }
        if (throwDistance == 10.3) {
          throwScore = 86;
        }
        if (throwDistance == 10.4) {
          throwScore = 87;
        }
        if (throwDistance == 10.5) {
          throwScore = 88;
        }
        if (throwDistance == 10.6) {
          throwScore = 89;
        }
        if (throwDistance == 10.7) {
          throwScore = 90;
        }
        if (throwDistance == 10.9) {
          throwScore = 91;
        }
        if (throwDistance == 11.1) {
          throwScore = 92;
        }
        if (throwDistance == 11.2) {
          throwScore = 93;
        }
        if (throwDistance == 11.4) {
          throwScore = 94;
        }
        if (throwDistance == 11.6) {
          throwScore = 95;
        }
        if (throwDistance == 11.8) {
          throwScore = 96;
        }
        if (throwDistance == 12.0) {
          throwScore = 97;
        }
        if (throwDistance == 12.2) {
          throwScore = 98;
        }
        if (throwDistance == 12.6) {
          throwScore = 99;
        }
        if (throwDistance >= 12.8) {
          throwScore = 100;
        }
      }
      if (ageText == '42-46' && _gender == Gender.male) {
        if (throwDistance <= 6.2) {
          throwScore = 60;
        }
        if (throwDistance == 6.7) {
          throwScore = 61;
        }
        if (throwDistance == 7.1) {
          throwScore = 62;
        }
        if (throwDistance == 7.3) {
          throwScore = 63;
        }
        if (throwDistance == 7.4) {
          throwScore = 64;
        }
        if (throwDistance == 7.6) {
          throwScore = 65;
        }
        if (throwDistance == 7.8) {
          throwScore = 66;
        }
        if (throwDistance == 7.9) {
          throwScore = 67;
        }
        if (throwDistance == 8.0) {
          throwScore = 68;
        }
        if (throwDistance == 8.1) {
          throwScore = 69;
        }
        if (throwDistance == 8.2) {
          throwScore = 70;
        }
        if (throwDistance == 8.3) {
          throwScore = 71;
        }
        if (throwDistance == 8.4) {
          throwScore = 72;
        }
        if (throwDistance == 8.6) {
          throwScore = 73;
        }

        if (throwDistance == 8.7) {
          throwScore = 75;
        }
        if (throwDistance == 8.8) {
          throwScore = 76;
        }
        if (throwDistance == 8.9) {
          throwScore = 77;
        }
        if (throwDistance == 9.0) {
          throwScore = 78;
        }
        if (throwDistance == 9.1) {
          throwScore = 79;
        }
        if (throwDistance == 9.2) {
          throwScore = 80;
        }
        if (throwDistance == 9.3) {
          throwScore = 81;
        }
        if (throwDistance == 9.4) {
          throwScore = 82;
        }
        if (throwDistance == 9.5) {
          throwScore = 83;
        }
        if (throwDistance == 9.6) {
          throwScore = 84;
        }
        if (throwDistance == 9.7) {
          throwScore = 85;
        }
        if (throwDistance == 9.8) {
          throwScore = 86;
        }
        if (throwDistance == 9.9) {
          throwScore = 87;
        }
        if (throwDistance == 10.1) {
          throwScore = 88;
        }
        if (throwDistance == 10.3) {
          throwScore = 89;
        }
        if (throwDistance == 10.4) {
          throwScore = 90;
        }
        if (throwDistance == 10.5) {
          throwScore = 91;
        }
        if (throwDistance == 10.6) {
          throwScore = 92;
        }
        if (throwDistance == 10.7) {
          throwScore = 93;
        }
        if (throwDistance == 10.8) {
          throwScore = 94;
        }
        if (throwDistance == 11.1) {
          throwScore = 95;
        }
        if (throwDistance == 11.3) {
          throwScore = 96;
        }
        if (throwDistance == 11.4) {
          throwScore = 97;
        }
        if (throwDistance == 11.7) {
          throwScore = 98;
        }
        if (throwDistance == 12.1) {
          throwScore = 99;
        }
        if (throwDistance >= 12.3) {
          throwScore = 100;
        }
      }
      if (ageText == '47-51' && _gender == Gender.male) {
        if (throwDistance <= 6.0) {
          throwScore = 60;
        }
        if (throwDistance == 6.4) {
          throwScore = 61;
        }
        if (throwDistance == 6.7) {
          throwScore = 62;
        }
        if (throwDistance == 6.9) {
          throwScore = 63;
        }
        if (throwDistance == 7.1) {
          throwScore = 64;
        }
        if (throwDistance == 7.2) {
          throwScore = 65;
        }
        if (throwDistance == 7.4) {
          throwScore = 66;
        }
        if (throwDistance == 7.5) {
          throwScore = 67;
        }
        if (throwDistance == 7.6) {
          throwScore = 68;
        }
        if (throwDistance == 7.7) {
          throwScore = 69;
        }
        if (throwDistance == 7.9) {
          throwScore = 70;
        }
        if (throwDistance == 8.0) {
          throwScore = 71;
        }
        if (throwDistance == 8.1) {
          throwScore = 72;
        }
        if (throwDistance == 8.2) {
          throwScore = 74;
        }
        if (throwDistance == 8.3) {
          throwScore = 75;
        }
        if (throwDistance == 8.4) {
          throwScore = 76;
        }
        if (throwDistance == 8.5) {
          throwScore = 77;
        }
        if (throwDistance == 8.6) {
          throwScore = 78;
        }
        if (throwDistance == 8.7) {
          throwScore = 80;
        }
        if (throwDistance == 8.8) {
          throwScore = 81;
        }
        if (throwDistance == 8.9) {
          throwScore = 82;
        }
        if (throwDistance == 9.0) {
          throwScore = 83;
        }
        if (throwDistance == 9.1) {
          throwScore = 84;
        }
        if (throwDistance == 9.2) {
          throwScore = 85;
        }
        if (throwDistance == 9.3) {
          throwScore = 86;
        }
        if (throwDistance == 9.4) {
          throwScore = 87;
        }
        if (throwDistance == 9.5) {
          throwScore = 88;
        }
        if (throwDistance == 9.6) {
          throwScore = 89;
        }
        if (throwDistance == 9.7) {
          throwScore = 90;
        }
        if (throwDistance == 9.9) {
          throwScore = 91;
        }
        if (throwDistance == 10.0) {
          throwScore = 92;
        }
        if (throwDistance == 10.1) {
          throwScore = 93;
        }
        if (throwDistance == 10.2) {
          throwScore = 94;
        }
        if (throwDistance == 10.4) {
          throwScore = 95;
        }
        if (throwDistance == 10.6) {
          throwScore = 96;
        }
        if (throwDistance == 10.7) {
          throwScore = 97;
        }
        if (throwDistance == 11.0) {
          throwScore = 98;
        }
        if (throwDistance == 11.4) {
          throwScore = 99;
        }
        if (throwDistance >= 11.6) {
          throwScore = 100;
        }
      }
      if (ageText == '52-56' && _gender == Gender.male) {
        if (throwDistance <= 5.7) {
          throwScore = 60;
        }
        if (throwDistance == 6.0) {
          throwScore = 61;
        }
        if (throwDistance == 6.2) {
          throwScore = 62;
        }
        if (throwDistance == 6.4) {
          throwScore = 63;
        }
        if (throwDistance == 6.6) {
          throwScore = 64;
        }
        if (throwDistance == 6.7) {
          throwScore = 65;
        }
        if (throwDistance == 6.9) {
          throwScore = 66;
        }
        if (throwDistance == 7.0) {
          throwScore = 68;
        }
        if (throwDistance == 7.1) {
          throwScore = 69;
        }
        if (throwDistance == 7.3) {
          throwScore = 70;
        }
        if (throwDistance == 7.4) {
          throwScore = 71;
        }
        if (throwDistance == 7.5) {
          throwScore = 72;
        }
        if (throwDistance == 7.6) {
          throwScore = 73;
        }
        if (throwDistance == 7.7) {
          throwScore = 74;
        }
        if (throwDistance == 7.8) {
          throwScore = 76;
        }
        if (throwDistance == 7.9) {
          throwScore = 77;
        }
        if (throwDistance == 8.0) {
          throwScore = 78;
        }
        if (throwDistance == 8.1) {
          throwScore = 80;
        }
        if (throwDistance == 8.2) {
          throwScore = 81;
        }
        if (throwDistance == 8.3) {
          throwScore = 82;
        }
        if (throwDistance == 8.4) {
          throwScore = 83;
        }
        if (throwDistance == 8.5) {
          throwScore = 84;
        }
        if (throwDistance == 8.6) {
          throwScore = 86;
        }
        if (throwDistance == 8.7) {
          throwScore = 87;
        }
        if (throwDistance == 8.8) {
          throwScore = 88;
        }
        if (throwDistance == 8.9) {
          throwScore = 89;
        }
        if (throwDistance == 9.0) {
          throwScore = 90;
        }
        if (throwDistance == 9.1) {
          throwScore = 91;
        }
        if (throwDistance == 9.2) {
          throwScore = 92;
        }
        if (throwDistance == 9.3) {
          throwScore = 93;
        }
        if (throwDistance == 9.5) {
          throwScore = 94;
        }
        if (throwDistance == 9.6) {
          throwScore = 95;
        }
        if (throwDistance == 9.8) {
          throwScore = 96;
        }
        if (throwDistance == 10.0) {
          throwScore = 97;
        }
        if (throwDistance == 10.2) {
          throwScore = 98;
        }
        if (throwDistance == 10.4) {
          throwScore = 99;
        }
        if (throwDistance >= 10.6) {
          throwScore = 100;
        }
      }
      if (ageText == '57-61' && _gender == Gender.male) {
        if (throwDistance <= 5.3) {
          throwScore = 60;
        }
        if (throwDistance == 5.7) {
          throwScore = 61;
        }
        if (throwDistance == 6.0) {
          throwScore = 62;
        }
        if (throwDistance == 6.1) {
          throwScore = 63;
        }
        if (throwDistance == 6.2) {
          throwScore = 64;
        }
        if (throwDistance == 6.3) {
          throwScore = 65;
        }
        if (throwDistance == 6.5) {
          throwScore = 66;
        }
        if (throwDistance == 6.6) {
          throwScore = 67;
        }
        if (throwDistance == 6.7) {
          throwScore = 68;
        }
        if (throwDistance == 6.8) {
          throwScore = 69;
        }
        if (throwDistance == 6.9) {
          throwScore = 70;
        }
        if (throwDistance == 7.0) {
          throwScore = 72;
        }
        if (throwDistance == 7.1) {
          throwScore = 73;
        }
        if (throwDistance == 7.2) {
          throwScore = 74;
        }
        if (throwDistance == 7.3) {
          throwScore = 75;
        }
        if (throwDistance == 7.4) {
          throwScore = 76;
        }
        if (throwDistance == 7.5) {
          throwScore = 78;
        }
        if (throwDistance == 7.6) {
          throwScore = 79;
        }
        if (throwDistance == 7.7) {
          throwScore = 80;
        }
        if (throwDistance == 7.8) {
          throwScore = 81;
        }
        if (throwDistance == 7.9) {
          throwScore = 82;
        }
        if (throwDistance == 8.0) {
          throwScore = 83;
        }
        if (throwDistance == 8.1) {
          throwScore = 85;
        }
        if (throwDistance == 8.2) {
          throwScore = 86;
        }
        if (throwDistance == 8.3) {
          throwScore = 87;
        }
        if (throwDistance == 8.4) {
          throwScore = 88;
        }

        if (throwDistance == 8.5) {
          throwScore = 90;
        }
        if (throwDistance == 8.7) {
          throwScore = 91;
        }
        if (throwDistance == 8.8) {
          throwScore = 92;
        }
        if (throwDistance == 8.9) {
          throwScore = 93;
        }
        if (throwDistance == 9.0) {
          throwScore = 94;
        }
        if (throwDistance == 9.1) {
          throwScore = 95;
        }
        if (throwDistance == 9.3) {
          throwScore = 96;
        }
        if (throwDistance == 9.4) {
          throwScore = 97;
        }
        if (throwDistance == 9.5) {
          throwScore = 98;
        }
        if (throwDistance == 9.7) {
          throwScore = 99;
        }
        if (throwDistance >= 9.9) {
          throwScore = 100;
        }
      }
      if (ageText == '62+' && _gender == Gender.male) {
        if (throwDistance <= 4.9) {
          throwScore = 60;
        }
        if (throwDistance == 5.1) {
          throwScore = 61;
        }
        if (throwDistance == 5.4) {
          throwScore = 62;
        }
        if (throwDistance == 5.7) {
          throwScore = 63;
        }
        if (throwDistance == 5.9) {
          throwScore = 64;
        }
        if (throwDistance == 6.1) {
          throwScore = 66;
        }
        if (throwDistance == 6.2) {
          throwScore = 68;
        }
        if (throwDistance == 6.4) {
          throwScore = 69;
        }
        if (throwDistance == 6.6) {
          throwScore = 70;
        }
        if (throwDistance == 6.7) {
          throwScore = 71;
        }
        if (throwDistance == 6.8) {
          throwScore = 72;
        }
        if (throwDistance == 7.0) {
          throwScore = 73;
        }
        if (throwDistance == 7.1) {
          throwScore = 74;
        }

        if (throwDistance == 7.2) {
          throwScore = 76;
        }
        if (throwDistance == 7.3) {
          throwScore = 77;
        }

        if (throwDistance == 7.4) {
          throwScore = 79;
        }

        if (throwDistance == 7.5) {
          throwScore = 81;
        }

        if (throwDistance == 7.6) {
          throwScore = 83;
        }
        if (throwDistance == 7.7) {
          throwScore = 84;
        }

        if (throwDistance == 7.8) {
          throwScore = 86;
        }

        if (throwDistance == 7.9) {
          throwScore = 88;
        }
        if (throwDistance == 8.0) {
          throwScore = 90;
        }
        if (throwDistance == 8.1) {
          throwScore = 91;
        }
        if (throwDistance == 8.2) {
          throwScore = 92;
        }
        if (throwDistance == 8.3) {
          throwScore = 93;
        }
        if (throwDistance == 8.5) {
          throwScore = 94;
        }
        if (throwDistance == 8.6) {
          throwScore = 95;
        }

        if (throwDistance == 8.7) {
          throwScore = 97;
        }

        if (throwDistance == 8.8) {
          throwScore = 99;
        }
        if (throwDistance >= 9.0) {
          throwScore = 100;
        }
      }

      if (ageText == '17-21' && _gender == Gender.female) {
        if (throwDistance <= 3.9) {
          throwScore = 60;
        }
        if (throwDistance == 4.4) {
          throwScore = 61;
        }
        if (throwDistance == 4.6) {
          throwScore = 62;
        }
        if (throwDistance == 4.7) {
          throwScore = 63;
        }

        if (throwDistance == 4.8) {
          throwScore = 65;
        }
        if (throwDistance == 4.9) {
          throwScore = 66;
        }

        if (throwDistance == 5.0) {
          throwScore = 68;
        }
        if (throwDistance == 5.1) {
          throwScore = 69;
        }

        if (throwDistance == 5.2) {
          throwScore = 71;
        }
        if (throwDistance == 5.3) {
          throwScore = 72;
        }

        if (throwDistance == 5.4) {
          throwScore = 74;
        }
        if (throwDistance == 5.5) {
          throwScore = 75;
        }
        if (throwDistance == 5.6) {
          throwScore = 76;
        }

        if (throwDistance == 5.7) {
          throwScore = 78;
        }

        if (throwDistance == 5.8) {
          throwScore = 80;
        }
        if (throwDistance == 5.9) {
          throwScore = 81;
        }

        if (throwDistance == 6.0) {
          throwScore = 83;
        }

        if (throwDistance == 6.1) {
          throwScore = 85;
        }
        if (throwDistance == 6.2) {
          throwScore = 86;
        }
        if (throwDistance == 6.3) {
          throwScore = 87;
        }
        if (throwDistance == 6.4) {
          throwScore = 88;
        }

        if (throwDistance == 6.5) {
          throwScore = 90;
        }
        if (throwDistance == 6.6) {
          throwScore = 91;
        }
        if (throwDistance == 6.8) {
          throwScore = 92;
        }
        if (throwDistance == 6.9) {
          throwScore = 93;
        }
        if (throwDistance == 7.0) {
          throwScore = 94;
        }
        if (throwDistance == 7.2) {
          throwScore = 95;
        }
        if (throwDistance == 7.3) {
          throwScore = 96;
        }
        if (throwDistance == 7.5) {
          throwScore = 97;
        }
        if (throwDistance == 7.7) {
          throwScore = 98;
        }
        if (throwDistance == 8.2) {
          throwScore = 99;
        }
        if (throwDistance >= 8.4) {
          throwScore = 100;
        }
      }
      if (ageText == '22-26' && _gender == Gender.female) {
        if (throwDistance <= 4.0) {
          throwScore = 60;
        }
        if (throwDistance == 4.4) {
          throwScore = 61;
        }
        if (throwDistance == 4.6) {
          throwScore = 62;
        }
        if (throwDistance == 4.7) {
          throwScore = 63;
        }
        if (throwDistance == 4.8) {
          throwScore = 64;
        }
        if (throwDistance == 4.9) {
          throwScore = 65;
        }
        if (throwDistance == 5.0) {
          throwScore = 66;
        }

        if (throwDistance == 5.1) {
          throwScore = 67;
        }
        if (throwDistance == 5.2) {
          throwScore = 69;
        }

        if (throwDistance == 5.3) {
          throwScore = 71;
        }
        if (throwDistance == 5.4) {
          throwScore = 72;
        }

        if (throwDistance == 5.5) {
          throwScore = 74;
        }
        if (throwDistance == 5.6) {
          throwScore = 75;
        }
        if (throwDistance == 5.7) {
          throwScore = 76;
        }
        if (throwDistance == 5.8) {
          throwScore = 79;
        }

        if (throwDistance == 5.9) {
          throwScore = 80;
        }
        if (throwDistance == 6.0) {
          throwScore = 81;
        }

        if (throwDistance == 6.1) {
          throwScore = 83;
        }
        if (throwDistance == 6.2) {
          throwScore = 84;
        }
        if (throwDistance == 6.3) {
          throwScore = 85;
        }
        if (throwDistance == 6.4) {
          throwScore = 86;
        }
        if (throwDistance == 6.5) {
          throwScore = 87;
        }
        if (throwDistance == 6.6) {
          throwScore = 88;
        }
        if (throwDistance == 6.7) {
          throwScore = 89;
        }
        if (throwDistance == 6.8) {
          throwScore = 90;
        }
        if (throwDistance == 6.9) {
          throwScore = 91;
        }
        if (throwDistance == 7.0) {
          throwScore = 92;
        }
        if (throwDistance == 7.1) {
          throwScore = 93;
        }
        if (throwDistance == 7.2) {
          throwScore = 94;
        }
        if (throwDistance == 7.4) {
          throwScore = 95;
        }
        if (throwDistance == 7.5) {
          throwScore = 96;
        }
        if (throwDistance == 7.7) {
          throwScore = 97;
        }
        if (throwDistance == 7.9) {
          throwScore = 98;
        }
        if (throwDistance == 8.4) {
          throwScore = 99;
        }
        if (throwDistance >= 8.5) {
          throwScore = 100;
        }
      }
      if (ageText == '27-31' && _gender == Gender.female) {
        if (throwDistance <= 4.2) {
          throwScore = 60;
        }
        if (throwDistance == 4.5) {
          throwScore = 61;
        }
        if (throwDistance == 4.7) {
          throwScore = 62;
        }
        if (throwDistance == 4.8) {
          throwScore = 63;
        }
        if (throwDistance == 4.9) {
          throwScore = 64;
        }
        if (throwDistance == 5.0) {
          throwScore = 65;
        }
        if (throwDistance == 5.1) {
          throwScore = 66;
        }

        if (throwDistance == 5.2) {
          throwScore = 68;
        }

        if (throwDistance == 5.3) {
          throwScore = 70;
        }
        if (throwDistance == 5.4) {
          throwScore = 71;
        }
        if (throwDistance == 5.5) {
          throwScore = 72;
        }

        if (throwDistance == 5.6) {
          throwScore = 74;
        }

        if (throwDistance == 5.7) {
          throwScore = 76;
        }
        if (throwDistance == 5.8) {
          throwScore = 77;
        }

        if (throwDistance == 5.9) {
          throwScore = 79;
        }
        if (throwDistance == 6.1) {
          throwScore = 80;
        }
        if (throwDistance == 6.2) {
          throwScore = 81;
        }

        if (throwDistance == 6.3) {
          throwScore = 83;
        }
        if (throwDistance == 6.4) {
          throwScore = 84;
        }

        if (throwDistance == 6.5) {
          throwScore = 86;
        }
        if (throwDistance == 6.6) {
          throwScore = 87;
        }
        if (throwDistance == 6.7) {
          throwScore = 88;
        }
        if (throwDistance == 6.8) {
          throwScore = 89;
        }
        if (throwDistance == 6.9) {
          throwScore = 90;
        }
        if (throwDistance == 7.0) {
          throwScore = 91;
        }
        if (throwDistance == 7.1) {
          throwScore = 92;
        }
        if (throwDistance == 7.2) {
          throwScore = 93;
        }
        if (throwDistance == 7.3) {
          throwScore = 94;
        }
        if (throwDistance == 7.5) {
          throwScore = 95;
        }
        if (throwDistance == 7.7) {
          throwScore = 96;
        }
        if (throwDistance == 8.0) {
          throwScore = 97;
        }
        if (throwDistance == 8.2) {
          throwScore = 98;
        }
        if (throwDistance == 8.5) {
          throwScore = 99;
        }
        if (throwDistance >= 8.7) {
          throwScore = 100;
        }
      }
      if (ageText == '32-36' && _gender == Gender.female) {
        if (throwDistance <= 4.1) {
          throwScore = 60;
        }
        if (throwDistance == 4.5) {
          throwScore = 61;
        }
        if (throwDistance == 4.7) {
          throwScore = 62;
        }
        if (throwDistance == 4.8) {
          throwScore = 63;
        }
        if (throwDistance == 4.9) {
          throwScore = 64;
        }
        if (throwDistance == 5.0) {
          throwScore = 65;
        }
        if (throwDistance == 5.1) {
          throwScore = 66;
        }

        if (throwDistance == 5.2) {
          throwScore = 68;
        }

        if (throwDistance == 5.3) {
          throwScore = 70;
        }
        if (throwDistance == 5.4) {
          throwScore = 71;
        }

        if (throwDistance == 5.5) {
          throwScore = 73;
        }
        if (throwDistance == 5.6) {
          throwScore = 74;
        }

        if (throwDistance == 5.7) {
          throwScore = 76;
        }

        if (throwDistance == 5.8) {
          throwScore = 78;
        }

        if (throwDistance == 5.9) {
          throwScore = 80;
        }
        if (throwDistance == 6.0) {
          throwScore = 81;
        }
        if (throwDistance == 6.1) {
          throwScore = 82;
        }
        if (throwDistance == 6.2) {
          throwScore = 83;
        }

        if (throwDistance == 6.3) {
          throwScore = 85;
        }

        if (throwDistance == 6.4) {
          throwScore = 87;
        }
        if (throwDistance == 6.5) {
          throwScore = 88;
        }
        if (throwDistance == 6.7) {
          throwScore = 89;
        }
        if (throwDistance == 6.8) {
          throwScore = 90;
        }
        if (throwDistance == 6.9) {
          throwScore = 91;
        }
        if (throwDistance == 7.0) {
          throwScore = 92;
        }
        if (throwDistance == 7.1) {
          throwScore = 93;
        }
        if (throwDistance == 7.3) {
          throwScore = 94;
        }
        if (throwDistance == 7.4) {
          throwScore = 95;
        }
        if (throwDistance == 7.6) {
          throwScore = 96;
        }
        if (throwDistance == 7.8) {
          throwScore = 97;
        }
        if (throwDistance == 8.0) {
          throwScore = 98;
        }
        if (throwDistance == 8.4) {
          throwScore = 99;
        }
        if (throwDistance >= 8.6) {
          throwScore = 100;
        }
      }
      if (ageText == '37-41' && _gender == Gender.female) {
        if (throwDistance <= 4.1) {
          throwScore = 60;
        }
        if (throwDistance == 4.4) {
          throwScore = 61;
        }
        if (throwDistance == 4.5) {
          throwScore = 62;
        }
        if (throwDistance == 4.6) {
          throwScore = 63;
        }
        if (throwDistance == 4.7) {
          throwScore = 64;
        }
        if (throwDistance == 4.8) {
          throwScore = 65;
        }

        if (throwDistance == 4.9) {
          throwScore = 67;
        }
        if (throwDistance == 5.0) {
          throwScore = 68;
        }
        if (throwDistance == 5.1) {
          throwScore = 69;
        }

        if (throwDistance == 5.2) {
          throwScore = 72;
        }
        if (throwDistance == 5.3) {
          throwScore = 73;
        }

        if (throwDistance == 5.4) {
          throwScore = 75;
        }
        if (throwDistance == 5.5) {
          throwScore = 76;
        }

        if (throwDistance == 5.6) {
          throwScore = 78;
        }

        if (throwDistance == 5.7) {
          throwScore = 80;
        }

        if (throwDistance == 5.8) {
          throwScore = 82;
        }
        if (throwDistance == 5.9) {
          throwScore = 83;
        }
        if (throwDistance == 6.0) {
          throwScore = 84;
        }

        if (throwDistance == 6.1) {
          throwScore = 86;
        }
        if (throwDistance == 6.2) {
          throwScore = 87;
        }
        if (throwDistance == 6.3) {
          throwScore = 88;
        }

        if (throwDistance == 6.4) {
          throwScore = 90;
        }
        if (throwDistance == 6.6) {
          throwScore = 91;
        }

        if (throwDistance == 6.7) {
          throwScore = 93;
        }
        if (throwDistance == 6.8) {
          throwScore = 94;
        }
        if (throwDistance == 7.0) {
          throwScore = 95;
        }
        if (throwDistance == 7.2) {
          throwScore = 96;
        }
        if (throwDistance == 7.3) {
          throwScore = 97;
        }
        if (throwDistance == 7.5) {
          throwScore = 98;
        }
        if (throwDistance == 8.0) {
          throwScore = 99;
        }
        if (throwDistance >= 8.2) {
          throwScore = 100;
        }
      }

      if (ageText == '42-46' && _gender == Gender.female) {
        if (throwDistance <= 3.9) {
          throwScore = 60;
        }
        if (throwDistance == 4.2) {
          throwScore = 61;
        }
        if (throwDistance == 4.5) {
          throwScore = 62;
        }
        if (throwDistance == 4.6) {
          throwScore = 63;
        }

        if (throwDistance == 4.7) {
          throwScore = 65;
        }
        if (throwDistance == 4.8) {
          throwScore = 66;
        }
        if (throwDistance == 4.9) {
          throwScore = 67;
        }
        if (throwDistance == 5.0) {
          throwScore = 68;
        }
        if (throwDistance == 5.1) {
          throwScore = 69;
        }
        if (throwDistance == 5.1) {
          throwScore = 70;
        }

        if (throwDistance == 5.2) {
          throwScore = 72;
        }

        if (throwDistance == 5.3) {
          throwScore = 74;
        }

        if (throwDistance == 5.4) {
          throwScore = 76;
        }
        if (throwDistance == 5.5) {
          throwScore = 77;
        }

        if (throwDistance == 5.6) {
          throwScore = 79;
        }
        if (throwDistance == 5.7) {
          throwScore = 80;
        }

        if (throwDistance == 5.8) {
          throwScore = 83;
        }
        if (throwDistance == 5.9) {
          throwScore = 84;
        }

        if (throwDistance == 6.0) {
          throwScore = 86;
        }
        if (throwDistance == 6.1) {
          throwScore = 87;
        }
        if (throwDistance == 6.2) {
          throwScore = 88;
        }
        if (throwDistance == 6.3) {
          throwScore = 89;
        }
        if (throwDistance == 6.4) {
          throwScore = 90;
        }
        if (throwDistance == 6.5) {
          throwScore = 91;
        }
        if (throwDistance == 6.6) {
          throwScore = 92;
        }
        if (throwDistance == 6.7) {
          throwScore = 93;
        }
        if (throwDistance == 6.8) {
          throwScore = 94;
        }
        if (throwDistance == 6.9) {
          throwScore = 95;
        }
        if (throwDistance == 7.1) {
          throwScore = 96;
        }
        if (throwDistance == 7.2) {
          throwScore = 97;
        }
        if (throwDistance == 7.4) {
          throwScore = 98;
        }
        if (throwDistance == 7.9) {
          throwScore = 99;
        }
        if (throwDistance >= 8.1) {
          throwScore = 100;
        }
      }
      if (ageText == '47-51' && _gender == Gender.female) {
        if (throwDistance <= 3.7) {
          throwScore = 60;
        }
        if (throwDistance == 4.1) {
          throwScore = 61;
        }
        if (throwDistance == 4.2) {
          throwScore = 62;
        }
        if (throwDistance == 4.4) {
          throwScore = 63;
        }
        if (throwDistance == 4.5) {
          throwScore = 64;
        }

        if (throwDistance == 4.6) {
          throwScore = 67;
        }
        if (throwDistance == 4.7) {
          throwScore = 68;
        }
        if (throwDistance == 4.8) {
          throwScore = 69;
        }

        if (throwDistance == 4.9) {
          throwScore = 71;
        }

        if (throwDistance == 5.0) {
          throwScore = 73;
        }

        if (throwDistance == 5.1) {
          throwScore = 75;
        }

        if (throwDistance == 5.2) {
          throwScore = 78;
        }

        if (throwDistance == 5.3) {
          throwScore = 80;
        }
        if (throwDistance == 5.4) {
          throwScore = 81;
        }

        if (throwDistance == 5.5) {
          throwScore = 83;
        }

        if (throwDistance == 5.6) {
          throwScore = 85;
        }
        if (throwDistance == 5.7) {
          throwScore = 86;
        }
        if (throwDistance == 5.8) {
          throwScore = 87;
        }

        if (throwDistance == 5.9) {
          throwScore = 89;
        }
        if (throwDistance == 6.0) {
          throwScore = 90;
        }
        if (throwDistance == 6.1) {
          throwScore = 91;
        }

        if (throwDistance == 6.2) {
          throwScore = 94;
        }
        if (throwDistance == 6.4) {
          throwScore = 95;
        }
        if (throwDistance == 6.5) {
          throwScore = 96;
        }
        if (throwDistance == 6.8) {
          throwScore = 97;
        }
        if (throwDistance == 7.1) {
          throwScore = 98;
        }
        if (throwDistance == 7.6) {
          throwScore = 99;
        }
        if (throwDistance >= 7.8) {
          throwScore = 100;
        }
      }
      if (ageText == '52-56' && _gender == Gender.female) {
        if (throwDistance <= 3.5) {
          throwScore = 60;
        }
        if (throwDistance == 3.9) {
          throwScore = 61;
        }
        if (throwDistance == 4.1) {
          throwScore = 62;
        }

        if (throwDistance == 4.2) {
          throwScore = 64;
        }
        if (throwDistance == 4.3) {
          throwScore = 65;
        }

        if (throwDistance == 4.4) {
          throwScore = 67;
        }
        if (throwDistance == 4.5) {
          throwScore = 68;
        }

        if (throwDistance == 4.6) {
          throwScore = 70;
        }

        if (throwDistance == 4.7) {
          throwScore = 72;
        }
        if (throwDistance == 4.8) {
          throwScore = 73;
        }

        if (throwDistance == 4.9) {
          throwScore = 75;
        }

        if (throwDistance == 5.0) {
          throwScore = 77;
        }

        if (throwDistance == 5.1) {
          throwScore = 79;
        }

        if (throwDistance == 5.2) {
          throwScore = 82;
        }
        if (throwDistance == 5.3) {
          throwScore = 83;
        }

        if (throwDistance == 5.4) {
          throwScore = 85;
        }

        if (throwDistance == 5.5) {
          throwScore = 87;
        }

        if (throwDistance == 5.6) {
          throwScore = 89;
        }
        if (throwDistance == 5.7) {
          throwScore = 90;
        }
        if (throwDistance == 5.8) {
          throwScore = 91;
        }
        if (throwDistance == 5.9) {
          throwScore = 92;
        }
        if (throwDistance == 6.0) {
          throwScore = 93;
        }
        if (throwDistance == 6.1) {
          throwScore = 94;
        }
        if (throwDistance == 6.2) {
          throwScore = 95;
        }
        if (throwDistance == 6.3) {
          throwScore = 96;
        }
        if (throwDistance == 6.5) {
          throwScore = 97;
        }
        if (throwDistance == 6.6) {
          throwScore = 98;
        }
        if (throwDistance == 7.1) {
          throwScore = 99;
        }
        if (throwDistance >= 7.4) {
          throwScore = 100;
        }
      }
      if (ageText == '57-61' && _gender == Gender.female) {
        if (throwDistance <= 3.4) {
          throwScore = 60;
        }
        if (throwDistance == 3.6) {
          throwScore = 61;
        }
        if (throwDistance == 3.8) {
          throwScore = 62;
        }
        if (throwDistance == 3.9) {
          throwScore = 63;
        }
        if (throwDistance == 4.0) {
          throwScore = 64;
        }
        if (throwDistance == 4.1) {
          throwScore = 65;
        }
        if (throwDistance == 4.2) {
          throwScore = 66;
        }
        if (throwDistance == 4.3) {
          throwScore = 67;
        }
        if (throwDistance == 4.4) {
          throwScore = 68;
        }
        if (throwDistance == 4.5) {
          throwScore = 69;
        }

        if (throwDistance == 4.6) {
          throwScore = 71;
        }
        if (throwDistance == 4.8) {
          throwScore = 72;
        }

        if (throwDistance == 4.9) {
          throwScore = 75;
        }

        if (throwDistance == 5.0) {
          throwScore = 77;
        }

        if (throwDistance == 5.1) {
          throwScore = 80;
        }

        if (throwDistance == 5.2) {
          throwScore = 84;
        }

        if (throwDistance == 5.3) {
          throwScore = 87;
        }

        if (throwDistance == 5.4) {
          throwScore = 89;
        }
        if (throwDistance == 5.5) {
          throwScore = 90;
        }
        if (throwDistance == 5.6) {
          throwScore = 91;
        }
        if (throwDistance == 5.7) {
          throwScore = 92;
        }
        if (throwDistance == 5.8) {
          throwScore = 93;
        }
        if (throwDistance == 5.9) {
          throwScore = 94;
        }
        if (throwDistance == 6.0) {
          throwScore = 95;
        }
        if (throwDistance == 61) {
          throwScore = 96;
        }
        if (throwDistance == 6.2) {
          throwScore = 97;
        }
        if (throwDistance == 6.3) {
          throwScore = 98;
        }
        if (throwDistance == 6.4) {
          throwScore = 99;
        }
        if (throwDistance >= 6.6) {
          throwScore = 100;
        }
      }
      if (ageText == '62+' && _gender == Gender.female) {
        if (throwDistance <= 3.4) {
          throwScore = 60;
        }
        if (throwDistance == 3.6) {
          throwScore = 61;
        }
        if (throwDistance == 3.9) {
          throwScore = 62;
        }
        if (throwDistance == 4.0) {
          throwScore = 63;
        }

        if (throwDistance == 4.1) {
          throwScore = 65;
        }
        if (throwDistance == 4.2) {
          throwScore = 66;
        }
        if (throwDistance == 4.3) {
          throwScore = 67;
        }
        if (throwDistance == 4.4) {
          throwScore = 68;
        }
        if (throwDistance == 4.5) {
          throwScore = 69;
        }

        if (throwDistance == 4.6) {
          throwScore = 71;
        }
        if (throwDistance == 4.7) {
          throwScore = 72;
        }
        if (throwDistance == 4.8) {
          throwScore = 73;
        }

        if (throwDistance == 4.9) {
          throwScore = 75;
        }

        if (throwDistance == 5.0) {
          throwScore = 77;
        }

        if (throwDistance == 5.1) {
          throwScore = 80;
        }

        if (throwDistance == 5.2) {
          throwScore = 83;
        }

        if (throwDistance == 5.3) {
          throwScore = 86;
        }

        if (throwDistance == 5.4) {
          throwScore = 88;
        }

        if (throwDistance == 5.5) {
          throwScore = 90;
        }
        if (throwDistance == 5.6) {
          throwScore = 91;
        }
        if (throwDistance == 5.7) {
          throwScore = 92;
        }
        if (throwDistance == 5.8) {
          throwScore = 93;
        }
        if (throwDistance == 5.9) {
          throwScore = 94;
        }
        if (throwDistance == 6.0) {
          throwScore = 95;
        }
        if (throwDistance == 6.1) {
          throwScore = 96;
        }
        if (throwDistance == 6.2) {
          throwScore = 97;
        }
        if (throwDistance == 6.3) {
          throwScore = 98;
        }
        if (throwDistance == 6.4) {
          throwScore = 99;
        }
        if (throwDistance >= 6.6) {
          throwScore = 100;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ACFT Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ACFT Calculator asdf'),
          centerTitle: true,
          foregroundColor: Colors.black,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTile(
                  title: const Text('Male'),
                  leading: Radio<Gender>(
                    value: Gender.male,
                    groupValue: _gender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _gender = value;
                        calcDeadliftScore();
                        calcThrowScore();
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Female'),
                  leading: Radio<Gender>(
                    value: Gender.female,
                    groupValue: _gender,
                    onChanged: (Gender? value) {
                      setState(() {
                        _gender = value;
                        calcDeadliftScore();
                        calcThrowScore();
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'AGE',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    DropdownButton<String>(
                      value: ageText,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                      underline: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          ageText = newValue!;
                          calcDeadliftScore();
                          calcThrowScore();
                          //calcTotalScore();
                        });
                      },
                      items: <String>[
                        '17-21',
                        '22-26',
                        '27-31',
                        '32-36',
                        '37-41',
                        '42-46',
                        '47-51',
                        '52-56',
                        '57-61',
                        '62+'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Text(ageText),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Deadlift',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<int>(
                  value: deadLift,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      deadLift = newValue!;
                      calcDeadliftScore();

                      //calcTotalScore();
                    });
                  },
                  items: <int>[
                    0,
                    60,
                    70,
                    80,
                    90,
                    100,
                    110,
                    120,
                    130,
                    140,
                    150,
                    160,
                    170,
                    180,
                    190,
                    200,
                    210,
                    220,
                    230,
                    240,
                    250,
                    260,
                    270,
                    280,
                    290,
                    300,
                    310,
                    320,
                    330,
                    340
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  deadLiftScore.toString(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Throw   ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<double>(
                  value: throwDistance,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (double? newValue) {
                    setState(() {
                      throwDistance = newValue!;
                      calcThrowScore();
                    });
                  },
                  items: <double>[
                    3.4,
                    3.5,
                    3.6,
                    3.7,
                    3.8,
                    3.9,
                    4.0,
                    4.1,
                    4.2,
                    4.3,
                    4.4,
                    4.5,
                    4.6,
                    4.7,
                    4.8,
                    4.9,
                    5.0,
                    5.1,
                    5.2,
                    5.3,
                    5.4,
                    5.5,
                    5.6,
                    5.7,
                    5.8,
                    5.9,
                    6.0,
                    6.1,
                    6.2,
                    6.3,
                    6.4,
                    6.5,
                    6.6,
                    6.7,
                    6.8,
                    6.9,
                    7.0,
                    7.1,
                    7.2,
                    7.3,
                    7.4,
                    7.5,
                    7.6,
                    7.7,
                    7.8,
                    7.9,
                    8.0,
                    8.1,
                    8.2,
                    8.3,
                    8.4,
                    8.5,
                    8.6,
                    8.7,
                    8.8,
                    8.9,
                    9.0,
                    9.1,
                    9.2,
                    9.3,
                    9.4,
                    9.5,
                    9.6,
                    9.7,
                    9.8,
                    9.9,
                    10.0,
                    10.1,
                    10.2,
                    10.3,
                    10.4,
                    10.5,
                    10.6,
                    10.7,
                    10.8,
                    10.9,
                    11.0,
                    11.1,
                    11.2,
                    11.3,
                    11.4,
                    11.5,
                    11.6,
                    11.7,
                    11.8,
                    12.0,
                    12.1,
                    12.2,
                    12.4,
                    12.5,
                    12.6,
                    12.8,
                    12.9,
                    13.0,
                    13.1
                  ].map<DropdownMenuItem<double>>((double value) {
                    return DropdownMenuItem<double>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  throwScore.toString(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Pushup',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                DropdownButton<int>(
                  value: pushup,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (int? newValue) {
                    setState(() {
                      pushup = newValue!;
                      calcPushupScore();

                      //calcTotalScore();
                    });
                  },
                  items: <int>[
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                    52,
                    53,
                    54,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                  ].map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                ),
                Text(
                  pushupScore.toString(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
