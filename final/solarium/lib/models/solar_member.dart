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

import 'event.dart';
import 'media_presence.dart';
import 'moon.dart';

class SolarMember {
  String name;
  int tempInK;
  int radInKm;
  List<Moon> moons;
  List<MediaPresence> mediaPresence;
  List<Event> events;

  SolarMember({
    required this.name,
    required this.tempInK,
    required this.radInKm,
    required this.moons,
    required this.mediaPresence,
    required this.events,
  });

  static SolarMember fromJson(Map<String, dynamic> json) {
    return SolarMember(
        name: json['name'] as String? ?? '',
        tempInK: json['tempInK'] as int? ?? 0,
        radInKm: json['radInKm'] as int? ?? 0,
        moons: Moon.fromJson(json['moons'] as List<dynamic>),
        mediaPresence:
            MediaPresence.fromJson(json['popculture'] as List<dynamic>),
        events: Event.fromJson(json['event'] as List<dynamic>));
  }
}
