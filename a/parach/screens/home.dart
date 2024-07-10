import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 243, 247),
      appBar: AppBar(
        leading: Image.asset('lib/parach/images/image 1.png'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Text(
                          'Do',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Amazing',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'With AI',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/parach/images/Rectangle 3030.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/parach/images/Rectangle 3030.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/parach/images/Rectangle 3030.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 230,
                          width: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'lib/parach/images/Rectangle 3030.png'),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'YOUR AI POWERED KEYWORD GENERATOR',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'FIND RELEVANT KEYWORDS FOR YOUR BUSINESS OR WEBSITE ALL FOR FREE',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '1. Input your description',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '2. Click Generate keywords',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    '3. Get a list of keywords',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.sizeOf(context).width - 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color.fromARGB(255, 223, 219, 219),
                            border: Border.all(
                              color: Colors.blue,
                            )),
                        child: TextField(style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                            border: Border.all(
                                color: Color.fromARGB(255, 12, 31, 240))),
                        child: Icon(
                          Icons.arrow_right_sharp,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
