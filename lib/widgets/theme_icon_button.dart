import 'package:flutter/material.dart';
import 'package:flutter_dice/blocs/theme_bloc.dart';
import 'package:flutter_dice/providers/theme_provider.dart';

class ThemeIconButton extends StatelessWidget {

  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {

    final themeBloc = ThemeProvider.of(context);

    return Switch(
      value: isDarkTheme,
      onChanged: (state) => flipTheme(state, themeBloc),
    );
  }

  void flipTheme(bool state, ThemeBloc themeBloc) {
    if (state != isDarkTheme) {
      themeBloc.flipTheme();
      isDarkTheme = state;
    }
  }
}
