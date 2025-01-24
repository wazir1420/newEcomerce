import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myecommerceapp/viewmodels/purchase_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OrderconView extends StatelessWidget {
  const OrderconView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;

    return ViewModelBuilder<PurchaseViewModel>.reactive(
        viewModelBuilder: () => PurchaseViewModel(),
        builder: (context, viewModel, child) {
          final formatter = NumberFormat('#,###');

          return Scaffold(
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text(
                        'ReBuy',
                        style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                      Container(
                        height: 4,
                        width: 60,
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                      ),
                      Container(
                        height: 4,
                        width: 60,
                        decoration: BoxDecoration(color: Colors.red),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 4),
                            shape: BoxShape.circle),
                        child: Center(
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Row(
                    children: [
                      Text(
                        'Order Confirmed',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Dosis'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Your Payment for',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\u20B9 ${formatter.format(viewModel.totalPrice)}',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'is Successfull',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  Container(
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 215, 242, 246),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Center(
                              child: Image.asset(
                                'assets/images/mike1.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                                width: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Shure podcast micro-\nphone',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Traking ID: 349853492',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade700),
                            ),
                            Text(
                              'Order ID: 98732084',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
            bottomNavigationBar: Container(
              height: 60,
              decoration: BoxDecoration(color: Color(0xFFFF5A5F)),
              child: Center(
                child: Text(
                  'Go to home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        });
  }
}
