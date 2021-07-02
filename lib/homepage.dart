import 'package:flutter/material.dart';
import 'package:interviewdoctortask/AppDrawer.dart';
import 'package:interviewdoctortask/RelationShipCounsellingTemplate.dart';
import 'package:interviewdoctortask/upcoming.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Book Therapists',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.calendar_today_rounded)],
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Upcoming Appointments'),
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                      textStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('View All'),
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor: Colors.blue,
                        primary: Colors.white),
                  )
                ],
              ),
            ),
            UpcomingAppointment(),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Relationship Counselling',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  width: width * 0.08,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.filter_list_rounded),
                    SizedBox(
                      width: 2,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Filters',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
             // margin: EdgeInsets.all(4),
              child: CounSellingAdvice(
                imagelink: 'assets/image1 (3).jpg',
                languagesKnown: 'English Hindi',
                name: 'Dr Ashok Gupta',
                occupation: 'Psychiatrist, Stress & Depression',
                onlineconsultationscompleted: 560,
                price: 550,
                stars: 5,
                yearsOfExperience: 12,
              ),
            ),
            SizedBox(
              height: height*0.04,
            ),
            CounSellingAdvice(
              imagelink: 'assets/image1 (2).jpg',
              languagesKnown: 'English Hindi Marathi',
              name: 'Dr Asha Deshmukh',
              occupation: 'Psychiatrist, Marriage Counselling',
              onlineconsultationscompleted: 210,
              price: 400,
              stars: 4,
              yearsOfExperience: 18,
            ),
            SizedBox(
              height: height*0.04,
            ),
            CounSellingAdvice(
              imagelink: 'assets/image1 (4).jpg',
              languagesKnown: 'English Hindi Marathi Pahadi',
              name: 'Dr Gaurang Shah',
              occupation: 'Psychiatrist, Marriage Counselling',
              onlineconsultationscompleted: 400,
              price: 600,
              stars: 3,
              yearsOfExperience: 18,
            )
          ],
        ),
      ),
    );
  }
}
