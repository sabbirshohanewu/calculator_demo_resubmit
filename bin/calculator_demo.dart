import 'dart:io';


void main () {

List<dynamic> courses = [];

print("Enter courses number");
int numCourses = int.parse(stdin.readLineSync()??"");


for (int i=1; i <=numCourses; i++){
  print("enter course name $i");
  String name = stdin.readLineSync()??"";
  print("enter number for $name");
  double number = double.parse(stdin.readLineSync()??"");
  print("enter credit hour for course $name");
  int cHour = int.parse(stdin.readLineSync()??"");

Map<String,dynamic> course = {
      'grade': number,
      'creditHours': cHour,
    };

    
    courses.add(course);

}

  double totalPoints = 0.0;
  int totalCredits = 0;

for (Map<String, dynamic> course in courses) {

  double point = calculatePoint(course['number']);
  int cHour = course['creditHours'];

    totalPoints += (point * cHour);
    totalCredits += cHour;

  }
double gpa = totalPoints / totalCredits;
print("Your GPA is ${gpa.toStringAsFixed(3)}");



}
double calculatePoint(double number) {
  double point;

  if (number >= 80) {
    point = 4.0;
    print("A+");
      
  } else if (number >=70) {
    point = 3.5;
    print("A-");
      
  } else if (number >=60 ) {
    point = 3.0;
    print("B+");
      
  } else if (number >= 50) {
    point = 2.5;
    print("B");
      
  } else if (number >= 40) {
    point = 2.0;
    print("C");
      
  } else {
    point = 0.0;
    print("F");
      
  }
    
    return point;
}

