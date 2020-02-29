import 'package:flutter/material.dart';
import 'package:flutter_flavours/app_config.dart';
import 'package:flutter_flavours/resource/display_strings.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


// class HomePage extends StatefulWidget {
  
// }
 
class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
 
    return Scaffold(
      appBar: AppBar(
        title: Text(config.appDisplayName),
      ),
      body: _buildBody(config.appDisplayName, config.stringResource, config.appInternalId),
    );
  }
 
  Widget _buildBody(String appName, StringResource stringResource, int appInternalId) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Text(appName),
          Text(DATE + getDateForDisplay()),
          Text(stringResource.APP_DESCRIPTION),
          Image.asset('assets/dancing.png', width: 50.0, height: 50.0,),
          Image.asset('assets/' + appInternalId.toString() + '/icon.png', width: 50.0, height: 50.0),
        ],
      )
    );
  }
 
  String getDateForDisplay() {
    DateTime now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy');
    return formatter.format(now);
  }
 
}