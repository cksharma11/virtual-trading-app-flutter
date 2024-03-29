import 'package:get/get.dart';

import '../modules/auth/login/bindings/auth_login_binding.dart';
import '../modules/auth/login/views/auth_login_view.dart';
import '../modules/auth/signup/bindings/auth_signup_binding.dart';
import '../modules/auth/signup/views/auth_signup_view.dart';
import '../modules/auth/verify-otp/bindings/auth_verify_otp_binding.dart';
import '../modules/auth/verify-otp/views/auth_verify_otp_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH_LOGIN,
      page: () => AuthLoginView(),
      binding: AuthLoginBinding(),
    ),
    GetPage(
      name: Routes.AUTH_VERIFY_OTP,
      page: () => AuthVerifyOtpView(),
      binding: AuthVerifyOtpBinding(),
    ),
    GetPage(
      name: Routes.AUTH_SIGNUP,
      page: () => AuthSignupView(),
      binding: AuthSignupBinding(),
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
