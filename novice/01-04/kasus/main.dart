//import 'dart:io';
//
//class GenericClass<T> {
//  T ob;
//
//  GenericClass(T o) {
//    ob = o;
//  }
//  T getob() {
//    return ob;
//  }
//  void showType(){
//    print('Type of T is' + 'Class + Name');
//  }
//}
//
//class main {
//  static void mainClass(String args[]) {
//
//  }
//}
class GenericClass<T> {
  T ob;

  GenericClass(T o){
    ob = o;
  }
  T getob(){
    return ob;
  }

  void ShowType(){
    print('Type of T is' + ob.runtimeType.toString());
  }

}


void main(List<String> args){

  GenericClass<int> iob = GenericClass<int>(88);

  iob.ShowType();

  int v = iob.getob();
  print('value: ' + v.toString());

  GenericClass<String> strob = GenericClass<String>('GenericTest');
  strob.ShowType();

  String str = strob.getob();
  print('value: ' + str);

}