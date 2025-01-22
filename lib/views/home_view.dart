import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(children: [
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: he * 0.03,
                      ),
                      Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 2),
                                    shape: BoxShape.circle),
                                child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.white, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/mera.jpg'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: we * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hey Wazir',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Welcome back!',
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.red),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: we * 0.14,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu_outlined,
                                    size: 35,
                                  ))
                            ],
                          ),
                          Positioned(
                              bottom: 0.5,
                              left: 55,
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Icon(
                                  Icons.menu,
                                  size: 20,
                                  color: Colors.grey.shade600,
                                )),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: he * 0.02,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          suffixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Search for books guitar and more...',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: he * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'New arrivals',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View more',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: he * 0.02,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(spacing: 15, children: [
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
                      SizedBox(
                        height: he * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recently viewed',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'View more',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: he * 0.02,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(spacing: 15, children: [
                            productContainer(context,
                                image: 'assets/images/thumbnail1.png',
                                productName: 'Black Sheet',
                                date: '2018 | University',
                                price: '499'),
                            productContainer(context,
                                image: 'assets/images/thumbnail.png',
                                productName: 'Who are you',
                                date: '2010 | California',
                                price: '99'),
                            productContainer(context,
                                image: 'assets/images/product2.png',
                                productName: 'Children Toy',
                                date: '2021 | Sasta',
                                price: '1199'),
                            productContainer(context,
                                image: 'assets/images/mike1.jpg',
                                productName: 'Podcast MicroPhone',
                                date: '2023 | Micro',
                                price: '22,999')
                          ])),
                      SizedBox(
                        height: he * 0.08,
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 15,
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
                                    : Colors.black12),
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
                                    : Colors.black12),
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
                                    : Colors.black12),
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
                                    : Colors.black12),
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
              ]),
            )),
          );
        });
  }
}

Widget productContainer(BuildContext context,
    {required String image,
    required String productName,
    required String date,
    required String price}) {
  double he = MediaQuery.of(context).size.height;
  double we = MediaQuery.of(context).size.width;
  return Stack(children: [
    Container(
      height: he * 0.27,
      width: we * 0.6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: he * 0.18,
              width: double.infinity,
            ),
          ),
          ListTile(
            title: Text(productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(date),
            trailing: Text(
              '\u20B9 $price',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          )
        ],
      ),
    ),
    Positioned(
        bottom: 80,
        right: 10,
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.grey.shade200),
          child: Center(
              child: Icon(
            Icons.favorite_outline,
            color: Colors.red,
          )),
        ))
  ]);
}
