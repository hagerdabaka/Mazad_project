
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// 81c14856fba84fda967a563b8f374202
class DioHelper {

  static late Dio  dio;

  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://student.valuxapps.com/api/' ,
        receiveDataWhenStatusError: true,
        // headers: {
        //   'Content-Type':'application/json'
        //
        // }
      ),

    );
  }

   static Future <Response> getData({
    required String  url ,
     Map<String,dynamic> ? query,
     String lang ='ar',
      String ? token,

  }) async {
        dio.options.headers= {
          'Content-Type': 'application/json',
           'lang':lang,
           'Authorization':token??'',
     };
    return await dio.get(url ,queryParameters:query , );

  }
  static Future <Response> postData({
    required String  url ,
     Map<String,dynamic>? query,
     required Map<String,dynamic> data,
     String lang ='ar',
     String? token,
  }) async {
     dio.options.headers= {
       'Content-Type': 'application/json',
         'lang':lang,
         'Authorization':token??'',

       };
    return await dio.post(
      url ,
      queryParameters:query ,
      data: data,
     );

  }
  // static Future<Response> putData({
  //   required String url,
  //   required Map<String, dynamic> data,
  //   Map<String, dynamic>? query,
  //   String lang = 'en',
  //   String ?  token,
  // }) async
  // {
  //   dio.options.headers =
  //   {
  //     'lang':lang,
  //     'Authorization': token??'',
  //     'Content-Type': 'application/json',
  //   };
  //
  //   return dio.put(
  //     url,
  //     queryParameters: query,
  //     data: data,
  //   );
  // }
}

