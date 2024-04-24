import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<int> hours() {
  // scroll through hours
  List<int> hoursList = [];
  for (int i = 0; i < 24; i++) {
    hoursList.add(i);
  }
  return hoursList;
}

List<int> minutes() {
  // scroll down the minutes
// scroll through minutes
  List<int> minutesList = [];
  for (int i = 0; i < 60; i++) {
    minutesList.add(i);
  }
  return minutesList;
}

bool? searchfunction(
  String searchFor,
  String searchIn,
) {
  return searchIn.toLowerCase().contains(searchFor.toLowerCase());
}

bool? datesearch(
  DateTime dateFor,
  DateTime dateIn,
) {
  return dateFor.isAfter(dateIn.subtract(const Duration(days: 1))) &&
      dateFor.isBefore(dateIn.add(const Duration(days: 1)));
}
