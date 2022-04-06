import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';

class Mysongs extends StatefulWidget {
  const Mysongs({Key? key}) : super(key: key);

  @override
  State<Mysongs> createState() => _MysongsState();
}

class _MysongsState extends State<Mysongs> {
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
            actions: const [
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 25, 150, 0),
                  child: Text(
                    'Dashboard',
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
        body: Container(color: Colors.black, child: Column()));
  }
}
