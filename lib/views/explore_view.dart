import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: he * 0.03,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
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
                          width: we * 0.05,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                        ),
                        SizedBox(
                          width: we * 0.35,
                        ),
                        Icon(
                          Icons.menu,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: he * 0.03,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Search for books, guitar and more...',
                    ),
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(
                    height: he * 0.02,
                  ),
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
                        customContain('Speaker')
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
                                AssetImage('assets/images/mera.jpg'),
                          ),
                          title: Text('Cliff Hanger'),
                          subtitle: Text('El Dorado'),
                          trailing: Icon(Icons.more_vert),
                        ),
                        Container(
                          height: he * 0.3,
                          width: we * 1,
                          decoration: BoxDecoration(color: Color(0xC1839F40)),
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
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('Make: Cordoba | Year: 2020'),
                          trailing: Text(
                            '\u20B9 25,000 ',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          );
        });
  }
}

Widget customContain(String text) {
  return Container(
    height: 35,
    width: 85,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Colors.black87),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}
