import 'package:latihan/latihan.dart' as latihan;
import 'package:latihan/latihan.dart';

abstract class Sekolah {
  void tampilNamaSekolah();
  void tampilLokasiSekolah();
}

class Sekolahan {
  void tampilNamaSekolahan(){}
  void tampilLokasiSekolahan(){}

}
class Lembaga {
  void tampilkanLokasiLembaga(){}
}

void main(List<String> arguments) {
//  print('Hello world: ${latihan.calculate()}!');
//  Orang orang1 = Orang();
//  orang1.namaOrang();
//
////  Siswa siswa = Siswa();
////  siswa.setName = 'widiyanto';
////  siswa.getName;
//  Siswa siswa = Siswa();
//  siswa.name = "cahyo";
//  siswa.getname;
//
//  User user = User("widiyanto","widiyanto9876@gmail.com",20,true);
//  user.showData();
//
//
//  PersegiPanjang persegiPanjang = PersegiPanjang();
//  persegiPanjang.panjang = 20;
//  persegiPanjang.lebar = 40;
//  print(persegiPanjang.hitungLuas());
//}
//
//class Orang {
//  void namaOrang(){
//    print('namannya orang');
//  }
//
//
//}
//class PersegiPanjang{
//  double panjang;
//  double lebar;
//
//  double hitungLuas(){
//    return panjang*lebar;
//  }
//
//}
//
//class User {
//  String name;
//  String email;
//  int age;
//  bool status;
//
//  User(this.name,this.email,this.age,this.status);
//
//  void showData(){
//    print(name + "\n" + email + "\n" + age.toString() + "\n" + age.toString());
//  }


}
// extends hanya bisa satu kelas sedangka yang implementasi bisa lebih dari 1 (multi), mixin = class Siswa with Guru,Sekolah

//class Sekolah {
//  String nama_sekolah;
//  String alamat_sekolah;
//  int jumlah_siswa;
//
//  void tampilDataSekolah() {
//    print(
//        nama_sekolah + "\n" + alamat_sekolah + "\n" + jumlah_siswa.toString());
//  }
//}
//class Guru{
//  String nama;
//  int age;
//  String matkul;
//
//  void tampilDataSekolah(){
//
//  }
//}

class Siswa extends Sekolah{
  @override
  void tampilLokasiSekolah() {
    print('mana aja boleh');
  }

  @override
  void tampilNamaSekolah() {
    print('praxis ');
  }
}

class Siswahan implements Sekolahan,Lembaga {
  @override
  void tampilLokasiSekolahan() {
    // TODO: implement tampilLokasiSekolahan
  }

  @override
  void tampilNamaSekolahan() {
    // TODO: implement tampilNamaSekolahan
  }

  @override
  void tampilkanLokasiLembaga() {
    // TODO: implement tampilkanLokasiLembaga
  }

}