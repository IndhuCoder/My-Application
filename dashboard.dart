import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashBoard extends StatefulWidget {
  DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoard();
}

class _DashBoard extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5e8d8),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
              
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
              
                Padding(padding: new EdgeInsets.all(15.0)),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios,
                      size: 30, color: Color(0xFFaa8242))
                      
                ),
                SizedBox(width: 30,),
               
                 Align (
                 alignment: Alignment.center,
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image(image: AssetImage('assets/TopLogo.png')),
                  ),
                 )
                
              ],
            )
              ),
              
          ]),
        ),
      ),
    );
  }
}
