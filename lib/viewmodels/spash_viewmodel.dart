import 'package:myecommerceapp/views/login_view.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class SplashViewModel extends BaseViewModel {
  void navigateToHome(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const LoginView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}
