// made to run code snippets find outputs

void main(){
List<Map<String,dynamic>> Students =[];
String? userName="Rishabh";
List<int> marks =[90,89,97,96,97];
Map<String,List<int>> data={};
data[userName]=marks;
Students.add(data);

print('The name of student is ${Students[0].keys.first}');
print('The marks are ${Students[0].values.first}');
}