// import 'package:devanasoft_app/features/Presentation/DashBoard/landing_page.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'features/Presentation/DashBoard/splash_screen .dart';
// import 'features/userAuth/otp/view/otp_screen.dart';
// import 'features/userAuth/otp/viewmodel/otp_view_model.dart';
// import 'features/userAuth/register/view/register_screen.dart';
// import 'features/userAuth/register/viewmodel/register_view_model.dart';
// import 'features/userAuth/signin/view/signin_screen.dart';
// import 'features/userAuth/signin/viewmodel/signin_view_model.dart';

// // WidgetBuilder withProvider<T extends ChangeNotifier>(
// //   T Function() create,
// //   Widget child,
// // ) {
// //   return (context) =>
// //       ChangeNotifierProvider<T>(create: (_) => create(), child: child);
// // }
// WidgetBuilder withProvider<T extends ChangeNotifier>(
//   T Function() create,
//   Widget page,
// ) {
//   return (_) => ChangeNotifierProvider<T>(
//     create: (_) => create(),
//     builder: (context, _) => page,
//   );
// }

// final Map<String, WidgetBuilder> appRoutes = {
//   '/splash': (_) => const SplashScreen(),
//   '/landing': (_) => const LandingPage(),

//   '/register': withProvider(() => RegisterViewModel(), const RegisterView()),
//   '/otp': withProvider(() => OtpViewModel(), const OtpView()),
//   '/signin_patient': withProvider(() => SigninViewModel(), const SigninView()),
// };
import 'package:devanasoft_app/features/Presentation/DashBoard/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/Presentation/DashBoard/splash_screen .dart';
import 'features/user/otp/view/otp_screen.dart';
import 'features/user/otp/viewmodel/otp_view_model.dart';
import 'features/user/register/view/register_screen.dart';
import 'features/user/register/viewmodel/register_view_model.dart';
import 'features/user/signin/view/signin_screen.dart';
import 'features/user/signin/viewmodel/signin_view_model.dart';

/// Helper to wrap a page with ChangeNotifierProvider
WidgetBuilder withProvider<T extends ChangeNotifier>(
  T Function() create,
  Widget page,
) {
  return (_) => ChangeNotifierProvider<T>(create: (_) => create(), child: page);
}

final Map<String, WidgetBuilder> appRoutes = {
  '/splash': (_) => const SplashScreen(),
  '/landing': (_) => const LandingPage(),

  // Register, OTP, SignIn wrapped with provider
  '/register': withProvider(() => RegisterViewModel(), const RegisterView()),
  '/otp': withProvider(() => OtpViewModel(), const OtpView()),
  '/signin': withProvider(() => SigninViewModel(), const SigninView()),
};
