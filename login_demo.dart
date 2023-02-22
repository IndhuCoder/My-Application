
import 'package:flutter/material.dart';
/**
 * Author: Indhira Thiruvalluvan P
 *
 * Date:
 *
 */

import 'manage_metals.dart';
class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  State<LoginDemo> createState() => _LoginDemo();
}
class _LoginDemo extends State<LoginDemo> {
  bool pv = true;
  String istapped = '';
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xFFf5e8d8),
        body: Center(
          child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 60.0
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 200,
                      height: 150,
                      child:  Image(
                          image:       AssetImage('assets/TopLogo.png')
                      ),
                    ),
                  ),
                ),
                Text("Login",
                  style: TextStyle(
                    color: Color(0xFF133a30),fontWeight: FontWeight.bold,fontFamily: 'RobotoMono',
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 15.0),
                    // padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'MOBILE/E-MAIL',
                          fillColor: Colors.white,
                          filled: true
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 15.0),
                    // padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      obscureText: pv,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'PASSWORD',
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: IconButton(icon: Icon(pv?Icons.visibility_off:Icons.visibility), onPressed: () {
                            setState(() {
                              pv = !pv;
                            });
                          },)
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
                SizedBox(
                  width: 600,
                  child: Padding(padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 15.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(1600, 50),
                            primary: Color(0xFFaa8242),
                            elevation: 3

                        ),

                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SuccessMessage()),
                          );
                        },  child: const Text('Login'),
                      )
                  ),
                ),
                Text("FORGOT PASSWORD?",style: TextStyle(color: Color(0xFFaa8242),fontSize: 16)),
                Padding(
                    padding:const EdgeInsets.only(left:15.0,right: 15.0,top:25,bottom: 15.0),
                    // fillColor : Color(0xFFaa8242),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("NOT A MEMBER?",style: TextStyle(color: Color(0xFF577f74),fontSize: 18)),

                          Text("  REGISTER",style: TextStyle(color: Color(0xFFaa8242),fontSize: 16))
                        ]
                    )
                ),
                Container(
                  child: _widgetOptions.elementAt(_selectedIndex),
                )


              ]
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined),label: '')
        ],
          backgroundColor: Color(0xFFf5e8d8),
          selectedItemColor:  Color(0xFFaa8242),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        )



    );

  }
}
class SuccessMessage extends StatelessWidget {
  const SuccessMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5e8d8),
      appBar: AppBar(
        title: const Text('Congrats'),
      ),

      body: Center(
        child: Column(
            children: <Widget>[

              const Text("Welcome!",style: TextStyle(fontSize: 25,color: Colors.green),),
              Padding(padding: const EdgeInsets.only(left:15.0,right: 25,top:15.0,bottom: 15.0),

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go back!'),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

