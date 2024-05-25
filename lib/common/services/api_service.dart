import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiService extends GetxService {
  static const String baseUrl = 'http://localhost:3000';

  var isLoading = false.obs;

  Future<dynamic> postData(dynamic data, String url,
      {bool loader = false}) async {
    if (loader) Get.dialog(const Center(child: CircularProgressIndicator()));
    final response = await http.post(
      Uri.parse('$baseUrl/$url'),
      body: data,
    );
    try {
      if (response.statusCode == 200) {
        if (loader) Get.back();
        return jsonDecode(response.body);
      } else {
        if (loader) Get.back();
        return null;
      }
    } catch (e) {
      if (loader) Get.back();
      return null;
    }
  }
}
