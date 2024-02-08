import 'package:flutter/material.dart';
import 'package:time_power_application/data_theme_list.dart';

class DisplayThemeText extends StatelessWidget {
  final ThemeList appData;

  const DisplayThemeText({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.pink.shade900,
          fontSize: 22.0,
          letterSpacing: 1.5,
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink.shade300,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            Center(
              child: Text(
                appData.theme,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
