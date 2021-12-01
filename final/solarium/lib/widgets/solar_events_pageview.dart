import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solarium/models/event.dart';

class SolarEventsPageView extends StatelessWidget {
  final List<Event> data;
  const SolarEventsPageView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (_, index) {
        final _item = data[index];
        return UnconstrainedBox(
          child: LimitedBox(
            maxHeight: MediaQuery.of(context).size.height / 2,
            maxWidth: MediaQuery.of(context).size.width,
            child: FractionallySizedBox(
              widthFactor: 0.75,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        _item.launchDate,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        _item.name,
                        style: TextStyle(fontSize: 40, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        _item.description,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
