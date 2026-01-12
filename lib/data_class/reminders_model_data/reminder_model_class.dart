import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ReminderModelClass {
  int? id;
  String name;
  String dosageLabel;
  String time;
  bool isTaken = false ;
  String image;
  ReminderModelClass({
     this.id,
    required this.name,
    required this.time,
    required this.dosageLabel,
    required this.isTaken,
    required this.image,
  });
}
