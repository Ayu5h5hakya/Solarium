import 'package:solarium/body_surface_data.dart';
import 'package:solarium/moons_grid.dart';
import 'package:solarium/movie_location_pageview.dart';
import 'package:solarium/repository/solar_repository.dart';
import 'package:solarium/solar_events_pageview.dart';
import 'package:solarium/sun.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'info_tile.dart';
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
                  SolarMember _details = snapshot.data!;
                  return Column(
                    children: [
                      Text(
                        _details.name.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                      BodySurfaceData(
                        //SIZEDOVERFLOWBOX/CONSTRAINEDBOX
                        surfaceTemp: _details.tempInK,
                        radius: _details.radInKm,
                        body: const Sun(),
                      ),
                      const InfoTile(
                        //FITTEDBOX
                        label: 'MOONS',
                        body: MoonsGrid(),
                      ),
                      const InfoTile(
                        //COLUMN-LISTVIEW -> LIMITEDBOX -> EXPANDED
                        label: 'POP CULTURE',
                        body: MovieLocationPageView(),
                      ),
                      const InfoTile(
                        label: 'EVENTS',
                        body: SolarEventsPageView(),
                      ),
                    ],
                  );
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
