
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/home.dart';
import 'package:newproject/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screenplash extends StatefulWidget{
  
  const Screenplash ({Key? key}) : super(key: key);

  @override
  State<Screenplash> createState() => _ScreenplashState();
}

class _ScreenplashState extends State<Screenplash> {
 @override
  void initState() {
   //gotologin();
   checkUserloggedIn();
  // navigation();
    super.initState();
  }

@override
  
Widget build(BuildContext context){
  return Scaffold(
    body:Center(
      child:Image.asset('lib/screens/assets/1917994.jpg',
      height: 600,),
  

      ),
  );
 
  
}

 Future<void> gotologin()async{
   await Future.delayed(Duration(seconds: 3));
  Navigator.of(context).pushReplacement
  (MaterialPageRoute
  (builder: (context) => Screenlogin(),
  ));

}

Future<void>checkUserloggedIn() async{
  final _sharedprefs =await SharedPreferences.getInstance();
 final _userloggedin = _sharedprefs.getBool(SAVE_KEY_NAME);
 if(_userloggedin ==null)
{
gotologin();
}else{
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(ctx1)=>Screenhome())
  );
}

}
}