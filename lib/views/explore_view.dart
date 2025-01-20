import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/explore_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;

    return ViewModelBuilder<ExploreViewModel>.reactive(
      viewModelBuilder: () => ExploreViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: he * 0.03),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              Container(
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
                              SizedBox(width: we * 0.05),
                              Text(
                                'Explore',
                                style: TextStyle(
                                    fontSize: 28, fontFamily: 'Dosis'),
                              ),
                              SizedBox(width: we * 0.35),
                              Icon(
                                Icons.menu,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: he * 0.03),
                        TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Search for books, guitar and more...',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                        SizedBox(height: he * 0.02),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            spacing: 10,
                            children: [
                              customContain('Books'),
                              customContain('Game'),
                              customContain('Music'),
                              customContain('Camera'),
                              customContain('Toys'),
                              customContain('Speaker'),
                            ],
                          ),
                        ),
                        SizedBox(height: he * 0.02),
                        Container(
                          height: he * 0.48,
                          width: we * 1,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/mera.jpg'),
                                ),
                                title: Text('Cliff Hanger'),
                                subtitle: Text('El Dorado'),
                                trailing: Icon(Icons.more_vert),
                              ),
                              Container(
                                height: he * 0.3,
                                width: we * 1,
                                decoration:
                                    BoxDecoration(color: Color(0xC1839F40)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/images/guiters.jpg',
                                        width: he * 0.8,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        height: 37,
                                        width: 37,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xC1839F40)),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Cordoba Mini Guitar',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text('Make: Cordoba | Year: 2020'),
                                trailing: Text(
                                  '\u20B9 25,000 ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: he * 0.02,
                        ),
                        Container(
                          height: he * 0.48,
                          width: we * 1,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/agha.jpg'),
                                ),
                                title: Text('Frank N. Stein'),
                                subtitle: Text('Shangri La'),
                                trailing: Icon(Icons.more_vert),
                              ),
                              Container(
                                height: he * 0.3,
                                width: we * 1,
                                decoration:
                                    BoxDecoration(color: Color(0xC1839F40)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/images/iphone.jpg',
                                        width: he * 0.8,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        height: 37,
                                        width: 37,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xC1839F40)),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Iphone 15',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text('Make: Cordoba | Year: 2023'),
                                trailing: Text(
                                  '\u20B9 10,0000 ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: he * 0.02,
                        ),
                        Container(
                          height: he * 0.48,
                          width: we * 1,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/ahmed.jpg'),
                                ),
                                title: Text('David N. Stephen'),
                                subtitle: Text('California AG'),
                                trailing: Icon(Icons.more_vert),
                              ),
                              Container(
                                height: he * 0.3,
                                width: we * 1,
                                decoration:
                                    BoxDecoration(color: Color(0xC1839F40)),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        'assets/images/speaker.jpg',
                                        width: he * 0.8,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        height: 37,
                                        width: 37,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xC1839F40)),
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Colors.red,
                                          size: 30.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Audionic Speaker',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text('Make: Cordoba | Year: 2023'),
                                trailing: Text(
                                  '\u20B9 8,000 ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
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
                        color: Colors.black,
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
                                      : Colors.black),
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
                                      : Colors.black),
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
                                      : Colors.black),
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
                                      : Colors.black),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget customContain(String text) {
  return Container(
    height: 35,
    width: 85,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.black87,
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
