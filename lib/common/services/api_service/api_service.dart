import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pet/common/services/api_service/cooki_service.dart';

class ApiService extends GetxService {
  static const String baseUrl = 'http://localhost:3000';

  var isLoading = false.obs;
  Future<dynamic> postData(dynamic data, String url,
      {bool loader = false}) async {
    if (loader) Get.dialog(const Center(child: CircularProgressIndicator()));
    String? cookie = await getCookie();
    if (cookie != null && url != "login") {
      http.Response response;
      response = await http.post(
        Uri.parse('$baseUrl/$url'),
        body: data,
        headers: {
          'cookie': cookie,
        },
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
    } else {
      http.Response response = await http.post(
        Uri.parse('$baseUrl/$url'),
        body: data,
      );
      await saveCookie(response.headers['set-cookie']!);
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

  Future<dynamic> getData(
    String url,
  ) async {
    try {
      http.Response response = await http.get(Uri.parse('$baseUrl/$url'));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
