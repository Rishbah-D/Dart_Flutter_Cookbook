// ---------------------------FUNCTIONS------------------------------
import 'dart:async';
import 'dart:io';

// void main(){
//   print('Enter first number');
//   String? s1 = stdin.readLineSync();
//   print('ENTER Second number');
//   String? s2  = stdin.readLineSync();
//   int num1 = int.parse(s1!);
//   int num2 = int.parse(s2!);
//   getDateTime();
//   int added = ADD(num1, num2);
//   print('Result is: $added');
// }
// void getDateTime(){
//   var time = DateTime.now();
//   print('India: $time');
// }

// int ADD(int a ,int b ){
//   int result;
//   result = a+b;
//   return result;
// }
// -------------------------------running optional params---------------------------------
// void main(){
//   Greetings();
//   Greetings(personName: 'Rishabh');
//   Greetings(personName: 'Rishabh',personSurname: 'Dwivedi');
// }
// void Greetings({String personName ="Default", String? personSurname}){
//   if (personName.contains('Default')){
//     print('Bleh no name given');
//   }else{
//     print('Hello Mr.$personName ${personSurname?? ""}'.trim());
//   }
// }
// ---------------------------------Anonymous function------------------------------------

// void main (){
//   int a =199;
//   int b = 23;
//   int add_anon(a,b){return a+b;}
//   int diff_anon(a,b){return a-b;}
//   print('The result of adding $a and $b is ${add_anon(a ,b)}');
//   print('The value of subtracting $a with $b is ${diff_anon(b,a)}');
// }
// -------------------------------Future-----------------------------
void main() async{
int val = 5;
print('This is the first line to be printed and is working without any delay');
var vals = await _customDelay(val);
var customText = val==1 ? "second later":"seconds later";
print('The delayed statement is $vals $customText');
}
Future <int> _customDelay(int delay)async{
try{
  await Future.delayed(Duration(seconds: delay));
  return delay;
}catch(e){
  print(e);
  return delay;
}
}