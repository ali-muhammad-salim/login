// import 'package:assignment4/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapps());
}

class myapps extends StatefulWidget {
  const myapps({super.key});

  @override
  State<myapps> createState() => _myappsState();
}

class _myappsState extends State<myapps> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homes(),
    );
  }
}

class homes extends StatefulWidget {
  const homes({super.key});

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(8.0), // Adds space around the icon
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0)), // Add border
              borderRadius: BorderRadius.circular(8.0), // Add rounded corners
            ),

            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(5),
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 400,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    "Welcome back! Glad to see you, Again!",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your Passward?',
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot Passward?",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Register'),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          foregroundColor:
                              const Color.fromARGB(255, 255, 255, 255))),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Color.fromARGB(255, 138, 138, 138),
                    )),
                    Expanded(
                        child: Text(
                      "Or Login with",
                      style:
                          TextStyle(color: Color.fromARGB(255, 138, 138, 138)),
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                        child: Divider(
                      thickness: 2,
                      color: Color.fromARGB(255, 138, 138, 138),
                    )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 138, 138, 138))),
                      width: 90,
                      child: Image.network(
                        'https://static.vecteezy.com/system/resources/thumbnails/018/930/698/small/facebook-logo-facebook-icon-transparent-free-png.png',
                        height: 50,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 138, 138, 138))),
                      width: 90,
                      child: Image.network(
                        'https://static-00.iconduck.com/assets.00/google-icon-2048x2048-tmg5cp5v.png',
                        height: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 138, 138, 138))),
                      width: 90,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/512/0/747.png',
                        height: 30,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account"),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
