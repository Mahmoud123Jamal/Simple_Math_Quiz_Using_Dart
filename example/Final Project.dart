import 'dart:io';


class TestMath{
String Question;
double Answer;

TestMath({
required this.Question,
required this.Answer
});

}

double getAns(String msg){

print('Q | what is result of '''': $msg''''');

var answer =double.tryParse(stdin.readLineSync()!)?? 0.0;
return answer;
}


void main() {
print('**-----------------------**');
print('simple math Quiz');
print('15 Questions');
print('**-----------------------**');  
var questions=[
  TestMath(Question: '999-458', Answer:541.0),
  TestMath(Question: '35*12-421', Answer: -1.0),
  TestMath(Question: '500-99*9', Answer: -391.0),
  TestMath(Question: '12*77', Answer:924.0),
  TestMath(Question: '5*6/3*6*12', Answer:720.0),
  TestMath(Question: '22-5+8*2', Answer:33.0),
  TestMath(Question: '55*9', Answer:495.0),
  TestMath(Question: '6/2*9*6/24', Answer:6.75),
  TestMath(Question: '9+6/3+7*2/4+6', Answer:20.5),
  TestMath(Question: '17*18+99*6/3', Answer:504.0),
  TestMath(Question: '55*5*5*5*5', Answer:34375.0),
  TestMath(Question: '88*9+5/2.5+6+10*25', Answer:1050.0),
  TestMath(Question: '(55*5+9*999+14+8*20+560)/10000', Answer:1.0),
  TestMath(Question: '15*9*2/3-9+5/2', Answer:25.0),
  TestMath(Question: '22*99+8*18*99/5', Answer:5029.2),
];

for (var i in questions) {
  var UserAnswer = getAns(i.Question);
print('your Answer is : $UserAnswer');
if(UserAnswer==i.Answer){
  print("is correct");
}
else{print("Wrong , thre correct is: ${i.Answer}");}
print('-------------------------------');
}
}