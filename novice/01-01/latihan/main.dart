import 'dart:io';

void main() {
    print('hello word');
    print('praxis academy');

    var name = "widiyanto";
    var age = 21;
    var hoby = ['badmintoon', 'swiming'];
    print(name);
    print(age);
    print(hoby);

    print(hoby[0]);

    if (age >= 2) {
        print('21st cantury');
    } else if (age >= 22) {
        print('20th country');
    }

    for (var object in hoby) {
        print(object);
    }
    for (int mount = 1; mount <= 12; mount++) {
        print(mount);
    }
    while (age < 20) {
        age += 1;
    }

//    int fibonacci(int n) {
//        if (n == 0 || n == 1) return n;
//        return fibonacci(n - 1) + fibonacci(n - 2);
//    }
//
//    var result = fibonacci(20);
    print('masukan nama anda');
    var input = stdin.readLineSync();
    print(input);
    print('masukan umur anda');
    int inputage = int.tryParse(stdin.readLineSync());

    if (inputage < 10) {
        print('anda masih bocah');
    } else {
        print('anda sudah tua');
    }
    int jumlah(int num1, int num2) {
        return num1 + num2;
    }

    print('masukan hasil');
    var hasil = stdin.readLineSync();

    if (hasil == 'true') {
        print('anda benar');
    } else {
        print('anda salah');
    }
    String masukan = stdin.readLineSync();
    if (checkBool(masukan)) {
        print('anda benar');
    } else {
        print('anda salah');
    }
}


// mengecek boolean dan mengembalikan nilai true / false
    bool checkBool (String nilai) {
        if (nilai == 'true') {
            return true;
        } else if (nilai == 'false') {
            return false;
        }
    }





