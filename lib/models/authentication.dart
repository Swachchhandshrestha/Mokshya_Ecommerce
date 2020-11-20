import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http ;
import 'dart:convert';
import 'package:mokshya/models/http_exception.dart';
import 'package:mokshya/screens/login_screen.dart';

class Authentication with ChangeNotifier
 {
   Future<void> SignUp(String email,String password) async
   {
     const url='https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyARznWUitwOxaB2gvArfxNaTGs4nbxknqA';

     try{
       final response=await http.post(url,body:json.encode(
           {
             'email':email,
             'password':password,
             'returnSecureToken':true,

           }
       ));
       final responseData=json.decode(response.body);
       if(responseData['error']!=null)
       {
         throw HttpException(responseData['error']['message']);
       }
       //print(responseData);

     }
     catch(error)
     {
        throw error;
     }
   }
   Future<void> LoginScreen(String email,String password) async
   {
     const url='https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyARznWUitwOxaB2gvArfxNaTGs4nbxknqA';

     try{
       final response=await http.post(url,body:json.encode(
           {
             'email':email,
             'password':password,
             'returnSecureToken':true,

           }
       ));
       final responseData=json.decode(response.body);
       if(responseData['error']!=null)
         {
           throw HttpException(responseData['error']['message']);
         }
       //print(responseData);

     }
     catch(error){
       throw error;
     }


   }
 }
