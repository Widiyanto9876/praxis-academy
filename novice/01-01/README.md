
   1.   Membuat Hello Word 

            void main () {
                print('hello word');
            }
            setiap membuat aplikasi menggunakan bahasa dart  memiliki fungsi main().
            untuk menampilkan tesk pada konsol menggunakan fungsi print ().
            
   2. membuat variabel
        
        void main () {
        
        contoh membuat variabel dan menginiliasisasi String , Integer , List
            var name = "widiyanto";
            var age = 21;
            var hoby = ['badmintoon', 'swiming'];
            print(name);
            print(age);
            print(hoby);
            print(hoby[0]);
        }
    3. Control flow statements
        dalam bahasa pemrograman dart mendukung statement if else, seperti opsional dibawah ini,
        pada control flow statements ini include for dan while dimana for seperti List List dan Set juga mendukung bentuk iterasi for-in
        sedangkan yang while = Loop sementara mengevaluasi kondisi sebelum loop
        void main() {
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
        
        }
        
   4. dalam dart ada bebarapa comments yaitu = // , /// , /*   */
   
   5. readLineSync
   
   pada fungsi ini digunakan untuk memasukan String yang diketikan oleh user 
   
   print('masukan nama anda');
          var input = stdin.readLineSync();
          print(input);
          
   6. int.tryParse dan if else
    
       pada fungsi int.tryParse untuk input berupa integer
       if else = jika umur yang dimakan kuranng dari 10 maka menjalankan print berupa anda masih bocah
       jika umur yang dimasukan lebih dari 10 maka menjalankan print (anda sudah tua)
   
         print('masukan umur anda');
            int inputage = int.tryParse(stdin.readLineSync());
        
            if (inputage < 10) {
                print('anda masih bocah');
            } else {
                print('anda sudah tua');
            }
   7. Boolean
        pada fungsion ini berfungsi mengembalikan nilai true atau false
        pada String masukan mengimputkan false atau true jika yang dimasukan true menampilkan print(anda benar) jika mengimputkan false maka menampilkan sebaliknya
        
        void main() {
             String masukan = stdin.readLineSync();
                if (checkBool(masukan)) {
                    print('anda benar');
                } else {
                    print('anda salah');
                }
        }   
         bool checkBool (String nilai) {
                if (nilai == 'true') {
                    return true;
                } else if (nilai == 'false') {
                    return false;
                }
            }
            
        8. Stagehand
        Stagehand adalah library yang dibuat mengkompile website dari dart ke javascript
        cara install Stagehand, cukup mudah masuk ke project yang sudah kita buat lalu buat folder khusus untuk menampung library Stagehand,
        lalu install $ pub global activate stagehand melalui terminal ,  jika sudah export path di bashrc , ketikan perintah di terminal stagehand web-simple atau stagehand console-full
        
        
        pada kasus = stagehand web-simple
        pada kasus2 = stagehand console-full
        
        
        
    
    
       
