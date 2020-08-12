import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50),
      decoration: BoxDecoration(
          color: Colors.pinkAccent, borderRadius: BorderRadius.circular(14.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Stephane Vaillancourt",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
          ),
          Icon(Icons.web_asset),
          Text(
            "TheOrganicBox.ca",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("@StepCrazy27",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800))
            ], // <Widget>[]
          )
        ], // <Widget>[]
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          border: Border.all(color: Colors.lightBlue, width: 5.2),
          image: DecorationImage(
              image: NetworkImage("https://picsum.photos/id/237/200/300"),
              fit: BoxFit.cover)),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  _tapButton() {
    debugPrint("Tapped Button");
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontStyle: FontStyle.italic)),
          centerTitle: true,
          backgroundColor: Colors.amberAccent.shade700,
          actions: [
            IconButton(
                icon: Icon(Icons.email),
                onPressed: () => debugPrint("Email Tapped!")),
            IconButton(
              icon: Icon(Icons.access_alarms),
              onPressed: () => _tapButton(),
            ),
            IconButton(
              icon: Icon(Icons.bluetooth_audio),
              onPressed: () => _tapButton(),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen,
          child: Icon(Icons.call_missed),
          onPressed: () => debugPrint("Quit Pushing me!"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.airplay), title: Text("First")),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_phone), title: Text("Second")),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_location), title: Text("Third")),
          ],
          onTap: (int index) => debugPrint("Tapped item : $index"),
        ),
        backgroundColor: Colors.blueAccent.shade400,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton()

              // for a simple button use InkWell

              // InkWell(
              //   child: Text(
              //     "Tap Me!",
              //     style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   onTap: () => debugPrint("tapped..."),
              // )
            ],
          ),
          // child: Text("Hello Again",
          //     style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 50,
          //         fontStyle: FontStyle.italic)),
        ));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text(
            "Hello Again!",
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: Colors.greenAccent.shade700,
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.pinkAccent, borderRadius: BorderRadius.circular(8.0)),
        child: Text(
          "Button",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
          child: Text(
        "Hello Flutter!",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            fontStyle: FontStyle.italic),
      )),
    );
  }
}
