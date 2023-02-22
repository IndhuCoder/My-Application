import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MaterialRates extends StatefulWidget {
  const MaterialRates({super.key});

  @override
  State<MaterialRates> createState() => _MaterialRates();
}

class _MaterialRates extends State<MaterialRates> {
  String? _radioValue; //Initial definition of radio button value
  String? choice;
  var _selectAll = false;
  var _gold = false;
  var _silver = false;
  var _platinum = false;

  void radioButtonChanges(value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case 'buy':
          choice = value;
          break;
        case 'sell':
          choice = value;
          break;
      }
      debugPrint(choice); //Debug the choice in console
    });
  }

  // int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffdcdbdc),
        body: Container(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              _whiteCardRorRates("Add Material Rates"),
            ]))));
  }

  Widget _whiteCardRorRates(heading) {
    return Container(
      height: 950,
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
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                    child: _text("Select Rate Type", "*")),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 'buy',
                        groupValue: _radioValue,
                        onChanged: radioButtonChanges,
                      ),
                      Text("Buy"),
                      Radio(
                        value: 'sell',
                        groupValue: _radioValue,
                        onChanged: radioButtonChanges,
                      ),
                      Text("Sell")
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Divider(color: Color(0xffdcdbdc)),
            ),
            Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Checkbox(
                        value: _selectAll,
                        onChanged: (bool? value) {
                          setState(() => _gold = value!);
                          setState(() => _silver = value!);
                          setState(() => _selectAll = value!);
                          setState(() => _platinum = value!);
                        },
                      ),
                      Text('Select All'),
             
              
                    ],
                  ),
                ),
                               SizedBox(
              height: 30,
              width: 420,
             ),
              SizedBox(
              height: 30,
              width: 420,
             ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      child: Row(children: [
                        Checkbox(
                          value: _gold,
                          onChanged: (bool? value) {
                            setState(() => _gold = value!);
                          },
                        ),
                        Text('Select the checkBox to add the Gold Rate. '),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Checkbox(
                          value: _silver,
                          onChanged: (bool? value) {
                            setState(() => _silver = value!);
                          },
                        ),
                        Text('Select the checkBox to add the Silver Rate. '),
                      ]),
                    ),
                    Container(
                      child: Row(children: [
                        Checkbox(
                          value: _platinum,
                          onChanged: (bool? value) {
                            setState(() => _platinum = value!);
                          },
                        ),
                        Text('Select the checkBox to add the Platinum Rate. '),
                      ]),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 50),
                          primary: Color(0xFF6c45bc),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Gold",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 50),
                          primary: Color(0xFF6c45bc),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Silver",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(300, 50),
                          primary: Color(0xFF6c45bc),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Platinum",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Divider(color: Color(0xffdcdbdc)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text("Rate Per Gram", " *"),
                      // _textField(Co
                      // lors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child:
                          _textField(Colors.white, Color(0xffdcdbdc), "5150"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("Rate Per Gram", " *"),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(Colors.white, Color(0xffdcdbdc), "70"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text(
                        "Rate Per Gram",
                        " *",
                      ),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child:
                          _textField(Colors.white, Color(0xffdcdbdc), "4000"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text("GST", ""),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "154.50"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
                      child: _text("GST", ""),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "2.10"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text("GST", ""),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "120.00"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text("Rate with GST", ""),
                      // _textField(Colors.white)
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "5304.5"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 15.0, bottom: 10.0),
                      child: _text("Rate with GST", ""),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "72.1"),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                      child: _text("Rate with GST", ""),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0),
                      child: _textField(
                          Color(0xffe8ecef), Color(0xffdcdbdc), "4120"),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 50,
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
                      "Add",
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

  Widget _textField(background_color, border_side, hint) {
    return Container(
      width: 320,
      height: 40,
      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            hintText: hint,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: border_side),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1.5, color: border_side),
            ),
            fillColor: background_color,
            filled: true,
            labelStyle: TextStyle(height: 5, fontWeight: FontWeight.bold)),
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
}
