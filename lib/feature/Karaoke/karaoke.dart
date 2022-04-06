import 'package:flutter/material.dart';

import 'package:fyp/core/widgets/main_drawer.dart';
import 'package:audioplayers/audioplayers.dart';

class Karaoke extends StatefulWidget {
  @override
  _KaraokeState createState() => _KaraokeState();
}

class _KaraokeState extends State<Karaoke> {
  AudioPlayer audioPlayer = AudioPlayer();
  final AudioCache _audioCache = AudioCache(
    prefix: 'audio/',
    fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP),
  );
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              actions: const [
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 150, 0),
                    child: Text(
                      'Karaoke',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "SanFranciscos",
                          fontSize: 20,
                          decorationColor: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          extendBodyBehindAppBar: true,
          drawer: MainDrawer(),
          body: Container(
              child: SingleChildScrollView(
                  child: Column(children: [
            Container(
                padding: EdgeInsets.fromLTRB(10, 120, 0, 0),
                child: Row(children: [
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Image.asset(
                        'images/maya.jpeg',
                        height: 80,
                      )),
                  Container(
                      padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Maya',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('MAYA.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/batash.webp',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Batash',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('batash.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/aeDilHainMuskil.jpg',
                      height: 90,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Ae dil hain muskil',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('ae_dil_hain_muskil.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/agarTumSath.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Agar Tum Saath Ho',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('Agar_Tum_Saath_Ho.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/BlindingLights.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Blinding Lights',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('Blinding_Lights.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/chukarMereDil.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Chukar Mere',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('chukar_mere_man_ko.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/closer.jpeg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Closer',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('Closer.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/janam.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Janam Janam',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('Janam_Janam.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/kahahola.webp',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Kaha Hola Ghar',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('Kaha_Hola_Ghar_Bara.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/lakhauHajarau.png',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Laakhau Hajarau',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('Laakhau_Hajarau.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/osanam.webp',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('O Sanam',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('O_Sanam.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/perfect.jpeg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Perfect',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('perfect.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/photograph.jpeg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Photograph',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('Photograph.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/phulbhutte.jpeg',
                      height: 40,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Phul Butte Sari',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () =>
                            _audioCache.play('Phul_Butte_Sari.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/SadhaiSadhai.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Sadhai Sadhai',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('Sadhai_Sadhai.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Container(
                color: Colors.white.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                child: Row(children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Image.asset(
                      'images/janam.jpg',
                      height: 80,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                      child: FlatButton(
                        child: Text('Samjhawan',
                            style: TextStyle(
                              fontFamily: "SanFranciscos",
                              fontSize: 25,
                            )),
                        onPressed: () => _audioCache.play('batash.mp3'),
                      )),
                ])),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ])))),
    );
  }
}
