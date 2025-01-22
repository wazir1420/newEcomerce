import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/product_viewmodel.dart';
import 'package:myecommerceapp/views/home_view.dart';
import 'package:stacked/stacked.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;

    return ViewModelBuilder<ProductViewModel>.reactive(
        viewModelBuilder: () => ProductViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                  border:
                                      Border.all(color: Colors.black, width: 1),
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
                              style:
                                  TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: he * 0.03,
                        ),
                        Stack(children: [
                          Container(
                            height: he * 0.25,
                            decoration: BoxDecoration(color: Colors.white),
                            child: PageView.builder(
                              controller: viewModel.pageController,
                              onPageChanged: viewModel.onPageChanged,
                              itemCount: viewModel.images.length,
                              itemBuilder: (context, index) {
                                return Image.asset(
                                  viewModel.images[index],
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              right: 130,
                              child: Row(
                                children: List.generate(viewModel.images.length,
                                    (index) {
                                  bool isSelected =
                                      viewModel.currentPage == index;

                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: CircleAvatar(
                                      radius: isSelected ? 8 : 5,
                                      backgroundColor:
                                          viewModel.currentPage == index
                                              ? Colors.grey
                                              : Colors.black,
                                    ),
                                  );
                                }),
                              ))
                        ]),
                        SizedBox(
                          height: he * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shure podcast micro-\nphone',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xFFFF5A5F),
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Icon(
                                  Icons.message_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: he * 0.015,
                        ),
                        Text(
                          '\u20B9 24,999',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF087E8B)),
                        ),
                        SizedBox(
                          height: he * 0.015,
                        ),
                        Text.rich(
                          TextSpan(
                            text:
                                'The Shure SM7B reigns as king of studio recording for good reason: vocal recording and crisp, reason especially very good when recording in a ',
                            children: <TextSpan>[
                              TextSpan(
                                text: 'more...',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: he * 0.015,
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Make: ',
                            style: TextStyle(fontSize: 15),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Shure ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '| Year: ',
                                style: TextStyle(fontSize: 15),
                              ),
                              TextSpan(
                                text: '2020',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Within Warranty',
                              style: TextStyle(fontSize: 15),
                            ),
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            Text(
                              '. Original Packing',
                              style: TextStyle(fontSize: 15),
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: he * 0.015,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
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
                                  border: Border.all(
                                      width: 2, color: Colors.black)),
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: Center(
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Image.asset('assets/images/Google.png'),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Search Details',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'Dosil',
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: he * 0.03,
                        ),
                        Text(
                          'Similar Products',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(spacing: 15, children: [
                          productContainer(context,
                              image: 'assets/images/mike4.jpg',
                              productName: 'Recording ',
                              date: '2022 | Best',
                              price: '20,999'),
                          productContainer(context,
                              image: 'assets/images/mike1.jpg',
                              productName: 'Podcast ',
                              date: '2023 | Micro',
                              price: '22,999'),
                          productContainer(context,
                              image: 'assets/images/product2.png',
                              productName: 'Batman Toy',
                              date: '2018 | FunSkool',
                              price: '899'),
                          productContainer(context,
                              image: 'assets/images/product1.png',
                              productName: 'You are yours',
                              date: '2020 | MySkool',
                              price: '99'),
                          productContainer(context,
                              image: 'assets/images/toy1.jpg',
                              productName: 'Children Toy',
                              date: '2021 | Sasta',
                              price: '1199'),
                        ])),
                  ),
                ],
              ),
            )),
            bottomNavigationBar: SizedBox(
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: we * 0.5,
                    color: Color(0xFF727272),
                    child: Center(
                      child: Text(
                        'Save item',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: we * 0.5,
                    color: Color(0xFFFF5A5F),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
