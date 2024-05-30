import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'footer.dart';
import 'navbar.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> carouselItems = [
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipM6gKtlutRbTw9auRl7TCGfEDWdilggGpI31MzI=s435-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipNqcYbPmPitY8WEECwDoOFHSRzY7TFLMowZhpaE=s580-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipObzYmSu38FBh-S5R__dkrGf7wM-jYXGdiZwXV-=s489-k-no'),),
        ],
      ),
    ),

    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipObzYmSu38FBh-S5R__dkrGf7wM-jYXGdiZwXV-=s489-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipNqcYbPmPitY8WEECwDoOFHSRzY7TFLMowZhpaE=s580-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipM6gKtlutRbTw9auRl7TCGfEDWdilggGpI31MzI=s435-k-no'),),
        ],
      ),
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipNqcYbPmPitY8WEECwDoOFHSRzY7TFLMowZhpaE=s580-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipObzYmSu38FBh-S5R__dkrGf7wM-jYXGdiZwXV-=s489-k-no'),),
          Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipM6gKtlutRbTw9auRl7TCGfEDWdilggGpI31MzI=s435-k-no'),),
        ],
      ),
    ),

  ];
  final List<String> images = [
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
    'assets/house.jpg',
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60.0),
      //   child: NavBar(),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add sections of your home page here
            Container(
              height: 350,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/house.jpg'), // Your background image
          //     fit: BoxFit.cover,
          //   ),
          // ),

              //width: 1100,
             // color: Colors.blue,
              child:
              // Image.asset('assets/house.jpg',height: 350,width: 1000,)
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipM6gKtlutRbTw9auRl7TCGfEDWdilggGpI31MzI=s435-k-no'),),
              //       Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipNqcYbPmPitY8WEECwDoOFHSRzY7TFLMowZhpaE=s580-k-no'),),
              //       Container(child: Image.network(height: 350,fit: BoxFit.cover,'https://lh5.googleusercontent.com/p/AF1QipObzYmSu38FBh-S5R__dkrGf7wM-jYXGdiZwXV-=s489-k-no'),),
              //     ],
              //   ),
              // ),
              Stack(
                children: [

                  CarouselSlider(
                    items: carouselItems,
                    options: CarouselOptions(
                      viewportFraction: 1,
                      height: 350, // Customize the height of the carousel
                      autoPlay: true, // Enable auto-play
                      enlargeCenterPage: true, // Increase the size of the center item
                      enableInfiniteScroll: true, // Enable infinite scroll
                      onPageChanged: (index, reason) {
                        // Optional callback when the page changes
                        // You can use it to update any additional UI components
                      },
                    ),
                  ),
                  Container(
                    height: 350,

                    child: Center(child: Container(
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(10),
                      child: Text('আমেনা ট্রেডার্সে \nস্বাগতম',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                          color: Colors.deepOrangeAccent),textAlign: TextAlign.center,),
                    )),
                  ),
                ],

              ),
            ),
            Container(
              //height: 400,
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child:  Center(
                child: Column(
                  children: [
                    Text('আমেনা ট্রেডার্স',
                      style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 60.0,
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage('assets/abba.jpg',),
                                      radius: 50.0,
                                    ),
                                  ),
                                ),
                              ),
                              height: 150,
                              width: 150,
                            ),
                            Text('মরহুম হাজি বাচ্চু মিয়া',
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Flexible(
                          child: Text('সুনামগঞ্জ জেলার ধর্মপাশা উপজেলার পূর্ব বাজারে অবস্থিত একটি সুনামধন্য ব্যবসায়িক প্রতিষ্ঠান । মরহুম হাজি বাচ্চু মিয়া সাহেবের হাতে গড়া এই প্রতিষ্ঠান ২০০০ সাল থেকে যাত্রা শুরু করে। প্রতিষ্ঠার পর থেকে সততা ও দক্ষতার সাথে পরিচালিত হচ্ছে এবং উন্নত ও গুনগত মান সম্পন্ন পণ্য সামগ্রী বিক্রয়ের মাধ্যমে অত্র এলাকায় বিপুল সুনাম অর্জন করেছে। ',
                              style: TextStyle(color: Colors.black, fontSize: 15,),
                              textAlign: TextAlign.justify
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('এই এখানে রঙিন ও সাদা ডেউ টিন, রড, সিমেন্ট,খুঁটি,সকল প্রকার সেনিটারি পণ্য,পানির টেংকি,পাইপ ও পানি সাপ্লাই এর যাবতীয় যন্ত্রাংশ,সাবমার্সিবল পাম্প,হার্ডওয়ার পণ্য,জিও কম্বল,বার্মিজ শিট,প্লেইন শিট,প্লাস্টিকের দরজা,বেড়ার  নেট আরও বিভিন্ন ধরণের গৃহী নির্মাণ সামগ্রী সুলভ মূল্যে বিক্রি করা হয়। ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.justify
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding:EdgeInsets.all(0),
              //height: 400,
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    Text('যোগাযোগ', style: TextStyle(color: Colors.black, fontSize: 32)),
                    SizedBox(height: 20,),
                    ContactInfoSection(),
                    // SizedBox(height: 20,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Icon(Icons.location_on_outlined,size: 40,color: Colors.blue,),
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text('লোকেশন', style: TextStyle(color: Colors.blue, fontSize: 12)),
                    //             Text('পূর্ব বাজার,ধর্মপাশা,সুনামগঞ্জ', style: TextStyle(color: Colors.black, fontSize: 12)),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //     SizedBox(width: 20,),
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Icon(Icons.phone_in_talk,size: 40,color: Colors.blue,),
                    //         Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Text('ফোন', style: TextStyle(color: Colors.blue, fontSize: 12)),
                    //             Text('01725576156', style: TextStyle(color: Colors.black, fontSize: 12)),
                    //           ],
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // )

                  ],
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
      //bottomNavigationBar: Footer(),
    );
  }
}

class ContactInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContactInfoCard(
            icon: Icons.phone,
            title: 'ফোন',
            details: [
              '01725576156',

            ],
          ),
          ContactInfoCard(
            icon: Icons.location_on,
            title: 'লোকেশন',
            details: [
              'পূর্ব বাজার,ধর্মপাশা,সুনামগঞ্জ',
            ],
          ),
        ],
      ),
    );
  }
}
class ContactInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> details;

  ContactInfoCard({
    required this.icon,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal,
          child: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
        ),
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        for (var detail in details)
          Text(
            detail,
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}
