import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/spash_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (viewModel) {
        viewModel.navigateToHome(context);
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF5A5F), Color(0xFFC1839F)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    'ReBuy',
                    style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
