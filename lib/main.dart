import 'package:flutter/material.dart';

void main() => runApp(PianoApp());

class PianoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            PianoButton(
              onKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButton(
              onKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
            PianoButtonWithSuperKey(
              onMainKeyPress: () {},
              onSuperKeyPress: () {},
            ),
          ],
        )
      ),
    );
  }
}

class PianoButtonWithSuperKey extends StatelessWidget {
  final Function onMainKeyPress;
  final Function onSuperKeyPress;

  const PianoButtonWithSuperKey({super.key, required this.onMainKeyPress, required this.onSuperKeyPress});



  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Padding(
              padding:const EdgeInsets.only(right: 8.0,bottom: 2.0,top: 2.0),

            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: (){onMainKeyPress();}, child: null,
              ),
            )
            ),
            Positioned(
                top: -25.0,
                child: Container(
                  width: 250.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                    onPressed: (){onSuperKeyPress();}, child: null,),
                ),

            )
          ],
        ),
    );
  }
}

class PianoButton extends StatelessWidget {
  final Function onKeyPress;

  const PianoButton({super.key, required this.onKeyPress});


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
          padding:const EdgeInsets.only(right: 8.0,bottom: 2.0,top: 2.0),

          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
              onPressed: (){onKeyPress();}, child: null,
            ),
          )
      ),
    );
  }
}

