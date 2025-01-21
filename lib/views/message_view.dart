import 'package:flutter/material.dart';
import 'package:myecommerceapp/viewmodels/message_viewmodel.dart';
import 'package:stacked/stacked.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    double he = MediaQuery.of(context).size.height;
    double we = MediaQuery.of(context).size.width;
    return ViewModelBuilder<MessageViewModel>.reactive(
        viewModelBuilder: () => MessageViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: SafeArea(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Stack(children: [
                SingleChildScrollView(
                  child: Column(
                    spacing: he * 0.01,
                    children: [
                      SizedBox(
                        height: he * 0.02,
                      ),
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
                              'Messages',
                              style:
                                  TextStyle(fontSize: 28, fontFamily: 'Dosis'),
                            ),
                            SizedBox(width: we * 0.3),
                            Icon(
                              Icons.menu,
                              size: 35,
                            )
                          ],
                        ),
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
                          hintText: 'Search in messages',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: he * 0.01,
                      ),
                      customMessage(
                        context,
                        'assets/images/mera.jpg',
                        'DJI Mavic mini 2',
                        'Wazir Tatheer',
                        'You: Does it come with an',
                        '9:03 AM',
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.green,
                        text2: 'additional battery?',
                      ),
                      customMessage(
                          context,
                          'assets/images/girla.jpg',
                          'DJI Mavir Air 2',
                          'Petey Cruiser',
                          'You: Yes it is but tell first',
                          '9:03 AM',
                          Colors.black,
                          Colors.black,
                          Colors.green,
                          number: '2',
                          conColor: Colors.red,
                          fontweigt: FontWeight.bold,
                          text2: 'wazir'),
                      customMessage(
                        context,
                        'assets/images/girlb.png',
                        'DJI Mavir Air 1',
                        'Anna Sthesia',
                        'You: I think you should go to mavic ',
                        '9:03 AM',
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.grey.shade400,
                        text2: 'mini',
                      ),
                      customMessage(
                        context,
                        'assets/images/boy1.jpg',
                        'Apple Airpods Pro',
                        'Bob Frapples',
                        "Bob: You're welcome",
                        '9:03 AM',
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.green,
                        text2: 'dear!',
                      ),
                      customMessage(
                          context,
                          'assets/images/girle.jpg',
                          'JBL Charge 2 Spea...',
                          'Greta Life',
                          "Greta: Alright",
                          '9:03 AM',
                          Colors.black,
                          Colors.black,
                          Colors.grey.shade400,
                          text2: 'dear!',
                          number: '1',
                          fontweigt: FontWeight.bold,
                          conColor: Colors.red),
                      customMessage(
                        context,
                        'assets/images/agha.jpg',
                        'Audionic Speaker',
                        'Agha Ijju',
                        'Ijju: How much you want to ',
                        '9:03 AM',
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.green,
                        text2: 'give',
                      ),
                      customMessage(
                        context,
                        'assets/images/girlf.jpg',
                        'Macbook Pro 2021',
                        'Antonia',
                        'You: Hey are you',
                        '9:03 AM',
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.grey.shade400,
                        text2: 'there?',
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

Widget customMessage(
  BuildContext context,
  String image,
  String model,
  String name,
  String text1,
  String time,
  Color color1,
  Color color2,
  Color color, {
  String? number,
  String? text2,
  Color? conColor,
  FontWeight? fontweigt,
}) {
  double he = MediaQuery.of(context).size.height;
  double we = MediaQuery.of(context).size.width;

  return Stack(
    children: [
      Container(
        height: he * 0.13,
        width: we * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 35,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        model,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' | $name',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 13, color: color1, fontWeight: fontweigt),
                  ),
                  if (text2 != null && text2.isNotEmpty)
                    Text(
                      text2,
                      style: TextStyle(
                          fontSize: 13, color: color2, fontWeight: fontweigt),
                    ),
                  SizedBox(
                    width: 250,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        time,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 73,
        left: 71,
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
      ),
      if (number != null)
        Positioned(
          top: 50,
          left: 330,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(shape: BoxShape.circle, color: conColor),
            child: Center(
                child: Text(
              number,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13),
            )),
          ),
        )
    ],
  );
}
