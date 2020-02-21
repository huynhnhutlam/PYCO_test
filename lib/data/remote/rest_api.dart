import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:pyco_test/data/remote/bussiness/bussiness_api.dart';
// import 'package:cocofood/data/shared_preferences_manager.dart';
import 'built_value_converter.dart';

class RestAPI {
  static const String URL = "https://randomuser.me/";
  
  static String rootURL() {
    return URL;
  }

  static Future<BusinessAPI> provideBusinessAPI() async {
      ChopperClient client = await _createClient();
      return BusinessAPI.create(client);
    }
    
  static Future<ChopperClient> _createClient() async {
    final client = ChopperClient(
      baseUrl: URL,
      services: [],
      // interceptors: [
      //   ResponseDataInterceptor()
      // ],
      converter: BuiltValueConverter(),
    );
    return client;
  }
}

class SignedInInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    Request req = request.replace(headers: Map<String, String>());
    return req;
  }
}

class ResponseDataInterceptor implements ResponseInterceptor {
  @override
  FutureOr<Response> onResponse(Response response) {
    Response res = response.replace(body: {});
    return res;
  }

}