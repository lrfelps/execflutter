import 'package:exec/screens/calculadora.dart';
import 'package:exec/screens/homepage.dart';
import 'package:flutter/material.dart';

import '../screens/sobre.dart';
import '../screens/homepage.dart';

class MenuComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Text("Meu App",
                  style: TextStyle(color: Colors.pink, fontSize: 20,)
                )
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        HomePage()));
              },
            ),

            ListTile(
              title: Text("Sobre"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        AboutPage()));
              },
            ),
            ListTile(
              title: Text("Calculadora"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>
                        Calculadora()));
              },
            )
          ],
        ),
      );
  }
}