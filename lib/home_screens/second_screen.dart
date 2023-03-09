import 'package:flutter/material.dart';

class Second_Screen extends StatefulWidget {
  const Second_Screen({Key? key}) : super(key: key);

  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff24303C),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.dehaze_rounded,
              size: 30,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Get the best ',
              style: TextStyle(color: Color(0xffFF6A3C), fontSize: 40),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, top: 10),
            child: Text(
              'hair style here.',
              style: TextStyle(color: Color(0xffFF6A3C), fontSize: 40),
            ),
          ),
          SizedBox(
            height: h / 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'choose the styles',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const Divider(
            color: Color(0xffFFFFFF),
            indent: 13.0,
            endIndent: 13.0,
          ),
          SizedBox(
            height: h * .03,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: w * .36,
                    height: h * .18,
                    decoration: BoxDecoration(
                        color: Color(0xffF1EEEE),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                        child: Image.asset(
                      'assets/images/image9.png',
                      scale: 1.3,
                    )),
                  ),
                  Container(
                    width: w * .36,
                    height: h * .18,
                    decoration: BoxDecoration(
                        color: Color(0xffF1EEEE),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                        child: Image.asset(
                      'assets/images/image10.png',
                      scale: 1.3,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: h*.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: w * .36,
                    height: h * .18,
                    decoration: BoxDecoration(
                        color: Color(0xffF1EEEE),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                        child: Image.asset(
                          'assets/images/image11.png',
                          scale: 1.3,
                        )),
                  ),
                  Container(
                    width: w * .36,
                    height: h * .18,
                    decoration: BoxDecoration(
                        color: Color(0xffF1EEEE),
                        borderRadius: BorderRadius.circular(22)),
                    child: Center(
                        child: Image.asset(
                          'assets/images/image12.png',
                          scale: 1.3,
                        )),
                  ),

                ],
              ),
              SizedBox(
                height: h*.04,
              ),
              const Divider(
                thickness: 0.8,
                color: Color(0xffFFFFFF),
                indent: 13.0,
                endIndent: 13.0,
              ),
             // SizedBox(height: h*.04,),
              SizedBox(height: h*.01,),


            ],
          ),
         const  Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Text(
              'Available Sheduling',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: h*.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h*.03,
                width: w*.3,
                decoration: BoxDecoration(
                  color: Color(0xffA4B3B6),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                        Icon(Icons.watch_later_outlined,color: Colors.white,),
                    Text('10:00 AM',style: TextStyle(color: Colors.white,fontSize:15 ),)
                    
                  ],
                ),
              ),
              Container(
                height: h*.03,
                width: w*.3,
                decoration: BoxDecoration(
                    color: Color(0xffFF6A3C),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.watch_later_outlined,color: Colors.white,),
                    Text('1:00 PM',style: TextStyle(color: Colors.white,fontSize:15 ),)

                  ],
                ),
              ),
              Container(
                height: h*.03,
                width: w*.3,
                decoration: BoxDecoration(
                    color: Color(0xffFF6A3C),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.watch_later_outlined,color: Colors.white,),
                    Text('3:00 PM',style: TextStyle(color: Colors.white,fontSize:15 ),)

                  ],
                ),
              ),

            ],
          ),
          SizedBox(
            height: h*.02,
          ),
          const Divider(
            thickness: 0.8,
            color: Color(0xffFFFFFF),
            indent: 13.0,
            endIndent: 13.0,
          ),
          // Container(
          //   child:Column(
          //     children: [
          //       Image.asset('assets/images/image13.png')
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
