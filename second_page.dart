import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool isSelectionMode = false;
  bool _isGridMode = false;


  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color(0xFFf5e8d8),
    appBar: AppBar(
        title: const Text('List View'),
         actions: <Widget>[
            if (_isGridMode)
              IconButton(
                icon: const Icon(Icons.grid_on),
                onPressed: () {
                  setState(() {
                    _isGridMode = false;
                  });
                },
              )
            else
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _isGridMode = true;
                  });
                },
              ),
         ]
      ),

      body: ListBuilder(
                isSelectionMode: isSelectionMode,
                onSelectionChange: (bool x) {
                  setState(() {
                    isSelectionMode = x;
                  });
                },
              )
    );
  }
}

class ListBuilder extends StatefulWidget  {
  const ListBuilder({
    super.key,
    required this.isSelectionMode,
    required this.onSelectionChange,
  });

  final bool isSelectionMode;
  final Function(bool)? onSelectionChange;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}
class _ListBuilderState extends State<ListBuilder> {
  final List<String> name = <String>['ajith', 'aravind', 'amrish','ajay','vijay','sanjay','avish','abi','balu ','murali','selva','malai','arun','santh','vivek','saozh'];
  final List<String> no = <String>['1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234','1234'];
  final List<String> amount = <String>['100','200','300','100','200','300','100','200','300','100','200','300','100','200','300','500'];
  final List<String> ins = <String>['100.00','200.00','300.00','100.00','200.00','300.00','100.00','100.00','200.00','300.00','100.00','200.00','300.00','100.00','0','900'];

  @override
  Widget build(BuildContext context) {
   return ListView.separated(
    // padding: const EdgeInsets.all(10),
       itemCount: name.length,
    itemBuilder: (BuildContext context, int index) {
      return Center(
      child: Container(
        width: 350,
        height: 150,
        padding:  const EdgeInsets.all(10.0), 
         child: Card(  
          shape: RoundedRectangleBorder(  
            borderRadius: BorderRadius.circular(15.0),  
          ),
          color: Colors.white, 
           elevation: 10,  
                  child:Column(mainAxisSize: MainAxisSize.min,  children: [
              Row(children: [
        

          Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 15.0),
          child: Text('Name: ${name[index]}'),
          ),
               
               Padding(
            padding: const EdgeInsets.only(left:45,right: 15.0,top:15.0,bottom: 15.0),
          
          child:Text('Phone No: ${no[index]}'),
               )

          
        ],),
             Row(children: [
        

          Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:15.0,bottom: 15.0),
          child: Text('Amount: ${amount[index]}'),
          ),
                Padding(
            padding: const EdgeInsets.only(left:45,right: 15.0,top:15.0,bottom: 15.0),
          
          child:Text('Instalment: ${ins[index]}'),
                )
        ],)
        ],)
         )
      )
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider()
   );
  }

}




// class GridBuilder extends StatefulWidget  {
// }