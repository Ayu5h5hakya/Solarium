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

import 'package:flutter/widgets.dart';
import 'constants.dart';
import 'planets/earth.dart';
import 'planets/jupiter.dart';
import 'planets/mars.dart';
import 'planets/mercury.dart';
import 'planets/neptune.dart';
import 'planets/pluto.dart';
import 'planets/saturn.dart';
import 'planets/uranus.dart';
import 'planets/venus.dart';
import 'sun.dart';
import 'utils.dart';
import 'widgets/astro_page_indicator.dart';

class SolarSystem extends StatefulWidget {
  const SolarSystem({Key? key}) : super(key: key);

  @override
  _SolarSystemState createState() => _SolarSystemState();
}

class _SolarSystemState extends State<SolarSystem> {
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
