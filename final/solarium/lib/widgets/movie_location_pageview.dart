import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MovieLocationPageView extends StatelessWidget {
  const MovieLocationPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Column(
          children: [
            FlutterLogo(),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'data',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
