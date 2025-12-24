import 'package:devanasoft_app/features/auth/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/legacy.dart';

import '../../user/register/model/user_register_model.dart';
import '../services/user_data_service.dart';

final currentUserProvider = FutureProvider<UserModel>((ref) async {
  final UserModel user = await ref
      .watch(userDataServiceProvider)
      .fetchCurrentUserData();
  return user;
});

//here simple provider is not userful so we need family provider
final anyUserDataProvider = FutureProvider.family((ref, userId) async {
  final UserModel user = await ref
      .watch(userDataServiceProvider)
      .fetchAnyUserData(userId);
  return user;
});
