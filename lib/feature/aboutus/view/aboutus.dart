import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';
import 'package:fyp/core/widgets/main_drawer.dart';

class contact extends StatelessWidget {
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
                padding: EdgeInsets.fromLTRB(0, 25, 180, 0),
                child: Text(
                  'About',
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
      bottomNavigationBar: ContactUsBottomAppBar(
        companyName: 'Eva Devkota',
        textColor: Colors.white,
        backgroundColor: Colors.black,
        email: 'devkotaeva@gmail.com',
        // textFont: 'Sail',
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/img4.jpg'), fit: BoxFit.cover)),
        child: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.teal.shade900,
            logo: AssetImage('images/me.jpg'),
            email: 'evadevkota@gmail.com',
            companyName: '',
            companyColor: Colors.white,
            dividerThickness: 2,
            phoneNumber: '+917818044300',
            githubUserName: 'Lyrics and Chords',
            tagLine: 'Flutter Developer',
            taglineColor: Colors.teal.shade100,
            twitterHandle: 'SubinaChuni',
            instagram: 'subina.chuni.magar',
            facebookHandle: 'Subina Magar'),
      ),
    );
  }
}
