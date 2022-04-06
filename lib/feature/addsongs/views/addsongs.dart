import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class AddSongs extends StatefulWidget {
  @override
  AddSongsState createState() => AddSongsState();
}

class AddSongsState extends State<AddSongs> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            leading: IconButton(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                icon: Image.asset(
                  'images/menu.png',
                  height: 20,
                  color: Colors.black,
                ),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                }),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 150, 0),
                child: Text("Add Songs",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/about4.jpg'), fit: BoxFit.cover)),
            child: Column(children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 100),
                        child: Column(children: [
                          VxTextField(
                            fillColor: Colors.white,
                            hint: 'Enter Song Title',
                            borderType: VxTextFieldBorderType.roundLine,
                          ),
                          SizedBox(height: 30),
                          VxTextField(
                            fillColor: Colors.white,
                            hint: 'Enter Artist',
                            borderType: VxTextFieldBorderType.roundLine,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 30),
                              child: Row(children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Upload Your Songs",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ])),
                          Container(
                              padding: EdgeInsets.only(left: 10, top: 30),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(),
                                      ),
                                      onPressed: () async {},
                                      padding: const EdgeInsets.all(10.0),
                                      textColor: const Color(0xff4c505b),
                                      child: const Text("Upload",
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                    SizedBox(
                                      height: 49,
                                      width: 80,
                                    ),
                                    RaisedButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        side: const BorderSide(),
                                      ),
                                      onPressed: () async {},
                                      padding: const EdgeInsets.all(10.0),
                                      textColor: const Color(0xff4c505b),
                                      child: const Text("Cancel",
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                  ]))
                        ]))
                  ])
            ])));
  }
}
