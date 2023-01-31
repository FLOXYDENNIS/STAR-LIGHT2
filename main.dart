// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class News {
  String id;
  String url;
  String title;
  String text;
  String publisher;
  String author;
  String image;
  String date;

  News(
    this.id,
    this.url,
    this.title,
    this.text,
    this.publisher,
    this.author,
    this.image,
    this.date,
  );

  News.fromJson(Map<String, dynamic> json, this.id, this.url, this.author,
      this.date, this.image, this.publisher, this.text, this.title) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
    publisher = json['publisher'];
    author = json['author'];
    image = json['image'];
    date = json['date'];
  }
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

void main() {
  runApp(NewsApp());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border(
                  bottom: BorderSide(
                width: 0.5,
                color: Colors.black,
              )),
            ),
            child: AppBar(
              title: Text(
                'STAR-LIGHT NEWS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
