import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myecommerceapp/viewmodels/purchase_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PurchaseView extends StatelessWidget {
  const PurchaseView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: he * 0.04,
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
                            Row(
                              children: [
                                Text(
                                  'Make:',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade700),
                                ),
                                Text(
                                  'Shure ',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '| Year:',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade700),
                                ),
                                Text(
                                  '2020',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade700,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              '\u20B9 24,999 ',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFF087E8B),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Stack(children: [
                    Container(
                      height: 150,
                      width: we * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Shipping Address',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'House No, 378A',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Street No, 14',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Sector I, Manzoor',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Colony Karachi Pakistan',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200),
                        child: Center(
                          child: Icon(
                            Icons.edit_note_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Container(
                    height: 130,
                    width: we * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Invoice details',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Product cost:',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                                '\u20B9 ${formatter.format(viewModel.productCost)}')
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Shipping fee:',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                                '\u20B9 ${formatter.format(viewModel.shippingFee)}')
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Total:',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Text(
                              '\u20B9 ${formatter.format(viewModel.totalPrice)}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
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
                  'Proceed to Payment',
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
