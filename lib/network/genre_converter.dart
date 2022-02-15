import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:cinema_pool/model/genres.dart';

import 'model_response.dart';

class GenreConverter extends Converter {
  @override
  FutureOr<Request> convertRequest(Request request) {
    final Request req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    return encodeJson(req);
  }

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(Response<dynamic> response) {
    final String? contentType = response.headers[contentTypeKey];
    var body = response.body;

    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }

    try {
      Map data = json.decode(body);

      /// If my Server Response contains parameter status_code & status_message
      /// that means there is an error on te server, in this case we need to wrap our response into an Error
      /// And give it as response
      if (data["status_code"] != null) {
        return response.copyWith<BodyType>(body: Error(Exception(data["status_message"])) as BodyType);
      }

      List<Genres> genres = [];

      var rawList = data["genres"] as List<dynamic>;

      for (var item in rawList) {
        genres.add(Genres.fromJson(item));
      }

      return response.copyWith<BodyType>(body: Success(genres) as BodyType);
    } on Exception catch (error, stackTrace) {
      chopperLogger.warning("Error", error, stackTrace);
      return response.copyWith<BodyType>(body: Error(Exception(error)) as BodyType);
    }
  }

  Request encodeJson(Request request) {
    final contentType = request.headers[contentTypeKey];

    if (contentType != null && contentType.contains(jsonHeaders)) {
      return request.copyWith(body: json.encode(request.body));
    }

    return request;
  }
}
