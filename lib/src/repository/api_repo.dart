import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ApiRepo {
  final String baseUrl;
  final Client client;

  ApiRepo({
    @required this.baseUrl,
  }) : client = Client();

  Future<Response> get({@required String url}) {
    return client.get(baseUrl + url);
  }

  Future<Response> post({@required String url, Map<dynamic, dynamic> data}) {
    final body = json.encode(data);
    return client.post(baseUrl + url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: body);
  }
}
