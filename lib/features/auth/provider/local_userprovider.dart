// import 'package:flutter/material.dart';
// import '../../user/register/model/user_register_model.dart';
// import '../../user/signin/model/user_signin_model.dart';

// class LocalUserProvider extends ChangeNotifier {
//   RegisterModel? _user;

//   RegisterModel? get user => _user;

//   void setUser({
//     required String name,
//     required String email,
//     required String phoneNumber,
//   }) {
//     _user = RegisterModel(name: name, email: email, phoneNumber: phoneNumber);
//     notifyListeners();
//   }
// }

// class LocalSigninUserProvider extends ChangeNotifier {
//   SigninModel? _user;

//   SigninModel? get user => _user;

//   void setUser({
//     required String name,
//     required String email,
//     required String phoneNumber,
//   }) {
//     _user = SigninModel(phoneNumber: phoneNumber);
//     notifyListeners();
//   }
// }
// // 