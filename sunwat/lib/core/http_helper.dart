import 'dart:convert';
import 'package:sunwat/core/constants.dart';

import 'auth_utils.dart';
import 'log_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// or new Dio with a BaseOptions instance.
Future<Dio> getDio() async {
  var token = getToken();
  var options = BaseOptions(
    baseUrl: AppConstants.apiUrl,
    connectTimeout: 5000 * 50,
    receiveTimeout: 3000 * 40,
    contentType: "application/json",
  );
  var dio = Dio(options);
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
    if (kDebugMode) logger.d(dio2curl(options));

    /// Do something before request is sent
    return handler.next(options);

    ///continue
    /// If you want to resolve the request with some custom data，
    /// you can resolve a `Response` object eg: return `dio.resolve(response)`.
    /// If you want to reject the request with a error message,
    /// you can reject a `DioError` object eg: return `dio.reject(dioError)`
  }, onResponse: (response, handler) {
    /// if (kDebugMode) logger.d(dio2curl(response.requestOptions));
    /// Do something with response data
    logger.d(response);
    return handler.next(response);

    /// continue
    /// If you want to reject the request with a error message,
    /// you can reject a `DioError` object eg: return `dio.reject(dioError)`
  }, onError: (DioError e, handler) {
    logger.e(e);

    /// if (kDebugMode) logger.d(dio2curl(e.requestOptions));
    /// Do something with response error
    return handler.next(e);

    ///continue
    /// If you want to resolve the request with some custom data，
    /// you can resolve a `Response` object eg: return `dio.resolve(response)`.
  }));
  if (kDebugMode) {
    dio.interceptors.add(LogInterceptor(
        responseBody: true,
        requestHeader: false,
        responseHeader: false,
        request: false));
  }
  if (token != null) dio.options.headers["at"] = token;
  return dio;
}

/// A simple utility function to dump `curl` from "Dio" requests
String dio2curl(RequestOptions requestOption) {
  var curl = '';

  try {
    /// Add PATH + REQUEST_METHOD
    curl +=
        'curl --request ${requestOption.method} \'${requestOption.baseUrl}${requestOption.path}\'';

    /// Include headers
    for (var key in requestOption.headers.keys) {
      curl += ' -H \'$key: ${requestOption.headers[key]}\'';
    }

    /// Include data if there is data
    if (requestOption.data != null) {
      curl += ' --data-binary \'${json.encode(requestOption.data)}\'';
    }

    curl += ' --insecure';

    ///bypass https verification

  } catch (e) {
    logger.e(e);
  }
  return curl;
}
