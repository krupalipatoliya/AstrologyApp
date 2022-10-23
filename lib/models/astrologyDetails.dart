import 'package:flutter/foundation.dart';

class AstrologyDetails {
  String date_range;
  String current_date;
  String description;
  String compatibility;
  String color;
  String lucky_number;
  String lucky_time;

  AstrologyDetails(
      {required this.date_range,
      required this.current_date,
      required this.description,
      required this.compatibility,
      required this.color,
      required this.lucky_number,
      required this.lucky_time});

  factory AstrologyDetails.fromMap(Map data) {
    return AstrologyDetails(
        date_range: data["date_range"],
        current_date: data["current_date"],
        description: data['description'],
        compatibility: data['compatibility'],
        color: data["color"],
        lucky_number: data['lucky_number'],
        lucky_time: data["lucky_time"]);
  }
}

// {"date_range": "Jan 20 - Feb 18",
// "current_date": "October 23, 2022",
// "description": "Your instincts about others are seldom wrong at the moment, however, that may not hold true. Don't make any decisions about a relationship until you're sure you have all the facts.",
// "compatibility": "Scorpio",
// "mood": "Cautious",
// "color": "Peach",
// "lucky_number": "81",
// "lucky_time": "7am"}
