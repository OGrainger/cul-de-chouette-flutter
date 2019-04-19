import 'package:flutter/material.dart';
import 'package:flutter_dice/providers/dice_provider.dart';

class DiceDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceBloc = DiceProvider.of(context);

    //double _r = diceBloc.roll as double;

    //Color color = Color.fromARGB(diceBloc.roll.hashCode, diceBloc.roll.hashCode, diceBloc.roll.hashCode, 1);

    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      // BoundText(diceBloc.roll, style: TextStyle(fontSize: 200.0)),
      AnimatedContainer(
        color: Colors.blueAccent,
        duration: const Duration(milliseconds: 500),
        height: 200,
        width: 200,
      )
    ]));
  }
}
