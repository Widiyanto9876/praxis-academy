import 'dart:io';
//printInteger(int aNumber) {
//  print('The number is $aNumber.'); // Print to console.
//}
// This is where the app starts executing.
void main() {
//  var number = 42; // Declare and initialize a variable.
//  printInteger(number); // Call a function.

//  int lineCount;
//  assert(lineCount == null);
//  print(lineCount);
//  const foo = [1, 2, 3];
//  print(foo);
//
//  String piAsString = 3.14159.toStringAsFixed(2);
//  assert(piAsString == '3.14');
//  print(piAsString);

//  var s = 'string interpolation';
//
//  assert('Dart has $s, which is very handy.' ==
//      'Dart has string interpolation, ' +
//          'which is very handy.');
//  assert('That deserves all caps. ' +
//      '${s.toUpperCase()} is very handy!' ==
//      'That deserves all caps. ' +
//          'STRING INTERPOLATION is very handy!');
//  print(s);
//  var n = 10;
//  do {
//    print(n);
//    n--;
//  }
//  while(n>=0);

//  var num = 5;
//  var factorial = 1;
//
//  for( var i = num ; i >= 1; i-- ) {
//    factorial *= i ;
//  }
//  print(factorial);
  for(var temp, i = 0, j = 1; j<30; temp = i, i = j, j = i + temp) {
    print('${j}');
  }

  bool test;
  test = 12 > 5;
  print(test);
// break,coutine adn while
  int i = 0;
  while (i < 3) {
    i++;
    print(i);
  }

  print('----');
  while(true) {
    i++;
    if (i > 7) {
      break;
    }
    if (i == 5) {
      continue;
    }
    print(i);
  }
  var grade = stdin.readLineSync();
  switch(grade) {
    case "A": {print("Excellent");    }
    break;

    case "B": { print('Good');    }
    break;

    default: {print('invalid choice');
    }
    break;
  }

}