import 'package:demo_application/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'login_demo.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class SigninDemo extends StatefulWidget {
  const SigninDemo({super.key});

  @override
  State<SigninDemo> createState() => _SigninDemo();
}

class _SigninDemo extends State<SigninDemo> { 
  final   nameController = TextEditingController();
  final   mobileController = TextEditingController();
  final   emailController = TextEditingController();
  final   passwordController = TextEditingController();
  final   cpasswordController = TextEditingController();
  late FToast fToast;
  @override
void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
}

_showToast() {
    Widget toast = Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color:Color(0xFFaa8242),
        ),
        child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
            // Icon(Icons.check),
            SizedBox(
            width: 12.0,
            ),
            Text('Text Field is empty, Please Fill All Data'),
        ],
        ),
    );


    fToast.showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: 2),
    );
    
    // fToast.showToast(
    //     child: toast,
    //     toastDuration: Duration(seconds: 2),
    //     positionedToastBuilder: (context, child) {
    //       return Positioned(
    //         child: child,
    //         top: 16.0,
    //         left: 16.0,
    //       );
    //     });
}

 
checkTextFieldEmptyOrNot(){
     String name,mno,email,pv,cpv ;
 
    name = nameController.text ;
    mno = mobileController.text ;
    email = emailController.text ;
    pv = passwordController.text ;
    cpv = cpasswordController.text ;

 
    if(name == '' || mno == '' || email == ''||pv == ''||cpv == '')
    {
      // print('Text Field is empty, Please Fill All Data');
  _showToast();
    }else{
 
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SuccessMessage()),
            );
    }
    
  }


  bool pv = true;
  String istapped = '';
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
     backgroundColor: const Color(0xFFf5e8d8),
     appBar: AppBar(
         toolbarHeight: 100, 
      elevation: 0,
       backgroundColor: const Color(0xFFf5e8d8),
       title: Row(
           children: [
        IconButton ( onPressed: (){
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios,size: 20,color: Color(0xFFaa8242)),
      ),
      Padding(padding: const EdgeInsets.only(left:650.0,right: 15.0,top:15.0,bottom: 15.0),
      child: Center(
          child: SizedBox(
              width: 200,
              height: 500,
              child: Image( image:  AssetImage('assets/TopLogo.png')),
          ),
      )
            
            )

       ],

       ),
       ),

     
      body: Column(
    
        crossAxisAlignment: CrossAxisAlignment.start,        
        children:  <Widget>[
            Padding(padding:  const EdgeInsets.only(
              top: 25.0
            ),
          ),
          Center(
          child: Text("Create An Account",
             style: TextStyle(
              color: Color(0xFF133a30),fontWeight: FontWeight.bold,fontFamily: 'RobotoMono',
              fontSize: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text("Name*",style: TextStyle(color: Color(0xFF133a30),fontSize: 12),textAlign: TextAlign.left),
          ),
   
          Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5.0,bottom: 5.0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(

                  ),
                  enabledBorder: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true
                ),
                controller: nameController,
              ),
            ),
              
             
            Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child:  Text("Mobile*",style: TextStyle(color:  Color(0xFF133a30),fontSize: 12)),
            ),
             
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5.0,bottom: 5.0),
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true
                ),
                controller: mobileController,
              ),
            ),
             Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child:Text("(For International number Prefix your Number With 00 and Country code E.g. 004789012345)",style: TextStyle(color: Color(0xFF577f74),fontSize: 10)),),
              
              Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text("Email*",style: TextStyle(color: Color(0xFF133a30),fontSize: 12)),),
              
             
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5.0,bottom: 5.0),
              child: TextField(
                
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    filled: true
                ),
                controller: emailController,
              ),
            ),
             Padding(
            padding: const EdgeInsets.only(left: 25.0),
              
                
          child: Text("Password*",style: TextStyle(color:  Color(0xFF133a30),fontSize: 12)),),
              
                
               Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5.0,bottom: 5.0),
              child: TextField(
                obscureText: pv,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
                 controller: passwordController,
              ),
               ),
             Padding(
            padding: const EdgeInsets.only(left: 25.0),
             
          child: Text("Confirm Password*",style: TextStyle(color:  Color(0xFF133a30),fontSize: 12)),),
              
               
                  Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0,top:5.0,bottom: 5.0),
              child: TextField(
                obscureText: pv,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    filled: true,
                    suffixIcon: IconButton(icon: Icon(pv?Icons.visibility_off:Icons.visibility), onPressed: () { 
                      setState(() {
                        pv = !pv;
                      });
                     },)
                ),
                keyboardType: TextInputType.visiblePassword,
                 textInputAction: TextInputAction.done,
                 controller: cpasswordController,
              ),
               ),
            
           
            Padding(padding: const EdgeInsets.only(left:25.0,right: 25.0,top:15.0,bottom: 15.0),
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(1600, 50),
              primary: Color(0xFFaa8242),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
              onPressed: (){
                checkTextFieldEmptyOrNot();
              
              },  child: const Text('Create Account'),
              )
            ),
            
                Padding(
              padding:const EdgeInsets.only(left:15.0,right: 15.0,top:25,bottom: 15.0),
              // fillColor : Color(0xFFaa8242),'
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have a account?",style: TextStyle(color: Color(0xFF577f74),fontSize: 18)),
                 
                //  Text("   LOGIN",style: TextStyle(color: Color(0xFFaa8242),fontSize: 16)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
              primary:  const Color(0xFFf5e8d8),
              elevation: 0,),
                    onPressed: () { 
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const LoginDemo()));

                   },
                  child: const Text("   LOGIN",style: TextStyle(color: Color(0xFFaa8242),fontSize: 16)),

                 )
                ]
              )
            ),
        ]
      ),
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
        //     children: [
        //   Padding(padding: const EdgeInsets.only(left: 25.0,right: 25.0),
        //  child: TextField(
        //               controller: textarea,
        //               keyboardType: TextInputType.multiline,
        //               maxLines: 6,
        //               decoration: InputDecoration( 
                        
        //                 suffixIcon: Padding(padding: EdgeInsets.only(right: 25.0,top: 100.0),
        //                  child: ElevatedButton(
        //               style: ElevatedButton.styleFrom(
        //       fixedSize: const Size(100, 20),
        //       primary: Color(0xFFaa8242),
        //       elevation: 3,
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(20),
        //       )
        //     ),
        //       onPressed: (){
        //         // checkTextFieldEmptyOrNot();
              
        //       },  child: const Text('SEND'),
                          
                          
        //                   ),
        //                 ),
        //               border: OutlineInputBorder(),
        //               fillColor: Colors.white,
        //               filled: true,
        //                  hintText: "Replay your Feedback here!",
        //                  focusedBorder: OutlineInputBorder(
        //                     borderSide: BorderSide(width: 1, color: Color(0xFFaa8242))
        //                  )
        //               ),
                     
                       
        //            ),
                   
        //   ),
        // ],
  }
}