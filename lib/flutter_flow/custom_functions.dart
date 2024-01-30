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

String latLongString(
  LatLng location,
  bool isLat,
) {
  if (isLat) {
    return location.latitude.toString();
  } else {
    return location.longitude.toString();
  }
}

List<String>? skini3char(List<String>? inputList) {
  final outputList = <String>[];
  if (inputList == null) {
    return inputList;
  }
  for (var inputText in inputList) {
    if (inputText.length >= 3 && inputText.startsWith("en:")) {
      outputList.add(inputText.substring(
          3)); // Remove the first 3 characters if the string is longer and starts with "en"
    } else {
      outputList.add(
          inputText); // Return the input as-is if it's too short or doesn't start with "en"
    }
  }

  return outputList;
}

String? spoji(List<String>? lista) {
  String? concatenatedString = lista?.join(", ");

  return concatenatedString;
}

List<double> nutrimentsCopy(dynamic data) {
  Map<String, dynamic> nonNullData = data
    ..removeWhere((key, value) => value == null || key.contains('_unit'));

  // Return the keys of the non-null values as a list
  return nonNullData.values.toList().cast<double>();
}

bool checkBarcode(String barcode) {
  if (barcode.length != 13 || !barcode.contains(RegExp(r'^[0-9]+$'))) {
    // Barcode should be 13 digits long and numeric
    return false;
  }

  int sum = 0;
  for (int i = 0; i < 12; i++) {
    int digit = int.parse(barcode[i]);
    sum += (i % 2 == 0) ? digit : digit * 3;
  }

  int checkDigit = (10 - (sum % 10)) % 10;
  return checkDigit == int.parse(barcode[12]);
}

List<String> nutriments(dynamic data) {
  Map<String, dynamic> nonNullData = data
    ..removeWhere((key, value) => value == null || key.contains('_unit'));

  // Return the keys of the non-null values as a list
  return nonNullData.keys.toList().cast<String>();
}
