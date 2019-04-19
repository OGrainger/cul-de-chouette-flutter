import 'package:flutter/material.dart';
import 'package:flutter_dice/blocs/dice_bloc.dart';
import 'package:flutter_dice/widgets/themed_image.dart';
import 'package:flutter_dice/providers/dice_provider.dart';

class SidesButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final diceBloc = DiceProvider.of(context);

    return Align(
      alignment: Alignment.topCenter,
      child: StreamBuilder(
        stream: diceBloc.sides,
        builder: (context, snapshot) {
          int faces = 6;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFacesButton(6, faces, diceBloc)
            ],
          );
        },
      ),
    );
  }

  FloatingActionButton _buildFacesButton(
    int desiredFaces,
    int currentFaces,
    DiceBloc diceBloc,
  ) {
    return FloatingActionButton(
      backgroundColor: (currentFaces == desiredFaces) ? Colors.orange : null,
      onPressed: () => diceBloc.changeSides(desiredFaces),
      child: ThemedImage('d$desiredFaces'),
    );
  }
}
