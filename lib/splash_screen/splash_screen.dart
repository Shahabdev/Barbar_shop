import 'package:barbur_ui/home_screens/home_screen.dart';
import 'package:flutter/material.dart';

class Splash_page extends StatelessWidget {
  const Splash_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xff24303C),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height / 7,
                ),
                Image.asset(
                  'assets/images/image2.png',
                  scale: 1.8,
                ),
                SizedBox(
                  height: height / 30,
                ),
                RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'BARBAR',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'SHOP',
                        style: TextStyle(
                            color: Color(0xffFF6A3C),
                            fontSize: 35,
                            fontWeight: FontWeight.w500))
                  ]),
                ),
                SizedBox(
                  height: height / 80,
                ),
               const  Center(
                  child: Text(
                    'Get the Best Haircut Here',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: height / 15,
                ),
                Center(
                  child: Container(
                    height: height / 14,
                    width: width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffFF6A3C), width: 4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                        child: Text(
                      'Book Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22),
                    )),
                  ),
                ),
                SizedBox(
                  height: height / 33,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home_page()));
                    },
                    child: Container(
                      height: height / 14,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        color: Color(0xffFF6A3C),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const  Center(
                          child: Text(
                        'Gets Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
