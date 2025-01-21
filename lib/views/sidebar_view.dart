import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/sidebar_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SidebarView extends StatelessWidget {
  const SidebarView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return ViewModelBuilder<SidebarViewModel>.reactive(
        viewModelBuilder: () => SidebarViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ReBuy',
                        style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 40,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: he * 0.06,
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  accountContainer(
                      image: 'assets/images/Vector.png',
                      title: 'My Account',
                      subtitle: 'Edit your details, account settings'),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  accountContainer(
                      image: 'assets/images/order.png',
                      title: 'My Orders',
                      subtitle: 'View all your orders'),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  accountContainer(
                      image: 'assets/images/list.png',
                      title: 'My Listings',
                      subtitle: 'View your product listing for sale'),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  accountContainer(
                      image: 'assets/images/like.png',
                      title: 'Liked Items',
                      subtitle: 'See the product you have wishlisted'),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: Ink(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(width: 2, color: Colors.black)),
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Center(
                                child: Text(
                                  'Feedback',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'Dosil',
                                      color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
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
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black87, width: 2),
                                color: Colors.black87),
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              child: Text(
                                'Sign out',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontFamily: 'Dosil'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
            bottomNavigationBar: Stack(children: [
              SizedBox(
                width: we,
                child: Image.asset('assets/images/Waves.png'),
              ),
              Positioned(
                  bottom: 10,
                  left: 130,
                  child: Text(
                    'ReBuy Inc. Version 1.0',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ))
            ]),
          );
        });
  }
}

Widget accountContainer(
    {required String image, required String title, required String subtitle}) {
  return Container(
    height: 80,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Color(0xFFD4E4E6)),
    child: Center(
      child: ListTile(
        leading: Image.asset(image),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 94, 92, 92)),
        ),
        subtitle: Text(subtitle),
      ),
    ),
  );
}
