import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_dribble/api/data_model.dart';

import './data_model.dart';

class FetchData {
  Future<List<dynamic>> dataModel() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:3000 '));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}