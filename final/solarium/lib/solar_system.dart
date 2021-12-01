import 'package:flutter/widgets.dart';
import 'package:solarium/constants.dart';
import 'package:solarium/planets/earth.dart';
import 'package:solarium/planets/jupiter.dart';
import 'package:solarium/planets/mars.dart';
import 'package:solarium/planets/mercury.dart';
import 'package:solarium/planets/neptune.dart';
import 'package:solarium/planets/pluto.dart';
import 'package:solarium/planets/saturn.dart';
import 'package:solarium/planets/uranus.dart';
import 'package:solarium/planets/venus.dart';
import 'package:solarium/sun.dart';
import 'package:solarium/utils.dart';
import 'package:solarium/widgets/astro_page_indicator.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  _SolarSystemState createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {
  int _currentPlanet = 3;
  final PageController _controller = PageController(initialPage: 3);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            _ProportionedBody(
              path: sun_details,
              body: Sun(
                size: 250,
              ),
            ),
            _ProportionedBody(
                body: Mercury(
                  size: 100,
                ),
                path: mercury_details),
            _ProportionedBody(
                body: Venus(
                  size: 100,
                ),
                path: venus_details),
            _ProportionedBody(
                body: Earth(
                  size: 120,
                ),
                path: earth_details),
            _ProportionedBody(
                body: Mars(
                  size: 110,
                ),
                path: mars_details),
            _ProportionedBody(
                body: Jupiter(
                  size: 180,
                ),
                path: jupiter_details),
            _ProportionedBody(
                body: Saturn(
                  size: 210,
                ),
                path: saturn_details),
            _ProportionedBody(
                body: Neptune(
                  size: 150,
                ),
                path: neptune_details),
            _ProportionedBody(
                body: Uranus(
                  size: 150,
                ),
                path: uranus_details),
            _ProportionedBody(
                body: Pluto(
                  size: 90,
                ),
                path: pluto_details),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: AstroPageIndicator(
            currentPlanet: _currentPlanet,
            onPageChanged: (planet) {
              _controller.animateToPage(planet,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn);
            },
          ),
        ),
      ],
    );
  }
}

class _ProportionedBody extends StatelessWidget {
  final Widget body;
  final String path;
  const _ProportionedBody({Key? key, required this.body, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        child: body,
        onTap: () {
          context.explore(path);
        },
      ),
    );
  }
}
