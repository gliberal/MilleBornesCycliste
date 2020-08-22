import 'package:MilleBornesCycliste/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  final String title;
  MyGame({Key key, this.title}) : super(key: key);

  @override
  _MyGameState createState() => new _MyGameState();
}

class _MyGameState extends State<MyGame> {
  Game _currentGame = new Game();

  void _incrementCounter(int pDistance) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _currentGame.player.progress += pDistance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          //Center(child: Image.asset('assets/images/background.jpg')),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/motif.png',
                  height: 150,
                ),
                Text(
                  _currentGame.getPlayerProgress(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Table(
                border: TableBorder.all(
                    color: Colors.black26, style: BorderStyle.none),
                children: [
                  TableRow(children: [
                    TableCell(child: Center(child: Text('Carte 1'))),
                    TableCell(child: Center(child: Text('Carte 2'))),
                    TableCell(child: Center(child: Text('Carte 3'))),
                    TableCell(child: Center(child: Text('Carte 4'))),
                    TableCell(child: Center(child: Text('Carte 5'))),
                    TableCell(child: Center(child: Text('Carte 6'))),
                    TableCell(child: Center(child: Text('Carte 7'))),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[0].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[0].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[1].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[1].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[2].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[2].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[3].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[3].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[4].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[4].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[5].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[5].getUri())))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(_currentGame.player.hand[6].distance),
                              child: LimitedBox(
                                  maxHeight: 50,
                                  child: Image.asset(
                                      _currentGame.player.hand[6].getUri())))),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
