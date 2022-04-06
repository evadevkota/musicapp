import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Metallica extends StatefulWidget {
  @override
  MetallicaState createState() => MetallicaState();
}

class MetallicaState extends State<Metallica> {
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
                padding: const EdgeInsets.fromLTRB(0, 30, 40, 0),
                child: Text("Metallica",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30)),
                    color: Colors.black,
                    onPressed: () {},
                    child: Text("+",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  )),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                ListTile(
                  leading: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                          width: 100,
                          height: 100,
                          padding: const EdgeInsets.symmetric(vertical: 1.0),
                          alignment: Alignment.center,
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/metallica1.jpeg',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {},
                  title: const Text(
                    'Creeping Death',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
                ListTile(
                  leading: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {},
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        alignment: Alignment.center,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'images/metallica2.jpeg',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {},
                  title: const Text(
                    'Nothing else m',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            ),
          )
        ])));
  }
}
