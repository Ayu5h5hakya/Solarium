import 'package:solarium/sun.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black12,
      body: Column(
        children: [
          Text(
            'SUN',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          _BodyRadiusTemp(
            //SIZEDOVERFLOWBOX/CONSTRAINEDBOX
            body: Sun(),
          ),
          _InfoTile(
            //FITTEDBOX
            label: 'MOONS',
            body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemCount: 70,
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              },
            ),
          ),
          _InfoTile(
            //COLUMN-LISTVIEW -> LIMITEDBOX -> EXPANDED
            label: 'POP CULTURE',
            body: PageView(
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
            ),
          ),
          _InfoTile(
            label: 'EVENTS',
            body: PageView(
              //FRACTIONALLYSIZEDBOX
              children: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BodyRadiusTemp extends StatelessWidget {
  final Widget body;
  const _BodyRadiusTemp({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0,
        right: 20.0,
      ),
      padding: const EdgeInsets.all(10.0),
      color: Colors.grey[800],
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 40,
          ),
          Container(
            color: Colors.green,
            width: 40,
          ),
          Container(
            color: Colors.red,
            width: 40,
          ),
        ],
      ),
    );
  }
}

class _BodyTemp extends StatefulWidget {
  const _BodyTemp({Key? key}) : super(key: key);

  @override
  __BodyTempState createState() => __BodyTempState();
}

class __BodyTempState extends State<_BodyTemp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'TEMP',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        Text(
          '5200K',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String label;
  final Widget body;
  const _InfoTile({
    Key? key,
    required this.label,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.grey[800],
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.only(top: 10.0),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      onTap: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (_) => body,
        );
      },
    );
  }
}
