import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';

class Profile extends StatelessWidget {
  late String value;
//  _ProfileScreenState(this.value);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            key: scaffoldKey,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(80),
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
                        'Profile',
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
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/img3.jpg'),
                        fit: BoxFit.cover)),
                child: Stack(children: [
                  Column(children: [
                    Container(
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                            child: Stack(children: [
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
                                  margin: EdgeInsets.fromLTRB(25, 50, 10, 0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black.withOpacity(.1),
                                            blurRadius: 5,
                                            spreadRadius: 2)
                                      ]),
                                  child: Container(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          /// card header
                                          Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 50, 0, 0),
                                              width: 50,
                                              child: Row(children: [
                                                Spacer(flex: 10),
                                                Spacer(flex: 1)
                                              ])),
                                          SizedBox(height: 50),

                                          Container(
                                              padding: EdgeInsets.only(
                                                  top: 50, left: 50),
                                              child: Row(children: [
                                                Image.asset('images/user.png',
                                                    color: Colors.black,
                                                    height: 20),
                                                SizedBox(width: 30),
                                                Text(' First Name',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ))
                                              ])),

                                          Container(
                                              padding: EdgeInsets.only(
                                                  top: 30, left: 50),
                                              child: Row(children: [
                                                Image.asset('images/user.png',
                                                    color: Colors.black,
                                                    height: 20),
                                                SizedBox(width: 30),
                                                Text(' Last Name',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ))
                                              ])),
                                          Container(
                                              padding: EdgeInsets.only(
                                                  top: 30,
                                                  left: 50,
                                                  bottom: 50),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.email,
                                                  size: 20,
                                                ),
                                                SizedBox(width: 30),
                                                Text('Email',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ))
                                              ])),

                                          /// description
                                        ]),
                                  )),
                              Expanded(
                                  child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(left: 25),
                                      child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          radius: 100,
                                          backgroundImage:
                                              AssetImage('images/user.png'))))
                            ])),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(80, 20, 10, 5),
                            child: FlatButton(
                              minWidth: 150,
                              height: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(70)),
                              color: Colors.black,
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Text("LogOut",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            )),
                      ]),
                    )
                  ])
                ]))));
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed: () {},
    );
    Widget continueButton =
        FlatButton(child: Text("Continue"), onPressed: () {});

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("AlertDialog"),
      content: Text("Are you sure you want to logout "),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
