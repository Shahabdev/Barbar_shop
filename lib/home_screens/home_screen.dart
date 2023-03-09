import 'package:barbur_ui/home_screens/second_screen.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List images = [
    'assets/images/image4.png',
    'assets/images/image5.png',
   // 'assets/images/image7.png',
    'assets/images/image8.png',
  ];
  var title = ['Hair cut', 'Hair washing', 'Beared triming'];
  List boolto=[true,false,true];
  bool isShow=false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff24303C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.dehaze_rounded,
              size: 30,
            ),
          )
        ],
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:  const Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
              child: ListTile(
                title: const Text(
                  'Hello',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                trailing: Image.asset('assets/images/image1.png'),
                subtitle:const  Text(
                  'Jake Smith',
                  style: TextStyle(
                      color: Color(0xffFF6A3C),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ), //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: const  Icon(
                      Icons.search,
                      size: 35,
                    ),
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(fontSize: 20),
                    hintText: 'Chose the hair style',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            ), // TextFormfield
            SizedBox(
              height: h / 27,
            ),
            const Text(
              'Service',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),

            Container(
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemCount: title.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Container(
                          height: h * 0.18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: w / 30),
                                    Image.asset(
                                      images[index],
                                      scale: 1.3,
                                    ),
                                    SizedBox(width: w / 30),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            title[index],
                                            style: TextStyle(
                                                color: Color(0xff24303C),
                                                fontSize: 25,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(height: h / 150),
                                          Text(
                                            'Lorem ipsum what my father goes down,computer tu koy peer ya ',
                                            style: TextStyle(
                                                color: Color(0xff86888A)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 14),
                                      child: Container(
                                        height: h / 25,
                                        width: w / 4,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Color(0xffFF6A3C)),
                                        child: Center(
                                            child: Text(
                                          'Book Now',
                                          style:
                                              TextStyle(color: Colors.white),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

   boolto[index]==false? Positioned(
                         top: .0,
                         left: w * 0.8,
                         child: Image.asset(
                           'assets/images/image7.png',
                           scale: 1.4,
                         )):Text(''),
                 boolto[index]==false  ?    Positioned(
                         left: w * 0.85,
                         top: 20.0,
                         child: const Text(
                           (' 50 % \n OFF'),
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.w600),
                         ),
                       ):Text('')


                    ]);
                  }),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 100, right: 100, bottom: 40),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Second_Screen()));
                },
                child: Container(
                  height: h / 16,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffFF6A3C)),
                  child: const Center(
                      child: Text(
                    'Load more',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
