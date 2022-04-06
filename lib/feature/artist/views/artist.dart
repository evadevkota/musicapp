import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';
import 'package:fyp/feature/artist/views/chords/behemoth.dart';
import 'package:fyp/feature/artist/views/chords/bts.dart';
import 'package:fyp/feature/artist/views/chords/evanensce.dart';
import 'package:fyp/feature/artist/views/chords/exo.dart';
import 'package:fyp/feature/artist/views/chords/lambofgod.dart';
import 'package:fyp/feature/artist/views/chords/linkinpark.dart';
import 'package:fyp/feature/artist/views/chords/metallica.dart';
import 'package:fyp/feature/artist/views/chords/nepathya.dart';
import 'package:fyp/feature/artist/views/chords/pantera.dart';

class Artist extends StatefulWidget {
  @override
  ArtistState createState() => ArtistState();
}

class ArtistState extends State<Artist> {
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
                padding: const EdgeInsets.fromLTRB(0, 30, 80, 0),
                child: Text("Lyrics and chords",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ),
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
                                  'images/exo.jpg',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EXO()),
                    );
                  },
                  title: const Text(
                    'EXO',
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
                                'images/metallica.webp',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Metallica()),
                    );
                  },
                  title: const Text(
                    'Metallica',
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
                                  'images/behemoth.jpeg',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Behemoth()),
                    );
                  },
                  title: const Text(
                    'Behemoth',
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Behemoth()),
                        );
                      },
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
                                'images/bts.webp',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bts()),
                    );
                  },
                  title: const Text(
                    'BTS',
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
                                  'images/evanensce.jpeg',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Evanensce()),
                    );
                  },
                  title: const Text(
                    'Evanensce',
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LOG()),
                        );
                      },
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
                                'images/lambofgod.jpeg',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LOG()),
                    );
                  },
                  title: const Text(
                    'Lamb Of God',
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
                                  'images/linkinpark.jpeg',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => linkinpark()),
                    );
                  },
                  title: const Text(
                    'Linkin Park',
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nepathya()),
                        );
                      },
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
                                'images/Nepathya.jpeg',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Nepathya()),
                    );
                  },
                  title: const Text(
                    'Nepathya',
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
                                  'images/PANTERA.webp',
                                ),
                              ),
                            ),
                          ))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pantera()),
                    );
                  },
                  title: const Text(
                    'Pantera',
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
                                'images/metallica.webp',
                              ),
                            ),
                          ),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Metallica()),
                    );
                  },
                  title: const Text(
                    'Metallica',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}
