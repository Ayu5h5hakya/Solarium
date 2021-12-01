import 'package:solarium/constants.dart';
import 'package:solarium/widgets/body_surface_data.dart';
import 'package:solarium/widgets/moons_grid.dart';
import 'package:solarium/widgets/movie_location_pageview.dart';
import 'package:solarium/repository/solar_repository.dart';
import 'package:solarium/widgets/solar_events_pageview.dart';
import 'package:solarium/sun.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/info_tile.dart';
import 'models/solar_member.dart';

class BodyDetail extends StatelessWidget {
  final String path;
  BodyDetail({Key? key, required this.path}) : super(key: key);
  final SolarRepository _solarRepository = SolarRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/background.jpg'),
          ),
        ),
        child: FutureBuilder<SolarMember>(
            future: _solarRepository.getInfoForMember(path),
            builder: (_, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.data != null) {
                  return OrientationBuilder(builder: (_, orientation) {
                    if (orientation == Orientation.portrait) {
                      return _DetailPortrait(
                          path: path, member: snapshot.data!);
                    } else {
                      return _DetailLandscape(
                          path: path, member: snapshot.data!);
                    }
                  });
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }
}

class _DetailPortrait extends StatelessWidget {
  final String path;
  final SolarMember member;
  const _DetailPortrait({Key? key, required this.path, required this.member})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Text(
          member.name.toUpperCase(),
          style: const TextStyle(
            fontSize: 40.0,
            color: Colors.white,
          ),
        ),
        BodySurfaceData(
          surfaceTemp: member.tempInK,
          radius: member.radInKm,
          body: path,
        ),
        path != sun_details
            ? InfoTile(
                //FITTEDBOX
                label: 'MOONS',
                body: MoonsGrid(
                  data: member.moons,
                ),
              )
            : const SizedBox(),
        InfoTile(
          //COLUMN-LISTVIEW -> LIMITEDBOX -> EXPANDED
          label: 'POP CULTURE',
          body: MovieLocationPageView(
            data: member.mediaPresence,
          ),
        ),
        InfoTile(
          label: 'EVENTS',
          body: SolarEventsPageView(
            data: member.events,
          ),
        ),
      ],
    );
  }
}

class _DetailLandscape extends StatelessWidget {
  final String path;
  final SolarMember member;
  const _DetailLandscape({Key? key, required this.path, required this.member})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Text(
              member.name.toUpperCase(),
              style: const TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            BodySurfaceData(
              surfaceTemp: member.tempInK,
              radius: member.radInKm,
              body: path,
            ),
          ],
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              path != sun_details
                  ? InfoTile(
                      //FITTEDBOX
                      label: 'MOONS',
                      body: MoonsGrid(
                        data: member.moons,
                      ),
                    )
                  : const SizedBox(),
              InfoTile(
                //COLUMN-LISTVIEW -> LIMITEDBOX -> EXPANDED
                label: 'POP CULTURE',
                body: MovieLocationPageView(
                  data: member.mediaPresence,
                ),
              ),
              InfoTile(
                label: 'EVENTS',
                body: SolarEventsPageView(
                  data: member.events,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
