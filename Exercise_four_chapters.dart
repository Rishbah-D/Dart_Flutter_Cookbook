// Problem: Student Grade Calculator
// You are tasked with creating a simple Dart program to manage and calculate the grades of students. Here’s what your program should do:

// Store Student Data:

// Use a Map to store the details of a student. The map should have the following keys:

// name (String): The name of the student.

// marks (List<int>): A list of marks obtained by the student in 5 subjects (e.g., [85, 90, 78, 92, 88]).

// Calculate the Average:

// Write a function called calculateAverage that takes the list of marks as input and returns the average mark (as a double).

// Determine the Grade:

// Write a function called determineGrade that takes the average mark as input and returns the grade (as a String) based on the following criteria:

// A if the average is >= 90

// B if the average is >= 80

// C if the average is >= 70

// D if the average is >= 60

// F if the average is < 60

// Display the Result:

// Print the student’s name, average mark, and grade in a readable format.

// Error Handling:

// Add basic error handling to ensure that the list of marks contains exactly 5 subjects. If not, print an error message like "Invalid number of subjects!"
import 'dart:io';
void main(){
  try{
    // Addition of multiple students 
    List<Map<String,dynamic>> Students =[];
    print("How many student's data u want to enter");
    String? noStu = stdin.readLineSync();
    int noS = int.parse(noStu!);
    
    // user input and data store
    String? userName;
    String? m;
    
    
    for (var j=0;j<noS;j++){
      List<int> marks =[];
    print('Enter the name of the student');
    userName=stdin.readLineSync();
    print('Enter marks in all five subjects');
    for(var i =0;i<5;i++){
      
      m = stdin.readLineSync();
      if (m == null|| m.isEmpty ){
        throw FormatException("Invalid input");
      }
      int m1=int.parse(m);
      if (m1<0||m1>100){
        throw RangeError("Marks not in valid raneg");
      }
      marks.add(m1);
    
    
    }
    Map<String,List<int>> data={};
    data[userName!]=marks;
    Students.add(data);
    
    }
    // Displaying the data 
    print('How many records u want to see max is $noS');
    String? recs = stdin.readLineSync();
     if (recs == null|| recs.isEmpty ){
        throw FormatException("Invalid input");
      }
    int rec = int.parse(recs);
    if (rec<0||rec>noS){
        throw RangeError("Records not in valid range");
      }
    for (var k=0;k<rec;k++){
      print('Data of ${k+1} Student is:-');
      print('--- Name ${Students[k].keys.first}');
      print('--- Marks ${Students[k].values.first}');
      print('--- Avergae marks of student is ${_avgfunc(Students[k].values.first)} and Grade obtained is ${_Grade(_avgfunc(Students[k].values.first))}');


    }  
  }catch(e){
    print('$e');
  }finally{
    print('END');
  }
}
double _avgfunc(List marks){
  double avg=0;
  for (var i=0;i<marks.length;i++){
    avg+=marks[i];
  }
  return avg/marks.length;
}

String _Grade(double averageMarks){
  if (averageMarks>=90){
    return 'A';
  }else if(averageMarks<90&&averageMarks>=80){
    return 'B';
  }else if (averageMarks<80&&averageMarks>=70){
    return 'C';
  }else{
    return 'D';
  }
}