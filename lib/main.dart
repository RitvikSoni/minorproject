// ignore: unused_import
import 'dart:ui';
import 'firstpage.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/account.dart';
import 'package:minor_project/firstpage.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        
        
        
        
        
        
        
        
        
        primarySwatch: Colors.blue,
      ),
      home: Firstpage(),
    );
  }
}


class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({ Key? key }) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_52XE4joqGDPjIQ',
      'amount': 25000,
      'name': 'Ritvik',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
     // debugPrint(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Minor project"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/4,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 8),
                    child: Icon(Icons.person, color: Colors.white,size: 50,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: InkWell(
                      
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Account()));
                      },
                      child: Text("8003277660",style: TextStyle(color:Colors.white,fontSize: 25),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Icon(Icons.arrow_right,color: Colors.white,size: 50,),
                  ),
                  
                  
                ],
              ),
            ),
            ListTile(
              title: Text("Order History",style: TextStyle(color: Colors.green,fontSize: 20),),
              leading: Icon(Icons.menu),
            ),
            ListTile(
              title: Text(
                "Help & Support",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              leading: Icon(Icons.call),
            ),
            ListTile(
              title: Text("Updates",style: TextStyle(color: Colors.green,fontSize: 20),),
              leading: Icon(Icons.update,
            )),
            ListTile(
                title: InkWell(
                  onTap: (){
                    showDialog(
                      context: context,
                       builder: (BuildContext context){
                         return AlertDialog(
                            
                            content: Text("Are you sure you want logout ?"),
                            actions: [
                             TextButton(onPressed: (){
                               Navigator.pop(context);
                             }, child: Text("No")),
                             TextButton(onPressed: () {
                               Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Firstpage()));
                             }, child: Text("Yes, Logout"))
                            ],
                          );
                       }
                       
                       );
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
                leading: Icon(
                  Icons.logout,
                )),
            
            
          ],
            
        ),


      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Image.asset("assets/welcomeimage.png"),
          SizedBox(
            height: 80,
          ),
           ElevatedButton(
            onPressed: () {
            openCheckout();
            },
            child: Text(
              'make payment',
              style: TextStyle(color: Colors.grey[850], fontFamily: 'header'),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                fixedSize: MaterialStateProperty.all(Size.fromWidth(200)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.grey.shade400)))),
          ),
        ],
      ),
    );
  }
}