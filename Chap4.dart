// ------------------------List-------------------
// void main(){
//   List Months = ['Jan','Feb','March','April'];
//   Months.add('May');
//   Months.forEach(print);
//   print('The length of list is ${Months.length}');
// }
// -------------------------MAPS---------------------
// void main(){
//   Map <int,String> FourMonths = {1:"Jan",2:"Feb",3:"March"};
//   Map<int,String> nextMonths ={4:"April",5:"May"};
//   FourMonths.addEntries(nextMonths.entries);
//   FourMonths.forEach((key, value) {
//     print('Keys are:$key and the values are:$value');
//   });
// }
// ---------------------Complex Data types----------------
// import 'dart:convert';
// void main(){
//   //creating JSON 
//   Map<String,dynamic> data ={jsonEncode('title'):jsonEncode('Star Wars'),
//   jsonEncode('year'):jsonEncode('1977')};
//   //Decoding 
//   Map<String,dynamic> items = jsonDecode(data.toString());

//   print(items); //prints whole thing including title and year
//   print(items['title']); //prints on title 
//   print("This is the title : $items['title']"); //prints whole thing plus ['title'] (very wrong syntax)
//   print('This is the title : ${items['title']}'); // right way to print stuff (BRACES MAKES IT WORK)
//   }

