import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SolarEventsPageView extends StatelessWidget {
  const SolarEventsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //FRACTIONALLYSIZEDBOX
      children: [
        Card(
          child: Column(
            children: [
              FlutterLogo(),
              Text(
                'Title',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
              Text(
                'Tit saasdasdsas asdasd as asdas das dasd asdad asdasd asdasdasd adasdadasvsdvsdkvmsdl sffsdfsdfs fewafasd efasvsdklvndsv sldv;d  ekfnaslandsklaf llklasdfed-le',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
        UnconstrainedBox(
          child: LimitedBox(
            maxHeight: MediaQuery.of(context).size.height / 2,
            maxWidth: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Card(
                child: Column(
                  children: [
                    FlutterLogo(),
                    Text(
                      'Title',
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                    Text(
                      'Tit saasdasdsas asdasd as asdas das dasd asdad asdasd asdasdasd adasdadasvsdvsdkvmsdl sffsdfsdfs fewafasd efasvsdklvndsv sldv;d  ekfnaslandsklaf llklasdfed-le',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        UnconstrainedBox(
          child: LimitedBox(
            maxHeight: MediaQuery.of(context).size.height / 2,
            maxWidth: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
