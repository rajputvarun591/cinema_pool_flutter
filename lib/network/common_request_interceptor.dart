import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:cinema_pool/constants/constants.dart';

class CommonRequestInterceptor implements RequestInterceptor{

  @override
  FutureOr<Request> onRequest(Request request) {
    final params = Map<String, dynamic>.from(request.parameters);
    params['api_key'] = apiKey;
    return request.copyWith(parameters: params);
  }
}