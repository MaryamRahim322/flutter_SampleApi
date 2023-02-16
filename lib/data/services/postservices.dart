import 'package:test_app/utils/baseclient.dart';

import 'package:http/http.dart' as http;

import '../models/postresponse.dart';

class PostsService {
  static Future<dynamic> getPosts() async {
    // var url = "${Appurls.baseUrl}" "${Appurls.todos}";
    var url = 'https://jsonplaceholder.typicode.com/posts';
    try {
      var resp = await BaseClientClass.get(url, "");

      if (resp is http.Response) {
        return propertieseResponserFromJson(resp.body);
      } else {
        return resp;
      }
    } catch (e) {
      return e;
    }
  }
}
