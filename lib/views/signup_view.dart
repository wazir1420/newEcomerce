import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/signup_viewmodel.dart';
import 'package:myecommerceapp/views/login_view.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;

    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: we * 0.5,
                      ),
                      Text(
                        'ReBuy',
                        style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: he * 0.05,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 39, fontFamily: 'Dosis'),
                  ),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Text('Login with one of the following options'),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  Row(
                    spacing: 10,
                    children: [
                      customContainer('assets/images/Google.png'),
                      customContainer('assets/images/Twitter.png'),
                      customContainer('assets/images/Apple.png')
                    ],
                  ),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Text("________________________or________________________"),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Name',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Password',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: he * 0.01,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [Color(0xFFFF5A5F), Color(0xFFC1839F)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Container(
                          height: 55,
                          alignment: Alignment.center,
                          child: Text(
                            'Create account',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontFamily: 'Dosil'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: he * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          "Already have an account",
                          style: TextStyle(fontSize: 17),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginView()));
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xFFFF5A5F)),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )),
          );
        });
  }
}

Widget customContainer(String image) {
  return Container(
    height: 60,
    width: 100,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.grey.shade300),
    child: Center(
      child: Image.asset(image),
    ),
  );
}
