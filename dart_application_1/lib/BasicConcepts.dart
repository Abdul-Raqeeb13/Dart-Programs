import 'dart:io';

void main() {

  // 1). Basic program --------------------------------------------------------------------------

  // To show the value to user
  stdout.write("Enter Your First Number");
  // To get the value from user by defualt is string se we use int.parse to convert into integer ( ! means value can not be null, ? menas value can be empty )
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Your Second Number");
  int num2 = int.parse(stdin.readLineSync()!);

  // Difference between those is stdout generate new line which is print can't do
  print("-------------------------- Block 1 ------------------------------------");
  print(num1 + num2);
  stdout.write(num1 + num2);

  // 2). Comments ---------------------------------------------------------------------------------

  // single line comment
  /* multiple line
   comment */

  //  3). Data Types ------------------------------------------------------------------------------

  String name = "ARK";
  int age = 21;
  double pi = 3.14;
  bool value = true;

  // 4). Dart Keywords -----------------------------------------------------------------------------

  // keywords are rweserve keywords or predefine words which we not use as variable becuase its has specifi menaning
  // like find , const , static , int , string , double

  // 5). Dart Variables -----------------------------------------------------------------------------

  // 1. var Keyword
  // The var keyword allows you to declare a variable with type inference. Dart automatically determines the type based on the assigned value.

  var course = "Flutter"; // String type inferred
  var fees = 25; // int type inferred
  var isFlutterAwesome = true; // bool type inferred

  // 2. Explicit Type Declaration
  // You can explicitly specify the type of the variable to make your code more readable and type-safe.

  String name2 = "Flutter";
  int age1 = 25;
  double price1 = 19.99;
  bool isAvailable = true;

  // 3. dynamic Keyword
  // The dynamic keyword allows a variable to hold values of any type. However, this sacrifices type safety.

  dynamic value1 = "Hello";
  value1 = 42; // No error
  value1 = true; // No error

  // 4. final Keyword
  // A final variable can only be assigned once. Its value is immutable but is determined at runtime.

  final name1 = "Flutter";
  final int age2 = 25; // Explicit type is optional

  // 5. const Keyword
  // A const variable is a compile-time constant. Its value must be known at compile time and cannot be changed.

  const pi2 = 3.14159;
  const String appName = "FlutterApp";

  // Difference between final and const:

  // final: Value is assigned once at runtime.
  // const: Value is fixed at compile time.

  // 6. Late Initialization
  // Use the late keyword for variables that are initialized later but must be non-nullable. This is useful for expensive computations or variables initialized in initState.

  print("------------------------------ Block 5 ka 6---------------------------");
  late String username;
  username = "Abdul"; // Initialized later
  print(username);

  // 7. Nullable Variables (?)
  // You can declare variables that can hold a null value by appending a ? to the type.

  print("------------------------------ Block 5 ka 7 ---------------------------");
  String? nullableName;
  nullableName = null; // No error
  print(nullableName);

  // 8. Default Initialization
  // Dart initializes variables with a default value of null if not explicitly initialized (except for final and const).

  print("------------------------------ Block 5 ka 8 ---------------------------");
  int? number; // Default value is null
  print(number); // Output: null

  // 9. Collections
  // Dart provides ways to declare collections like lists, sets, and maps.

  // List
  List<String> fruits = ["Apple", "Banana", "Cherry"];

  //   // Set
  Set<int> numbers = {1, 2, 3};

  //   // Map
  Map<String, int> scores = {"John": 90, "Jane": 85};

  // 10. Using const with Collections
  // You can declare collections as constants, ensuring their values cannot be modified.

  const List<String> fruitss = ["Apple", "Banana"];
  const Set<int> numberss = {1, 2, 3};
  const Map<String, int> scoress = {"John": 90, "Jane": 85};

  //  6). Operaotrs ----------------------------------------------------------------------------------

  // Arithmetic, Ternary, Logical, 
  // We skip this part because i have much lknowledge about these operators

  // 7). Dart Collections -> collection menas set of object -------------------------------------------
  
    // 1). Lists - > store data in order way 
    // Different methods - > add , remove, removeat , contains , length , isempty , isnotempty , insert , insertall , first , last , reversed
    List<int> list1 = [1,2,3,4,5];
    List<String> list2 = ["a","b",'c','d','e']; 


    // 2). Sets -> Store unique data in unorder way 
    // Different methods - > add , isempty , isnotempty , last , first , length , contains , elementAt , remove , addall , 

    Set set1 = {1,2,3,4,5};

    // 3). Map -> store data in a unorder way with key value pair key must be unique
    //  Different methods -> keys , values , isempty , isnotempty , remove[key] , addall 
    // Map<String, dynamic>mapdata={} for storing int and string value at the same time
    Map<String, String>mapdata={
        "Name" : "ARK",
        "Age" : '20'
    };


  // 8). Conditional statement ------------------------------------------------------------------------

  print("--------------------------- block 8 ------------------------------------");
  int marks = 80;
  if(marks>=90){
    print("Bike");
  }
  else if(marks>=80){
    print("phone");
  }
  else{
    print("Nothing");
  }


  // 9). Switch statement

  print("--------------------------- block 9 ------------------------------------");

 stdout.write("Enter Your First Number");
 int val1 = int.parse(stdin.readLineSync()!);
 
 stdout.write("Enter Your Second Number");
 int val2 = int.parse(stdin.readLineSync()!);
 
 stdout.write("Enter Your operations + - / *");
 String operations = stdin.readLineSync()!;

  switch (operations) {
    case "+":
      print(val1+val2);
      break;
    case "-":
      print(val1-val2);
      break;
    case "/":
      print(val1/val2);
      break;
    case "*":
      print(val1*val2);
      break;
    default:
      print('Enter correct choice');
  }



  // 10). Dart Loops

  print("----------------------------- block 10 ------------------------------------");

  // for loop -> used when know starting and ending 
  // for each loop -> used with collections like list , set , map
  // while loop -> used when we dont know the starting point
  // Do while loop -> used when we dont know the starting point and ending point 

  print("===== for loop =======");
  for (var i = 1; i < 11; i++) {
    print(i);
  }

  print("===== while loop =======");
  int j = 1;
  while (j < 11) {
    print(j);
    j++;
  }

  print("======= Do while Loop ========");
  int k = 1;
  do {
    print(k < 11);
    k++ ;
  } while (k <  11);

  
}
