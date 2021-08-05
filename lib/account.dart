import 'package:flutter/material.dart';
import 'package:minor_project/address.dart';

class Account extends StatelessWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
               appBar: AppBar(
                 title: Text("Account"),
               ),    
               body: SingleChildScrollView(
                 child: SafeArea(
                   child: Column(
                     children: [SizedBox(height: 40,),
                       Container(
                         width: MediaQuery.of(context).size.width,
                        //  height: MediaQuery.of(context).size.height,
                         child: Column(
                           children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage('https://www.backgroundsy.com/file/preview/user-icon.jpg'),
                              radius: 90,
                            
                            ),
                            SizedBox(height: 25,),
                             Text("8003277660",style: TextStyle(color: Colors.black54,fontSize: 30,fontWeight: FontWeight.bold),),
                            SizedBox(height: 25,),

                           ],

                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left:20.0,right: 20),
                         child: TextField(
                           decoration: InputDecoration(
                             hintText: "Name",
                             hintStyle: TextStyle(fontSize: 20),
                             prefixIcon: Icon(Icons.person,size: 30,),
                             suffixIcon: Icon(Icons.edit,size: 30,),
                             border: InputBorder.none
                           ),
                         ),
                       ),
                       SizedBox(height: 15,),
                       Padding(
                             padding: const EdgeInsets.only(left: 20.0, right: 20),
                             child: TextField(
                               decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 30,
                      ),
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 30,
                      ),
                      border: InputBorder.none),
                             ),
                           ),
                           SizedBox(height:30),
                 
                           InkWell(
                             onTap: () {
                               Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Address()));
                             },
                             child: Container(
                               width: 200,
                               height: 40,
                               decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)
                    
                               ),
                               child: Center(child: Text("Add Address",style: TextStyle(color: Colors.blue,fontSize: 20),)),
                               
                               ),
                           )
                     ],
                   ),
                 ),
               ),  
    );
  }
}