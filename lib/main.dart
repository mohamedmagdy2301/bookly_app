import 'package:bookly_app/bookly_app.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  setupSericeLocator();
  runApp(const BooklyApp());
}
