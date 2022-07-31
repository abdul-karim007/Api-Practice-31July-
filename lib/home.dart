import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: getUser(),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data[index]['name']),
              );
            },
          );
        }
      },
    )
        // Center(child: IconButton(onPressed: getUser, icon: Icon(Icons.add)))

        );
  }

  getUser() async {
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    // print(data);
    return data;
  }
}
