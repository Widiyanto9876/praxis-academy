# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

 Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair); // dalam method ini
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  pada method _buildRow ini berfungsi untuk menambahkan tanda alreadySaved centang untuk memastikan
  bahwa pasangan ke favorite.
  _buildRowfungsinya. Jika entri kata telah ditambahkan ke favorit, mengetuknya lagi menghapusnya dari favorit. Ketika ubin telah diketuk, fungsi panggilan setState()untuk memberi tahu kerangka kerja bahwa negara telah berubah.

  class RandomWordsState extends State<RandomWords> {
    ...
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Startup Name Generator'),
          actions: <Widget>[      // Add 3 lines from here...
            IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
          ],                      // ... to here.
        ),
        body: _buildSuggestions(),
      );
    }
    ...
  }

  Di Flutter, Navigator mengelola tumpukan yang berisi rute aplikasi. Mendorong rute ke tumpukan Navigator, memperbarui tampilan untuk rute itu.
  Memunculkan rute dari tumpukan Navigator, mengembalikan tampilan ke rute sebelumnya.

    Selanjutnya, Anda akan menambahkan ikon daftar ke AppBar dalam metode build untuk RandomWordsState. Ketika pengguna mengklik ikon daftar, rute baru yang berisi favorit yang disimpan didorong ke Navigator, menampilkan ikon.

    void _pushSaved() {
      Navigator.of(context).push(
      );
    }

    Panggil Navigator.push, seperti yang ditunjukkan di bawah ini, yang mendorong rute ke tumpukan Navigator. IDE akan mengeluh tentang kode yang tidak valid, tetapi Anda akan memperbaikinya di bagian selanjutnya.


