import 'package:solarium/models/event.dart';
import 'package:solarium/models/media_presence.dart';
import 'package:solarium/models/moon.dart';
import 'package:solarium/models/random_fact.dart';

class SolarMember {
  String name;
  int tempInK;
  int radInKm;
  List<Moon> moons;
  List<MediaPresence> mediaPresence;
  List<Event> events;
  List<RandomFact> facts;

  SolarMember(
      {required this.name,
      required this.tempInK,
      required this.radInKm,
      required this.moons,
      required this.mediaPresence,
      required this.events,
      required this.facts});
}
