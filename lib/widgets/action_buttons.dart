import 'package:flutter/material.dart';
import 'package:flutter_dice/widgets/themed_image.dart';
import 'package:flutter_dice/providers/dice_provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceBloc = DiceProvider.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            onPressed: () => diceBloc.rollDice(),
            tooltip: 'Roll',
            child: ThemedImage('rolling'),
          )
        ],
      ),
    );
  }
}
