// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 4 ',
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Image.asset(
              'assets/images/image-banner.png',
              height: 300,
            ),
            SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => myapps()),
                  );
                },
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => myapps()),
                      );
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        foregroundColor:
                            const Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => myapps()),
                  );
                },
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => myapps()),
                      );
                    },
                    child: Text('Register'),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black)),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text("Continue as Guest"),
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}
