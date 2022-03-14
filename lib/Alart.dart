import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    
    debugShowCheckedModeBanner: false,
    title: 'facebook login',
    home: MyDialog(),
  ));
}
class MyDialog extends StatefulWidget {
  const MyDialog({ Key? key }) : super(key: key);

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add_a_photo_outlined),),
      backgroundColor: Colors.orange[400],
      body: Center(
        child: Column(
        
          children: <Widget>[
            
            AlertDialog(
              title: Text('Agree ?',style: TextStyle(color: Colors.green),),
              content: Text(' Are you Agree ?'),
              actions: <Widget>[
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Yes',style:TextStyle(color: Colors.green),)),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('No',style: TextStyle(color: Colors.red),))
              ],
            ),
            CupertinoAlertDialog(
               title: Text('Acpect',style:TextStyle(color: Colors.green) ,),
               content: Text('do you Acpect'),
               actions: <Widget>[
                 TextButton(onPressed: (){
                   Navigator.pop(context);
                 }, child: Text('NO',style: TextStyle(color: Colors.red),)),
                 TextButton(onPressed: (
                   
                 ){
                   Navigator.pop(context);
                 }, child: Text('YES',style: TextStyle(color: Colors.green),))
               ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        
        child: Column(
            children: <Widget>[
              Text(''),
              Text('satings.. ?',style: TextStyle(fontSize: 20),),
              SizedBox(height: 15,),
               Text('advance',style: TextStyle(fontSize: 18,color: Colors.green),),
              Text('Home ?',style: TextStyle(fontSize: 20,color: Colors.blue),),
              SizedBox(height: 15,),
               Text('contract',style: TextStyle(fontSize: 18,color: Colors.pink),),
              Text('Inbox ?',style: TextStyle(fontSize: 20,color: Colors.yellow[400]),),
              SizedBox(height: 15,),
               Text('camera sattings',style: TextStyle(fontSize: 18,color: Colors.purple),),
              Text('photos?',style: TextStyle(fontSize: 20,color: Colors.red),),
              SizedBox(height: 15,),
               Text('email',style: TextStyle(fontSize: 18,color: Colors.transparent),),
               TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(color: Colors.green),)),
               Row(
                 children: <Widget>[
                    TextButton(onPressed: (){}, child: Text('Yes',style: TextStyle(color: Colors.green),)),
                    TextButton(onPressed: (){}, child: Text('NO',style: TextStyle(color: Colors.red),)),
                  TextButton(onPressed: (){}, child: Text('Yes jd chowdhury',style: TextStyle(color:Colors.purple),) ),
                  TextButton(onPressed: (){}, child: Text('No jd chowdhury',style: TextStyle(color: Colors.blueGrey),))
                 ],
                 
        
               ),
               TextButton(onPressed: (){}, child: Text('NO',style: TextStyle(color: Colors.red),)),
              
            ],
          ),
      ),
      appBar: AppBar(
        title:Text('facebook login',style: TextStyle(fontSize: 25,color: Colors.white),),
        centerTitle: true,),
      
    );
  }
}