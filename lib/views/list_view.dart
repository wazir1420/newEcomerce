import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:myecommerceapp/viewmodels/list_viewmodel.dart';

class ListViews extends StatelessWidget {
  const ListViews({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return ViewModelBuilder<ListViewsModel>.reactive(
      viewModelBuilder: () => ListViewsModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    spacing: he * 0.01,
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
                            'My Listings',
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
                            CustomList(
                                image: item['image']!,
                                product: item['product']!,
                                view: item['view']!,
                                price: item['price']!,
                                date: item['date']!,
                                message: item['message']!),
                          ],
                        );
                      }),
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color.fromARGB(255, 222, 246, 223)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: 10),
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Center(
                                      child: Image.asset(
                                        viewModel.currentPage == 1
                                            ? 'assets/images/Rectangle 2.png'
                                            : viewModel.currentPage == 2
                                                ? 'assets/images/Rectangle 21.jpeg'
                                                : 'assets/images/Rectangle 22.jpg',
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
                                      viewModel.currentPage == 1
                                          ? 'Google Home Mini'
                                          : viewModel.currentPage == 2
                                              ? 'GoPro Hero 8'
                                              : 'Fitbit Charge 4',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.grey.shade800),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          viewModel.currentPage == 1
                                              ? 'Views: 3.5k'
                                              : viewModel.currentPage == 2
                                                  ? 'Views: 2.1k'
                                                  : 'Views: 1.2k',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey.shade700),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Sold',
                                          style: TextStyle(
                                              color: Color(0xFF009E06)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      spacing: 10,
                                      children: [
                                        Text(
                                          viewModel.currentPage == 1
                                              ? '\u20B9 1,299 '
                                              : viewModel.currentPage == 2
                                                  ? '\u20B9 1,399 '
                                                  : '\u20B9 1,599 ',
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Color(0xFF009E06)),
                                        ),
                                        Text(
                                            viewModel.currentPage == 1
                                                ? '12 April 2021'
                                                : viewModel.currentPage == 2
                                                    ? '04 May 2021'
                                                    : '16 jan 2021',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Color(0xFF009E06))),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: GestureDetector(
                              onTap: () {
                                viewModel.toggleVisibility();
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Color(0xFF009E06),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
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
                                      width:
                                          viewModel.currentPage == 1 ? 2 : 1)),
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
                                      width:
                                          viewModel.currentPage == 2 ? 2 : 1)),
                              child: Center(
                                child: Text('2'),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          GestureDetector(
                            onTap: () => viewModel.goToPage(3),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                      width:
                                          viewModel.currentPage == 3 ? 2 : 1)),
                              child: Center(
                                child: Text('3'),
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
                                  border: Border.all(
                                      color: Colors.black, width: 1)),
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
                              child: Image.asset('assets/images/home.png')),
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
                              child: Image.asset('assets/images/msg.png')),
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
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomList extends StatelessWidget {
  final String image;
  final String product;
  final String view;
  final String price;
  final String date;
  final String message;

  const CustomList({
    super.key,
    required this.image,
    required this.product,
    required this.view,
    required this.price,
    required this.date,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ListViewsModel>.reactive(
      viewModelBuilder: () => ListViewsModel(),
      builder: (context, viewModel, child) {
        return Stack(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: viewModel.containerColor,
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
                      Row(
                        children: [
                          Text(
                            'Views: $view',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                          ),
                          SizedBox(width: 10),
                          Visibility(
                            visible: !viewModel.isVisible,
                            child: Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Row(
                                spacing: 3,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/boxm.png'),
                                  Text(message)
                                ],
                              ),
                            ),
                          ),
                          Visibility(
                              visible: viewModel.isVisible,
                              child: Text('Hidden'))
                        ],
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          Text(
                            '\u20B9 $price ',
                            style: TextStyle(
                                fontSize: 17, color: Color(0xFF087E8B)),
                          ),
                          Text(date,
                              style: TextStyle(
                                  fontSize: 15,
                                  color:
                                      const Color.fromARGB(255, 235, 103, 93))),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: GestureDetector(
                onTap: () {
                  viewModel.toggleVisibility();
                },
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      viewModel.isVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
