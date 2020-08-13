import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

int _index = 0;

List quotes = [
  "Never become so involved with something that it blinds you. Never forget where you from; someone will remind you. – DMX, It’s On",
  "Identity is a prison you can never escape, but the way to redeem your past is not to run from it, but to try to understand it, and use it as a foundation to grow. – Jay Z",
  "Jump regardless of the consequence, cause even on the night of the apocalypse, everybody’s an optimist. – Tonedeff, Optimist",
  "The purpose of life is a life with a purpose. So, I’d rather die for a cause, than live a life that is worthless. – Immortal Technique",
  "Rosa Parks sat so Martin Luther could walk. Martin Luther walked so Barack Obama could run. Barack Obama ran so all the children could fly. So I’ma spread my wings, you can meet me in the sky. – Jay Z, My President Is Black",
  "My whole thing is to inspire, to better people, to better myself forever in this thing that we call rap, this thing that we call hip hop. – Kendrick Lamar",
  "Even though you’re fed up, you got to keep ya head up. – 2Pac, Keep Ya Head Up",
  "No law’s gonna change us, we have to change us. – Macklemore and Ryan Lewis, Same Love",
  "It’s only human to express the way you really feel, but that same humanity is my Achilles’ heel. A leopard can’t change his spots and never will; So, I’m forever I’ll, now I can never chill. – Black Thought",
  "And the land of the free is full of free loaders, leave us dead in the street to be your organ donors. – Joey Badass - Land of the Free",
  "this is just a test – Stephane - Comfree",
];

class _WisdomState extends State<Wisdom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 375,
                  height: 200,
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.5)),
                  child: Center(
                    child: Text(
                      quotes[_index % quotes.length],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
            ), // this allows the index to loop based on the lenght
            Divider(
              thickness: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.blueAccent.shade200,
                  icon: Icon(Icons.music_note),
                  label: Text(
                    "Inspire me!",
                    style: TextStyle(fontSize: 18.8, color: Colors.white),
                  )),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    // increment our index/counter by 1
    setState(() {
      _index += 1;
    });
  }
}

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
