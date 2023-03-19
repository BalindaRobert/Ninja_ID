import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text('Ninja ID Card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjalevel += 1;
            });
          },
          child: Icon(Icons.add, color: Colors.grey[800]),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                  AssetImage('assets/6260469593827029503_109.jpg'),
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey[800],
              ),
              const Text(
                'NAME:',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kylian Mbappe',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              const Text(
                'CURRENT NINJA LEVEL:',
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 10),
              Text(
                '$ninjalevel',
                style: const TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.mail_lock_outlined,
                    color: Colors.grey[400],
                  ),
                  SizedBox(width: 10),
                  Text('kikimbappe@psg.fb.fr',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 18,
                          letterSpacing: 1)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
