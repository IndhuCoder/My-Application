import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkPage extends StatefulWidget {
  const LinkPage({super.key});

  @override
  State<LinkPage> createState() => _LinkPage();
}

class _LinkPage extends State<LinkPage> {
  final   textarea = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

 backgroundColor: const Color(0xFFf5e8d8),
  appBar: AppBar(
         toolbarHeight: 115, 
      elevation: 0,
       backgroundColor: const Color(0xFFf5e8d8),
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         
       
           children: [
        IconButton ( onPressed: (){
          
        Navigator.pop(context);
      }, icon: const Icon(Icons.arrow_back_ios,size: 30,color: Color(0xFFaa8242)),
      ),
      
             Padding(
        padding: const EdgeInsets.only(top: 0.14,left: 14),
        child:  Center(
  
          child: SizedBox(
              width: 300,
              height: 700,
              child: Image( image:  AssetImage('assets/TopLogo.png')),
          ),
      )
       ),
           ],

       ),
       ),
       body: Container(
        child: SingleChildScrollView(
         child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
           children:  <Widget>[
            
            // _test("test"),
            
            
             const SizedBox(height: 10),
              FeedbackCard(),
              const SizedBox(height: 30),
              _test("Contact Us On"),
              ContactCard(),
              const SizedBox(height: 30),
              _test("Follow Us On"),
              SocialMediaLinking(),
              
              
              Spacer(),
            ],
         
          
         ),
        ),
       ),

    );
  }
   Widget _test(name){
    
    return Container(
      child: Text(name,style: TextStyle(fontSize: 20,color: Colors.black)),
    );
  }
 
}
class FeedbackCard extends StatelessWidget {
  const FeedbackCard({super.key});

  @override
  Widget build(BuildContext context) {

    return  Padding(
       padding: EdgeInsets.all(14.0),
        child: Card(
      
          elevation: 2,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xfffcba23)
              //Theme.of(context).colorScheme.outline
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
         child:Padding(padding: const EdgeInsets.only(left: 25.0,right: 25.0,bottom: 25.0,top: 25.0),
         
         child:  TextField(
                        // controller: textarea,
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                         decoration: InputDecoration( 
                          suffixIcon: Padding(padding: EdgeInsets.only(right: 10.0,top: 100.0,bottom: 10.00),
                                 child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
               fixedSize: const Size(100, 20),
                primary: Color(0xFFaa8242),
                elevation: 3,
                shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
               )
               ),
                onPressed: (){
                   // checkTextFieldEmptyOrNot();
                
                 },  child: const Text('SEND'),
                            
                            
                            ),
                        ),
                    hintText: "Replay your Feedback here!",
                   enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.black),   
                        ),  
                        focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                     ),             
      
                         )
      
         ),
         ),
        ),
        
        
    );
  }
}
class ContactCard extends StatelessWidget {
  const ContactCard({super.key});
  _launchContactURL() async{
    final Uri url = Uri(
              scheme: 'https', host: 'www.google.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
  

  @override
  Widget build(BuildContext context) {
    return Center(
     
    child: Padding(
     padding: EdgeInsets.all(14.0),
   
      child: Card(

        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xfffcba23)
            //Theme.of(context).colorScheme.outline
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        
        children: [
          Column(
            
             children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15.0),
          child: ElevatedButton(
  onPressed: () => UrlLauncher.launch("tel:+919092963020"),
  child: Icon( 
    Icons.call,
    color: Colors.white,
    size: 14,
  ),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    primary: Color(0xff1b4875),
    padding: EdgeInsets.all(20),
  ),
),
          ),
          Padding(padding: EdgeInsets.only(top:2.0,bottom: 2.0),
          child: Text("Call",style: TextStyle(color: Colors.black),)
          )
             ],
          ),
           Column(
            
             children: <Widget>[
               Padding(padding: EdgeInsets.only(top: 15.0),
          
         child: ElevatedButton(
  onPressed: _launchContactURL ,
  child: Icon( 
    Icons.contacts,
    color: Colors.white,
    size: 14,
  ),
  style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(18.0),),
    primary: Color(0xff1b4875),
    padding: EdgeInsets.all(20),
  ),
),
 ),
  Padding(padding: EdgeInsets.only(top:2.0,bottom: 2.0),
          child: Text("Address Book",style: TextStyle(color: Colors.black),)
          ),
               
             ],
           ),
         
      ],)
      ),
     
    ),
      
     
    
    );
  }
}
class SocialMediaLinking extends StatelessWidget {
  const SocialMediaLinking({super.key});
    _launchFacebookURL() async{
    final Uri url = Uri(
              scheme: 'https', host: 'www.facebook.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
      _launchInstagramURL() async{
    final Uri url = Uri(
              scheme: 'https', host: 'www.instagram.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
       _launchPinterestURL() async{
    final Uri url = Uri(
              scheme: 'https', host: 'www.pinterest.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
         _launchYoutupetURL() async{
    final Uri url = Uri(
              scheme: 'https', host: 'www.youtube.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
  //;
          _launchTwitterURL() async{
    final Uri url = Uri(scheme: 'https', host: 'help.twitter.com', path:'');
                    if (!await launchUrl(url,
                   mode: LaunchMode.externalApplication)) {
                   throw 'Could not launch $url';
        }
   
  }
  Widget _greenCircle(IconData  icon, navagate){
    return            ElevatedButton(
  onPressed: navagate ,
  child: Icon( 
    icon,color: Color(0xff33574d),
    size: 40,
  ),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    primary: Colors.white,
    elevation: 0,
    
  ),
);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
     child: Container(
      width: double.infinity,
      height: 100,

     
    child: Padding(
     padding: EdgeInsets.all(12.0),
  
      child: Card(

        elevation: 2,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Color(0xfffcba23)
            //Theme.of(context).colorScheme.outline
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
     
        ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _greenCircle(Icons.facebook_outlined,_launchFacebookURL),
          _greenCircle(Icons.inbox,_launchInstagramURL), //  
          _greenCircle(Icons.pin_outlined,_launchPinterestURL),
          _greenCircle(Icons.youtube_searched_for_outlined,_launchYoutupetURL),
          _greenCircle(Icons.wb_twilight_outlined,_launchTwitterURL),

          // _greenCircle(Icons.wb_twilight_outlined,_launchTwitterURL(Uri(scheme: 'https', host: 'help.twitter.com', path:''))),

             ],

      ),
      ),
    ), 
      ),
    
    );
  }
}