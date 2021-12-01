// Copyright (c) 2021 Razeware LLC

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical
// or instructional purposes related to programming, coding, application
// development or information technology.  Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing, creation of
// derivative works, or sale is expressly withheld.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import 'constants.dart';
import 'widgets/body_surface_data.dart';
import 'widgets/moons_grid.dart';
import 'widgets/movie_location_pageview.dart';
import 'repository/solar_repository.dart';
import 'widgets/solar_events_pageview.dart';
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
