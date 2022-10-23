import 'dart:convert';
import 'package:astrology_application/models/astrologyDetails.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  Map<String, String>? key = {
    "X-RapidAPI-Key": "e6cc39ad10msh2f2d7c821c3215bp18c720jsncb43786df2fe",
    "X-RapidAPI-Host": "sameer-kumar-aztro-v1.p.rapidapi.com"
  };

  Future<AstrologyDetails?> apiCall({
    required String sign,
    required String day,
  }) async {
    http.Response response = await http.post(
      Uri.parse(
          "https://sameer-kumar-aztro-v1.p.rapidapi.com/?sign=$sign&day=$day"),
      headers: key,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = await jsonDecode(response.body);

      AstrologyDetails dataList = AstrologyDetails.fromMap(data);

      return dataList;
    }
    return null;
  }
}
