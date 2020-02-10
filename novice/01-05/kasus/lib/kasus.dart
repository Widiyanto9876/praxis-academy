import 'dart:convert';
import 'dart:io';
import 'dart:async';



Future <void> initUser()async{
  var request = await HttpClient().getUrl(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  var response = await request.close();
  var contents;

  await for(var contentss in response.transform(Utf8Decoder())){
    contents = contentss;
  }
  var file = File('file.txt');
  var contentss;
  file.createSync();

  if(await file.exists()){
    file.writeAsString(contents);
    contentss = await file.readAsString();
    print(contentss);

    var fileCopy = await File('data-copy.txt').writeAsString(contentss);
    print(await fileCopy.exists());
    print(await fileCopy.length());

  }
}
main() async{
  initUser();
}