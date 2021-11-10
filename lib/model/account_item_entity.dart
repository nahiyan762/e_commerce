import 'package:flutter/material.dart';

class AccountItemEntity {
  String id;
  String name;
  Widget icon;
  String destination;

  AccountItemEntity({
    required this.id,
    required this.name,
    required this.icon,
    required this.destination
  });
}