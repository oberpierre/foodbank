import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductApi {
  static Future<Map<String, dynamic>> findProductByBarcode(
      String barcode) async {
    final Uri url = Uri.https('barcode.monster', 'api/$barcode');
    print('Calling ${url.toString()}');
    try {
      return await http.get(url, headers: {
        "Access-Control-Allow-Origin": "*",
        'Content-Type': 'application/json',
        'Accept': '*/*'
      }).then((res) => jsonDecode(res.body) as Map<String, dynamic>);
    } catch (e) {
      print(e);
      throw Exception('Could not fetch barcode. $e');
    }
  }
}
