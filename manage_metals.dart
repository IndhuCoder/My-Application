import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ManageMetals extends StatefulWidget {
  const ManageMetals({super.key});

  @override
  State<ManageMetals> createState() => _ManageMetals();
}

class _ManageMetals extends State<ManageMetals> {
  String selectedValue = "Gold";
  var items = [
    'Gold',
    'Silver',
    'Platinum',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdcdbdc),
        body: Container(
          child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _whiteCardForAdd("Add Quantity of Metal", "Add"),
                  _whiteCardForRemove("Remove Quantity of Metal", "Remove")
                ],
              )),
        ));
  }

  Widget _whiteCardForAdd(heading, button) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
        Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          heading,
          style: TextStyle(fontSize: 20, color: Colors.red),
        ),
      ),

      // First Row

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                child: _text("Select Metal", " *"),
                // _textField(Co
                // lors.white)
              ),


              Padding(
                padding: EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 20.0),
                child: Container(
                  width: 300.0,
                  height: 50,

                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                        ), fillColor: Colors.white,
                        filled: true,
                ),
                        value: selectedValue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                        return DropdownMenuItem(
                        value: items,
                        child: Text(items,style: TextStyle(fontSize: 12),),
                        );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        }
                  ),
              ),
              ),


                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: _text("Add Quantity(Gms) ", " *"),
                    // _textField(Colors.white)
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: _textField(
                        Colors.white, Color(0xffdcdbdc)),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: _text("Cost per grams", " *"),
                    // _textField(Colors.white)
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: _textField(
                        Colors.white, Color(0xffdcdbdc)),
                  ),
                ],
              ),
            ],
          ),

//Second Row

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: _text("Total without Gst", ""),
                    // _textField(Colors.white)
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: _textField(Color(0xffe8ecef),
                        Color(0xffdcdbdc)),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: _text("GST ", ""),
                    // _textField(Colors.white)
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: _textField(Color(0xffe8ecef),
                        Color(0xffdcdbdc)),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                    child: _text("Total with GST", ""),
                    // _textField(Colors.white)
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, bottom: 20.0),
                    child: _textField(Color(0xffe8ecef),
                        Color(0xffdcdbdc)),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(30, 50),
                    primary: Color(0xFF6c45bc),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    button,
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),);
  }

  Widget _whiteCardForRemove(heading, button) {
    return Container(
      height: 400,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                heading,
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),

            // First Row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("Select Metal", " *"),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: Container(
                        width: 300.0,
                        height: 50,

                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                              ), fillColor: Colors.white,
                              filled: true,
                            ),
                            value: selectedValue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items,style: TextStyle(fontSize: 12),),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            }
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("Enter Quantity(Gms) ", " *"),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Colors.white, Color(0xffdcdbdc)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("Rate per grams", " *"),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Colors.white, Color(0xffdcdbdc)),
                    ),
                  ],
                ),
              ],
            ),

//Second Row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("Total", ""),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(Color(0xffe8ecef),
                          Color(0xffdcdbdc)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                  width: 330,
                ),
                SizedBox(
                  height: 30,
                  width: 330,
                ),


              ],
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(100, 50),
                      primary: Color(0xFF6c45bc),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      button,
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _text(heading, must) {
    return Container(
      child: Row(
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            must,
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        ],
      ),
    );
  }

  Widget _textField(background_color, border_side) {
    return Container(
      width: 300,
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ), fillColor: background_color,
          filled: true,
        ),
      ),
    );
  }
}
