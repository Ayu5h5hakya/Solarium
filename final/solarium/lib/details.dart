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
                        surfaceTemp: _details.tempInK,
                        radius: _details.radInKm,
                        body: path,
                      ),
                      path != sun_details
                          ? InfoTile(
                              //FITTEDBOX
                              label: 'MOONS',
                              body: MoonsGrid(
                                data: _details.moons,
                              ),
                            )
                          : const SizedBox(),
                      InfoTile(
                        //COLUMN-LISTVIEW -> LIMITEDBOX -> EXPANDED
                        label: 'POP CULTURE',
                        body: MovieLocationPageView(
                          data: _details.mediaPresence,
                        ),
                      ),
                      InfoTile(
                        label: 'EVENTS',
                        body: SolarEventsPageView(
                          data: _details.events,
                        ),
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
