
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Crud{
  getRequest(String url) async {
    try{
      var response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        var responsebody=jsonDecode(response.body);
        return responsebody;

      }else{
        print("Error ${response.statusCode}");
      }

    }catch(e){
      print("Error Catch $e");

    }
  }
  postRequest(String url,Map<String,String> data) async {
    try{
      var response = await http.post(Uri.parse(url),body:data );
      print("Reeeeeessssspoooonnnnsss : ${response.statusCode}");
      if(response.statusCode == 200){
        var responsebody=jsonDecode(response.body);
        return responsebody;

      }else{
        print("Error ${response.statusCode}");
        print("Reeeeeessssspoooonnnnsss : ${response.statusCode}");
        return response.statusCode;
      }

    }catch(e){
      print("Error Catch $e");
    }
  }

}