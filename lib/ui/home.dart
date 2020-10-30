import 'package:flutter/material.dart';

/// Home screen
class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BizCard'),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
        alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar()
          ],
        ),
      ),
    );
  }

  SizedBox _spacer(double _height) {
    return (
      SizedBox (
        height: _height,
      )
    );
  }

  Container _getAvatar() {
    return (
      Container (
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Color.fromRGBO(27,21,53,1),
          borderRadius: BorderRadius.circular(
            35.0
          ),
          border: Border.all(
            color: Colors.blueAccent,
            width: 2
          ),
          image: DecorationImage(
            image: AssetImage('assets/card_logo.png'),
            fit: BoxFit.cover
          )
        ),
      )
    );
  }

  Container _getCard() {
    return (
      Container (
        height: 200,
        width: 300,
        margin: EdgeInsets.all(35),
        decoration: BoxDecoration(
          color: Color.fromRGBO(27,21,53,1),
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.blueAccent,
            width: 2.5
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _spacer(20),
            Text('John Doe',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            _spacer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.language,
                  color: Colors.white,
                  size: 20
                ),
                Text(' John Doe IT. Solutions',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            _spacer(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                  size: 20
                ),
                Text(' john_doe@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 20
                ),
                Text(' #johndoeforever',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )
              ],
            )
          ]
        ),
      )
    );
  }
}
