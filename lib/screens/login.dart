import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:newproject/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:newproject/main.dart';


class Screenlogin extends StatelessWidget {
   Screenlogin({super.key});

final _usernamecontroller= TextEditingController();
final _passwordcontroller= TextEditingController();
  

  final _forkey= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(15.0),
          child:Form(
            key:_forkey ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              TextFormField(
                controller: _usernamecontroller,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:'Username',
                ),
                validator: (value){
                
                    
                if(value==null||value.isEmpty)
                {
                  return 'value is empty';
                }else{
                  return null;
                }
                }
          
              ),
             const  SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration:const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:'password',
                ),
                validator: (value){
                  // if(_isDataMatched)
                  // {
                  //   return null;
                  // }else{
                  //   return 'error';
                  // }
                    
                if(value==null||value.isEmpty)
                {
                  return 'value is empty';
                }else{
                  return null;
                }
          
                
          
                }
              ),
                  const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(onPressed:() {
                if(_forkey.currentState!.validate()){

                  checklogin(context);
                }else{
                  log('Data is empty');
                }
               // checklogin(context);
              },
               icon:const Icon(Icons.check),
                label:const Text('login'),
              )
              ],
            ),
          ),
         ),
        ),
      );
    
  }
 
 void checklogin(BuildContext ctx)async{
  {
    final username=_usernamecontroller.text;
    final password = _passwordcontroller.text;
    if(username == password)
    {
      log('username correct');
      //goto home

final sharedprefs = await SharedPreferences.getInstance();
await sharedprefs.setBool(SAVE_KEY_NAME, true);

// ignore: use_build_context_synchronously
Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder:(ctx1)=>const Screenhome() ));

    }else{

log('username doesnot correct');
    }
  }
}
}