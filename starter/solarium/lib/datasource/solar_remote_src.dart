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

import 'dart:convert';

import 'package:flutter/services.dart';
import '../constants.dart';
import '../models/solar_member.dart';

class SolarRemoteSrc {
  Future<SolarMember> getInfoForMember(String member) async {
    var _response = '';
    switch (member) {
      case sun_details:
        _response = await rootBundle.loadString('samples/sun_data.json');
        break;
      case mercury_details:
        _response = await rootBundle.loadString('samples/mercury_data.json');
        break;
      case venus_details:
        _response = await rootBundle.loadString('samples/venus_data.json');
        break;
      case earth_details:
        _response = await rootBundle.loadString('samples/earth_data.json');
        break;
      case mars_details:
        _response = await rootBundle.loadString('samples/mars_data.json');
        break;
      case jupiter_details:
        _response = await rootBundle.loadString('samples/jupiter_data.json');
        break;
      case saturn_details:
        _response = await rootBundle.loadString('samples/saturn_data.json');
        break;
      case neptune_details:
        _response = await rootBundle.loadString('samples/neptune_data.json');
        break;
      case uranus_details:
        _response = await rootBundle.loadString('samples/uranus_data.json');
        break;
      case pluto_details:
        _response = await rootBundle.loadString('samples/pluto_data.json');
        break;
      default:
        _response = '';
    }

    if (_response.isEmpty) return Future.error(Exception());
    final _member = SolarMember.fromJson(
        await json.decode(_response) as Map<String, dynamic>);
    return Future.delayed(const Duration(seconds: 3), () => _member);
  }
}
