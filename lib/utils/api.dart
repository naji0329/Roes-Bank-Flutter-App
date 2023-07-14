// import 'dart:html';

import 'package:rosebank/store/store.dart';
import 'package:rosebank/utils/factories.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  static String baseUrl = "89.107.10.239";
  static var client = http.Client();
  static DataStore ds = DataStore.getInstance();
  static Future<Response> signUp(String username, String email, String password,
      String confirmPassword) async {
    var formDataMap = Map<String, dynamic>();
    formDataMap['username'] = username.toString();
    formDataMap['email'] = email;
    formDataMap['password'] = password.toString();
    formDataMap['password2'] = confirmPassword.toString();
    print(formDataMap['username']);
    print(formDataMap['email']);
    print(formDataMap['password']);
    print(formDataMap['password2']);

    // formDataMap['username'] = 'username';
    // formDataMap['email'] = 'quickrun1212@gmail.com';
    // formDataMap['password'] = 'qwerqwerqwer1234';
    // formDataMap['password2'] = 'qwerqwerqwer1234';

    var res = await client.post(Uri.http(baseUrl, 'api/auth/register/'),
        body: (formDataMap),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'});
    // var data = jsonDecode(res.body);
    var sessionId = res.headers['set-cookie'];
    print("session id");
    print(sessionId.toString());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('session_id', sessionId.toString());
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> signIn(String email, String password) async {
    var formDataMap = Map<String, dynamic>();
    formDataMap['email'] = email.toLowerCase().toString();
    formDataMap['password'] = password.toString();
    var res = await client.post(
      Uri.http(baseUrl, 'api/auth/login/'),
      body: (formDataMap),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},

      // headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    );
    print(res);
    return Response.fromJson(jsonDecode(res.body));

    // var res = await client.post(Uri.http(baseUrl, 'api/auth/login'),
    //     body: jsonEncode({
    //       "email": email.toLowerCase().toString(),
    //       "password": password.toString()
    //     }),
    //     headers: {'Content-Type': 'application/json'});
    // print(res);
    // return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> verifyEmail(String verificationCode) async {
    var formDataMap = Map<String, dynamic>();
    formDataMap['otp'] = verificationCode.toString();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _sessionId = prefs.getString('session_id');

    print("before sending session");
    print(_sessionId);
    var res = await client.post(
      Uri.http(baseUrl, 'api/auth/register-otp-verify/'),
      body: (formDataMap),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        'Cookie': '$_sessionId'
      },

      //     headers: {
      //   'Content-Type': 'application/json',   application/x-www-form-urlencoded
      //   'Authorization':
      //       '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
      // }
    );
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> resendVerificationCode() async {
    var res = await client
        .get(Uri.https(baseUrl, 'auth/resendVerificationCode'), headers: {
      'Content-Type': 'application/json',
      'Authorization':
          '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
    });
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> addContact(String name, String phoneNumber) async {
    var res = await client.post(Uri.https(baseUrl, 'contacts/new'),
        body: jsonEncode(
            {"name": name.toString(), "phoneNumber": phoneNumber.toString()}),
        headers: {
          'Content-Type': 'application/json',
          'Authorization':
              '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
        });
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> deleteContact(String id) async {
    var res = await client
        .delete(Uri.https(baseUrl, 'contacts/${id.toString()}'), headers: {
      'Content-Type': 'application/json',
      'Authorization':
          '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
    });
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> getContacts() async {
    var res = await client.get(Uri.https(baseUrl, 'contacts'), headers: {
      'Authorization':
          '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
    });
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> subscribeForAYear() async {
    var res = await client
        .put(Uri.https(baseUrl, 'paypal/subscribeForAYear'), headers: {
      'Authorization':
          '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
    });
    return Response.fromJson(jsonDecode(res.body));
  }

  static Future<Response> unsubscribe() async {
    var res = await client
        .put(Uri.https(baseUrl, 'paypal/subscribeForAYear'), headers: {
      'Authorization':
          '${await SharedPreferences.getInstance().then((value) => value.getString('access_token'))}'
    });
    return Response.fromJson(jsonDecode(res.body));
  }
}
