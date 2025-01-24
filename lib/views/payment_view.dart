import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myecommerceapp/viewmodels/purchase_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    return ViewModelBuilder<PurchaseViewModel>.reactive(
        viewModelBuilder: () => PurchaseViewModel(),
        builder: (context, viewModal, child) {
          final formatter = NumberFormat('#,###');
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(children: [
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
                    ],
                  ),
                  SizedBox(
                    height: he * 0.04,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Shure podcast micro-phone',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text('Make: '),
                            Text(
                              'Shure ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('| Year: '),
                            Text(
                              '2020',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Payment details',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
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
                                '\u20B9 ${formatter.format(viewModal.productCost)}')
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
                                '\u20B9 ${formatter.format(viewModal.shippingFee)}')
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
                              '\u20B9 ${formatter.format(viewModal.totalPrice)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Select card',
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            viewModal.selectCard(0);
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/Card 1.png',
                                height: 170,
                                width: 300,
                              ),
                              if (viewModal.selectedCardIndex == 0)
                                Positioned(
                                  top: 5,
                                  right: 10,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModal.selectCard(1);
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/Card 2.png',
                                height: 160,
                                width: 300,
                              ),
                              if (viewModal.selectedCardIndex == 1)
                                Positioned(
                                  top: 5,
                                  right: 10,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            viewModal.selectCard(2);
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/Card 3.png',
                                height: 160,
                                width: 300,
                              ),
                              if (viewModal.selectedCardIndex == 2)
                                Positioned(
                                  top: -2,
                                  right: 10,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Enter CVV:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            fontFamily: 'Dosis'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                          child: Text(
                            'C V V',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            ),
            bottomNavigationBar: Container(
              height: 60,
              decoration: BoxDecoration(color: Color(0xFFFF5A5F)),
              child: Center(
                child: Text(
                  'Pay Now',
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
