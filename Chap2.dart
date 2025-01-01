// // ----------- Control FLow IF ELSE LOOPS --------------------
// void main (){
//  int myvar=1;
//  while(myvar<5){
//  if (myvar<=1){
//   print('Lmao $myvar');
//  }
//  else{
//   print('XD $myvar');
//  }
//  myvar++;
//  }
//  print('Start of the for loop');
//  for (var i=10;i>=myvar;i--){
//   if ((i-myvar)==0){
//     print('ZERO');
//   }
//   else{
//   print('${i-myvar} count to zero');
//   }
//   }
// //  Trying forEACH
// print('All items in list one at a time');
// List nums =['1','2','3','4','5','1'];
// nums.forEach(print);
// }
// --------------------------------------- A QUICK QUESTION ON EXCEPTION HANDLING-------------------------------
import 'dart:io';
void main(){
  print('Enter first integer');
  String? a =stdin.readLineSync();
  
  print('Enter second integer');
  String? b =stdin.readLineSync();
 try{
  int num1 = int.parse(a!);
  int num2 = int.parse(b!);
  if (num2==0){
    throw Exception("Can't divide by zero");
  }

  print('Division calculator start');
  double d;
  try{
    d=num1/num2;
    print('Result:- $d');
  }catch(e){
    print('Div by zero');
  }
   }catch (e){
  print('Error: $e');
 }finally{
  print('Division Done');
 }
}
