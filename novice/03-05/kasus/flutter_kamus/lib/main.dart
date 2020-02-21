
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_kamus/initialize_i18n.dart' show initializeI18n;
import 'package:flutter_kamus/constant.dart' show languages;
import 'package:flutter_kamus/localizations.dart' show MyLocalizations, MyLocalizationsDelegate;

import 'package:flutter_kamus/user_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() async {
  Map<String, Map<String, String>> localizedValues = await initializeI18n();
  runApp(MyApp(localizedValues));
}

class MyApp extends StatefulWidget {
  final Map<String, Map<String, String>> localizedValues;
  MyApp(this.localizedValues);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> data;

  String _locale = 'en';
  onChangeLanguage() {
    if (_locale == 'en') {
      setState(() {
        _locale = 'fr';
      });
    } else {
      setState(() {
        _locale = 'en';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    User.getAllUser("1").then((users){
      setState(() {
        data = users;
      });
    });
  }

  List<Widget> createListTile(){

    List<Widget> listTile = [];

    for (var i = 0; i < data.length; i++) {
      listTile.add(
        ListTile(
          leading: CircleAvatar(  child: Text(data[i].name.substring(0, 2)), ),
          title: Text(data[i].name),
          subtitle: Text(data[i].email),
          onLongPress: (){
            _showDialog(i);
          },
          onTap: (){},
        ),
      );
    }

    return listTile;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: Locale(_locale),
        localizationsDelegates: [
          MyLocalizationsDelegate(widget.localizedValues),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: languages.map((language) => Locale(language, '')),
        home: Scaffold(
            floatingActionButton: Row(
              children: <Widget>[
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.language),
                ),
                FloatingActionButton(
                  onPressed: (){
                    showDialogInput(0);
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),


            appBar: AppBar(title: Text(MyLocalizations.of(context).hello), backgroundColor: Colors.deepOrangeAccent,),
            body: ListView(
                padding: EdgeInsets.all(0),
                children: createListTile()
            )
        )
    );
  }


  // Tampilkan dialog pilihan aksi edit/delete data
  void _showDialog(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Select Action"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Edit"),
              onPressed: () {
                // close dialog
                Navigator.of(context).pop();
                // tampilkan dialog input
                showDialogInput(index);
              },
            ),
            new FlatButton(
              child: new Text("Delete"),
              onPressed: () {
                // close dialog
                Navigator.of(context).pop();
                // Tampilkan dialog konfirmasi saat hapus data
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("Are you sure?"),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text("Yes"),
                            onPressed: () {
                              // hapus list data dengan index tertentu
                              this.data.removeAt(index);
                              setState(() {});
                              // close dialog
                              Navigator.of(context).pop();
                            },
                          ),
                          new FlatButton(
                            child: new Text("No"),
                            onPressed: () {
                              // close dialog
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    }
                );
              },
            ),
          ],
        );
      },
    );
  }

  // Tampilkan dialog dengan input untuk add/edit
  void showDialogInput(int index){
    final TextEditingController _textController1 = TextEditingController();
    _textController1.text = (index != 0) ? data[index].name : "";

    final TextEditingController _textController2 = TextEditingController();
    _textController2.text = (index != 0) ? data[index].email : "";

    String edit_name = (index != 0) ? data[index].name : "";
    String edit_email = (index != 0) ? data[index].email : "";

    Alert(
        context: context,
        title: (index != 0) ? "EDIT USER" : "ADD USER",
        content: Column(
          children: <Widget>[
            TextField(
              controller: _textController1,
              decoration: InputDecoration(
                icon: Icon(Icons.account_circle),
                labelText: 'Name',
              ),
              onChanged: (String str){
                edit_name = str;
              },
            ),
            TextField(
              controller: _textController2,
              decoration: InputDecoration(
                icon: Icon(Icons.mail),
                labelText: 'Email',
              ),
              onChanged: (String str){
                edit_email = str;
              },
            ),
          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () {
              if (index != 0) {
                User user = data[index];
                user.name = edit_name;
                user.email = edit_email;
                data[index] = user;
              }else{
                User user = User(
                  id: 0,
                  name: edit_name,
                  email: edit_email,
                  avatar: "...",
                );
                data.insert(0, user);
              }
              setState(() {});
              Navigator.of(context).pop();
            },
            child: Text(
              "SAVE",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }

}