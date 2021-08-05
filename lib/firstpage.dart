import 'package:flutter/material.dart';
import 'package:minor_project/login.dart';

import 'register.dart';
class Firstpage extends StatefulWidget {
  

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
          backgroundColor: Colors.blue,
          body: Container(
            height: MediaQuery.of(context).size.height-30,
            // width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(220.0),
                    )),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    SizedBox(height: 100),
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white,
                    )),
                    Container(
                      width: 30,
                      height: 30,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white,
                    )),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      // color: Colors.grey[400],
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          'Go',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 110,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                     Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        )),
                    Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        )),
                   
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
                    style:
                        TextStyle(color: Colors.grey[850], fontFamily: 'header'),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[600]),
                      fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey.shade400)))),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text(
                    'Register',
                    style:
                        TextStyle(color: Colors.grey[850], ),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.amber[600]),
                      fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey.shade400)))),
                ),
                SizedBox(
                  height: 100,
                ),
             
                
              ],
            ),
          )),
   );
  }
}