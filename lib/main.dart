import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XyloPhone());

class XyloPhone extends StatelessWidget {
  Widget builtKey({@required Color color, @required int noteNumber}) {
    return Expanded(
      child: FlatButton(
        child: Container(
          color: color,
        ),
        padding: EdgeInsets.all(0),
        onPressed: () {
          final player = AudioCache();
          player.play("note$noteNumber.wav");
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylo Phone",
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.red,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    final player = AudioCache();
                    player.play("note1.wav");
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    final player2 = AudioCache();
                    player2.play("note2.wav");
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.yellow,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    final player3 = AudioCache();
                    player3.play("note3.wav");
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    final player4 = AudioCache();
                    player4.play("note4.wav");
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.black12,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    final player5 = AudioCache();
                    player5.play("note5.wav");
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.orange,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Container(
                    color: Colors.deepOrange,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                ),
              ),

               */
              builtKey(color: Colors.red, noteNumber: 1),
              builtKey(color: Colors.blue, noteNumber: 2),
              builtKey(color: Colors.yellow, noteNumber: 3),
              builtKey(color: Colors.orange, noteNumber: 4),
              builtKey(color: Colors.green, noteNumber: 5),
              builtKey(color: Colors.blueAccent, noteNumber: 6),
              builtKey(color: Colors.blueGrey, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
