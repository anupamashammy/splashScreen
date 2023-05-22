
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/login.dart';


class  Screenhome extends StatelessWidget {
  const Screenhome ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text('HOME'),
        actions: [
          IconButton(onPressed:(){
            signoout(context);
          },icon:const Icon(Icons.exit_to_app)),

        ],
      ) ,
      
      body : Column(
            children: [
              const ListTile(
                  title: Text("Audi"),
                  subtitle: Text("Q7"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("lib/screens/assets/audi.jpeg")),
                  trailing: Icon(Icons.star)),
              const ListTile(
                title: Text("BMW"),
                subtitle: Text("R8"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        "lib/screens/assets/download.jpeg")),
              ),
              const ListTile(
                title: Text("maruthi"),
                subtitle: Text(" 800"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        "lib/screens/assets/800.jpeg")),
              ),
              const ListTile(
                title: Text("toyota"),
                subtitle: Text("Inova"),
                leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        "lib/screens/assets/inova.jpeg")),
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'lib/screens/assets/1.jpeg',
                    width: 200,
                    height: 100,
                  ),
                  Image.asset(
                    'lib/screens/assets/2.jpeg',
                    width: 150,
                    height: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'lib/screens/assets/3.jpeg',
                    width: 200,
                    height: 100,
                  ),
                  Image.asset(
                    'lib/screens/assets/4.jpeg',
                    width: 150,
                    height: 100,
                  ),
                ],
              )
            ],
          ),
       );
  }


  signoout(BuildContext ctx)async{

    final _sharedprefs = await SharedPreferences.getInstance();
    await _sharedprefs.clear();

  
   Navigator.of(ctx).pushAndRemoveUntil(
    MaterialPageRoute(builder:(ctx1)=>Screenlogin()), ((route) => false)
   );
  }
}
