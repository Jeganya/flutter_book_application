import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_power_application/data_quotes_list.dart';

class DisplayQuotesText extends StatelessWidget {
  final QuotesList appData;
  const DisplayQuotesText({Key? key,required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTextStyle(
        style: TextStyle(
            fontSize: 21.0,
            letterSpacing: 1.5,
            color: Colors.pink.shade900
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  appData.quote,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}