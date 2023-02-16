import 'package:test_app/utils/baseclient.dart';

import 'package:http/http.dart' as http;

import '../models/todos_response.dart';

class TodosService {
  static Future<dynamic> getTodos() async {
    // var url = "${Appurls.baseUrl}" "${Appurls.todos}";
    var url = 'https://jsonplaceholder.typicode.com/todos';
    try {
      var resp = await BaseClientClass.get(url, "");

      if (resp is http.Response) {
        return todosResponseFromJson(resp.body);
      } else {
        return resp;
      }
    } catch (e) {
      return e;
    }
  }
}
