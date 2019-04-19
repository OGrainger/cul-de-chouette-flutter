import 'package:flutter/material.dart';

void main() => runApp(Home());

/*class Room {
  Room({this.id, this.name, this.turnCount, this.status});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      turnCount: json['turnCount'],
      name: json['name'],
      status: json['status'],
    );
  }

  final int id;
  final int turnCount;
  final String name;
  final String status;
}*/

class Home extends StatelessWidget {
  /*Future<Room> fetchPost() async {
    final response =
        await http.get('https://cul-de-chouette-dev.herokuapp.com/room');
    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return Room.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load post');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(),
      ),
    );
  }
}
