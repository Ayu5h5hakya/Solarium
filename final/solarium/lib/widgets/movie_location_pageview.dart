import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solarium/models/media_presence.dart';

class MovieLocationPageView extends StatelessWidget {
  final List<MediaPresence> data;
  const MovieLocationPageView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (_, index) {
        final _item = data[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                    _item.imageUrl,
                    height: 120.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${_item.name}',
                          maxLines: 2,
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          '${_item.year}',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      dense: true,
                      title: Text('Cast'),
                      subtitle: Text(_item.cast),
                    ),
                    ListTile(
                      dense: true,
                      title: Text('Genre'),
                      subtitle: Text(_item.genre),
                    ),
                    ListTile(
                      dense: true,
                      title: Text('Director'),
                      subtitle: Text(_item.director),
                    ),
                    ListTile(
                      title: Text(_item.synopsis),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      itemCount: data.length,
    );
  }
}
