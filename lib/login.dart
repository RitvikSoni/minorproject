import 'package:flutter/material.dart';
import 'package:minor_project/main.dart';
class Login extends StatefulWidget {
  

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    topRight: Radius.circular(70),
                    bottomLeft: Radius.circular(70.0),
                    bottomRight: Radius.circular(70.0))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                 height: MediaQuery.of(context).size.height-10 ,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70.0), topRight: Radius.circular(70),bottomLeft: Radius.circular(70.0),bottomRight: Radius.circular(70.0))),
               child: Column(children: [
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
                              fontSize: 90,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                 SizedBox(height: 200),
                 TextField(
                    
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.login_rounded),
                        hintText: "user ID",
                      ),
        
                 ),
                 TextField( 
                   
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.password_rounded),
                        hintText: "Password",
                        
                      ),
                      obscureText: true,
                 ),

                  SizedBox(
                   height: 25,

                 ),
                 ElevatedButton(onPressed: (){
                    Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyHomeScreen()));
                 }, child: Text('log in',style: TextStyle(color: Colors.grey[850]),),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber[600]),
                          fixedSize:
                              MaterialStateProperty.all(Size.fromWidth(200)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Colors.grey.shade400)))),
                    )
               ],),
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}