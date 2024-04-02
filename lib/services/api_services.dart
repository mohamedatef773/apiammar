
import 'package:apiammar/model/News.dart';
import 'package:http/http.dart' as http;
 import 'dart:convert';
class ApiServices{
Future<List<Article>> fetchArticle () async{
 try{
  var respone = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=us&category=science&apiKey=5008bd36b6b04ad3823c54c644dc4ba6"));
  var jsondata =jsonDecode(respone.body);
  List <Article> articles =[];
  for (var i in jsondata["articles"]){
   Article object = Article.fromJson(i);
   articles.add(object);
  }
  return articles;
 }catch(e){
  print(e);
  return [];
 }

}

}