

class Orang<T,A> {
  T nama;
  A usia;
Orang(this.nama,this.usia);
}





main (List<String>args) {
  Orang<String,int> orang = Orang("andi",90);
  Orang<int,String> orang2 = Orang(90,"andi");
  print(orang.nama);
  print(orang.usia);
  print ("------------------------------------");
  print(orang2.nama);
  print(orang2.usia);

  List data = List();
  data.add("satu");
  data.add("satu");
  data.add("dua");
  data.add("tiga");
  print(data.removeLast());
  print(data.removeAt(1));
  print(data.first);

  Set<int> data2 = Set();
  data2.add(1);
  data2.add(2);
  data2.add(3);
  data2.add(4);
  print(data2);

  Map<String,String> data3 = Map();
  data3["nama"] = "widiyanto";
  data3["alamat"] = "GK";
  data3["usia"] = "56";

  print(data3.values);
  print(data3.isNotEmpty);
  print(data3.isEmpty);
}