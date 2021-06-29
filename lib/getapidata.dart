import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class getapi extends StatefulWidget {

  @override
  _getapiState createState() => _getapiState();
}

 getblogdata() async{
     var blogs = [];
     var response = await http.get(Uri.https("jsonplaceholder.typicode.com","users"));
      var jsonData = jsonDecode(response.body);

      for(var i in jsonData){
        BlogModel blog = BlogModel(i['id'],i['title'],i['desc'],i['image'],i['created_at']);
        blogs.add(blog);
      }
      print(blogs);

   }

class _getapiState extends State<getapi> {
  @override
  Widget build(BuildContext context) {
    return Container(child: ElevatedButton(onPressed: getblogdata
    ,
    child: Text("Get Api Data"),),);
  }
}

class BlogModel{
  var id;
  var title;
  var descp;
  var image;
  // ignore: non_constant_identifier_names
  var created_at;
  
  BlogModel(this.id,this.title,this.descp,this.image,this.created_at);

}