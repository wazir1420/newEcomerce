import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/order_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return ViewModelBuilder<OrderViewModel>.reactive(
        viewModelBuilder: () => OrderViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Stack(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: he * 0.02),
                    Row(
                      children: [
                        Container(
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
                        SizedBox(width: we * 0.05),
                        Text(
                          'Liked items',
                          style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                        ),
                        SizedBox(width: we * 0.22),
                        Icon(
                          Icons.menu,
                          size: 35,
                        ),
                      ],
                    ),
                    SizedBox(height: he * 0.02),
                    ...viewModel.currentPageItems.map((item) {
                      return Column(
                        children: [
                          CustomOrder(
                            image: item['image']!,
                            product: item['product']!,
                            date: item['date']!,
                            price: item['price']!,
                          ),
                          SizedBox(height: he * 0.01),
                        ],
                      );
                    }),
                    SizedBox(height: he * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => viewModel.goToPreviousPage(),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => viewModel.goToPage(1),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: viewModel.currentPage == 1 ? 2 : 1)),
                            child: Center(
                              child: Text('1'),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => viewModel.goToPage(2),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    width: viewModel.currentPage == 2 ? 2 : 1)),
                            child: Center(
                              child: Text('2'),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => viewModel.goToNextPage(),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1)),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 15,
                right: 16,
                child: Container(
                  height: 50,
                  width: we * 0.9245,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.black87,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          viewModel.updateSelectedIndex(0);
                        },
                        icon: Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: viewModel.selectedIndex == 0
                                ? const Color(0xFF087E8B)
                                : Colors.black12,
                          ),
                          child: Icon(
                            Icons.home_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          viewModel.updateSelectedIndex(1);
                        },
                        icon: Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: viewModel.selectedIndex == 1
                                ? const Color(0xFF087E8B)
                                : Colors.black12,
                          ),
                          child: Icon(
                            Icons.explore_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 70),
                      IconButton(
                        onPressed: () {
                          viewModel.updateSelectedIndex(2);
                        },
                        icon: Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: viewModel.selectedIndex == 2
                                ? const Color(0xFF087E8B)
                                : Colors.black12,
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          viewModel.updateSelectedIndex(3);
                        },
                        icon: Container(
                          height: 40,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: viewModel.selectedIndex == 3
                                ? const Color(0xFF087E8B)
                                : Colors.black12,
                          ),
                          child: Icon(
                            Icons.message_outlined,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black87, width: 3),
                  ),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                ),
              ),
            ])),
          );
        });
  }
}

class CustomOrder extends StatelessWidget {
  final String image;
  final String product;
  final String date;
  final String price;

  const CustomOrder({
    super.key,
    required this.image,
    required this.product,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrderViewModel>.reactive(
      viewModelBuilder: () => OrderViewModel(),
      builder: (context, viewModel, child) {
        return Stack(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFD4E4E6),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                  Container(
                    height: 80,
                    width: 80,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: Image.asset(
                          image,
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
                        product,
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade800),
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            fontSize: 13, color: Colors.grey.shade700),
                      ),
                      Text(
                        '\u20B9 $price',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade900),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (!viewModel.isRated)
              Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    viewModel.toggleRatingVisibility();
                  },
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Rate Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            if (viewModel.isRated)
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    children: [
                      Text('You Rated 5'),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      )
                    ],
                  ))
          ],
        );
      },
    );
  }
}
