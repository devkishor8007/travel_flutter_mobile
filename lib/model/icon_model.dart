import 'package:flutter/material.dart';

class IconModel {
  String name;
  Icon icon;
  IconModel({
    this.name,
    this.icon,
  });
}

List<IconModel> getIconModel = [
  IconModel(
    name: "Countries",
    icon: Icon(Icons.countertops_outlined),
  ),
  IconModel(
    name: "Sights",
    icon: Icon(Icons.camera),
  ),
  IconModel(
    name: "Tours",
    icon: Icon(Icons.bus_alert),
  ),
  IconModel(
    name: "Food",
    icon: Icon(Icons.food_bank),
  ),
];
