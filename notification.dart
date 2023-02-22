import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:bouncing_widget/bouncing_widget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _Notification();
}

class _Notification extends State<Notifications> {
  double _scaleFactor = 1.0;
  _onPressed(BuildContext context) {
    // print("CLICK");
  }
  String? fileName;
  _pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;

    setState(() {
      fileName = result.files.first.name;
    });

    print(fileName);
  }

  XFile? image;

  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdcdbdc),
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _whiteCardForNotification("Notofication"),
            ]),
      ),
    );
  }

  Widget _whiteCardForNotification(heading) {
    return Container(
      height: 580,
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
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: _text("Title", " *")),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: _textField(Colors.white, Color(0xffdcdbdc)),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: _text("Content", " *")),
            Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1.5, color: Color(0xffdcdbdc)),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                )),
             Padding(
                 padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                 child: _text("Select image file", "")),






                 Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),

           child: Container(
             
              decoration: BoxDecoration(
                border: Border.all(
                    // color: Color.fromARGB(255, 117, 115, 115)),
                    color:  Color(0xffdcdbdc),width: 1.5,),
                borderRadius: BorderRadius.all(Radius.circular(3)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  BouncingWidget(
                    scaleFactor: _scaleFactor,
                    onPressed: (() {
                      _pickFile();
                    }),
                    child: Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xffdcdbdc),
                      ),
                      child: Center(
                        child: Text(
                          'Choose File',
                          style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold,
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: fileName == null
                        ? Container(
                            // height: 30,
                            // width: 500,
                                  height: 50,


                            child: Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Row(
                                children: [
                                  Text(
                                    "No files chosen",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 12,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            // height: 30,
                            // width: 180,
                            // decoration: BoxDecoration(
                            //   border: Border.all(
                            //       // color: Color.fromARGB(255, 117, 115, 115)),
                            //       color: Color.fromARGB(
                            //           255, 126, 124, 124)),
                            //   borderRadius:
                            //       BorderRadius.all(
                            //           Radius.circular(3)),
                            // ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    "$fileName",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      // fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
                 ),

            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Text(
                "Notification will be delivered to all the members",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.yellow),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: OutlinedButton.icon(
                icon: Icon(
                  Icons.verified,
                  color: Colors.white,
                  size: 24.0,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(120, 50),
                  primary: Color(0xFF6c45bc),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                label: Text(
                  "Submit",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
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
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: border_side),
          ),
          fillColor: background_color,
          filled: true,
        ),
      ),
    );
  }

  Widget _fileUploadButton() {
    return Row(
      children: [
        ElevatedButton(
          child: Text('UPLOAD FILE'),
          onPressed: () async {
            var picked = await FilePicker.platform.pickFiles();
            if (picked != null) {
              print(picked.files.first.name);
            }
          },
        ),
      ],
    );
  }

  //    Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [

  //    ElevatedButton(
  //     child: Text('UPLOAD FILE'),
  //     onPressed: () async {
  //      Navigator.pop(context);
  //     getImage(ImageSource.gallery);
  //     },
  //   ),
  //    SizedBox(
  //             height: 10,
  //           ),
  //            image != null
  //               ? Padding(
  //                   padding: const EdgeInsets.symmetric(horizontal: 20),
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(8),
  //                     child: Image.file(
  //                       //to show image, you type like this.
  //                       File(image!.path),
  //                       fit: BoxFit.cover,
  //                       width: MediaQuery.of(context).size.width,
  //                       height: 300,
  //                     ),
  //                   ),
  //                 )
  //               : Text(
  //                   "No Image",
  //                   style: TextStyle(fontSize: 20),
  //                 )
  //         ],
  //   );
  // }
}
