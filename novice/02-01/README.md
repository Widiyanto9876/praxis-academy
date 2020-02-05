1. Basic Dart Pemrograman

    printInteger(int aNumber) {
      print('The number is $aNumber.'); // Print to console.
    }
    
    // code yang pertama kali dirun
    main() {
      var number = 42; // Declare dan initialize sebuah1 variable. Cara untuk mendeklarasikan variabel tanpa menentukan jenisnya.
      printInteger(number); // memanggil sebuah fungsi
    }

2. Default value
    Variabel yang tidak diinisialisasi memiliki nilai awal nol. Bahkan variabel dengan tipe numerik awalnya nol, karena angka — seperti segala sesuatu yang lain di Dart — adalah objek.
    
 main(){
 
  int lineCount;
  assert(lineCount == null);
  print(lineCount);
  }
3. break,coutine adn while
    while mengeksekusi intruksi setiap kondisi yang ditentukan bernilai true.Dengan kata lain, loop mengevaluasi kondisi sebelum blok kode dieksekusi.
    break untuk mengambil kontrol dari sebuah kontruksi . menggunakan break dalam loop menyebabkan program keluar dari loop
    countinue pernyataan continue tidak keluar dari loop. Ini mengakhiri iterasi saat ini dan memulai iterasi berikutnya.

    main(){
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

4. switch case
    nilai dari variabel, jika cocok dengan salah satu kasus , maka yang sesuai deijalankan
    
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
