import 'dart:io';


String backToMenu;
void main() {

  int inputPin = 0;


  do
  {
    print('\n');
    print('===================================================');
    print('          Welcome to this simple ATM machine       ');
    print('===================================================');
    print('\n');
    print('Please select ATM transaction');
    print('Press [1] Deposit');
    print('Press [2] Withdraw');
    print('Press [3] Balance Inquiry');
    print('Press [4] Exit');

    stdout.write('\n -> What would you like to do? \n');
    inputPin = int.parse(stdin.readLineSync());

    switch(inputPin){
      case 1:
        Deposit();
        break;
      case 2:
        WithDraw();
        break;
      case 3:
        BalanceInquiry();
        break;
      case 4:
        Exit();
        break;
      default:
         print('Please select correct transaction.');
         print('Back to Menu press M');
         backToMenu = stdin.readLineSync();
          if(backToMenu == 'm' || backToMenu == 'M'){
            main();
          }
    }
  }while(inputPin < 0 && inputPin > 4);
//  {
//    print('\n Please select correct transaction.');
//    print('Back to menu press M');
//    backToMenu = stdin.readLineSync();
//    if(backToMenu == 'm' || backToMenu == 'M'){
//      main();
//    }
//  };

}


void Deposit() {
  print('Deposit anda xxxx');
  print('tekan Y untuk melanjutkan transaksi lain');
  backToMenu = stdin.readLineSync();
  if(backToMenu == 'y' || backToMenu == 'Y'){
    main();
  }
}
void WithDraw() {
  print('xxxxx');
  print('tekan Y untuk melanjutkan transaksi lain');
  backToMenu = stdin.readLineSync();
  if(backToMenu == 'y' || backToMenu == 'Y') {
    main();
  }
}
void BalanceInquiry(){
  print('xxx');
  print('tekan Y untuk melanjutkan transaksi lain');
  backToMenu = stdin.readLineSync();
  if(backToMenu == 'y' || backToMenu == 'Y') {
    main();
  }
}
void Exit() {

  print('anda berhasil logout');
}