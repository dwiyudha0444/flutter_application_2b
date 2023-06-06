import 'package:flutter/material.dart';
import 'package:flutter_application_2b/berandaPost.dart';
import 'package:flutter_application_2b/main.dart';

class Beranda extends StatelessWidget {
  final List _post = [
    "https://i.pinimg.com/564x/ef/98/9d/ef989d6721606c82b4f5816585b18ca4.jpg",
    "https://i.pinimg.com/564x/6a/c0/70/6ac070af1586e4c905a9d546417052ed.jpg",
    "https://i.pinimg.com/564x/8c/76/22/8c7622fc76a95366eb24875e50f9e529.jpg",
    "https://i.pinimg.com/564x/8a/1f/d8/8a1fd88e47a167035c58968b2c24d090.jpg",
    "https://i.pinimg.com/564x/58/f6/9b/58f69b83189a3119c152d72b6115d987.jpg",
    "https://i.pinimg.com/564x/44/3e/c5/443ec5149cb75d100852217ae5c3523a.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // tombol kembali
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
        backgroundColor: Colors.red,
      ),

      //layout
      body: Column(children: [
        SizedBox(),
        Expanded(
            child: ListView.builder(
                itemCount: _post.length,
                itemBuilder: (context, index) {
                  return BerandaPost(labelPosts: _post[index]);
                }))
      ]),
    );
  }
}
