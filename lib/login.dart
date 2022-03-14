import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home:  Login(),
  ));
}
class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'facebook for jd',style: TextStyle(fontSize: 30,color: Colors.white),
        ),
      ),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AlertDialog(
                title: Text('Are you Agree'),
                actions: [
                  TextButton(onPressed: () {
                    
                  }, child: Text('Yes',style:TextStyle(fontSize: 15,color: Colors.green),))
                ],
                
              )
            ],),
        ) ),
      
    );
  }
}