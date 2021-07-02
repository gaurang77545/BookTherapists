import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
class UpcomingAppointment extends StatefulWidget {
  const UpcomingAppointment({Key? key}) : super(key: key);

  @override
  _UpcomingAppointmentState createState() => _UpcomingAppointmentState();
}

class _UpcomingAppointmentState extends State<UpcomingAppointment> {
  Color border = Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Ink(
      child: InkWell(
        child: Container(
          padding: EdgeInsets.all(3),
          width: size.width,
          decoration: BoxDecoration(
            border: Border.all(color: border, width: 3),
            color: Colors.white
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
           children: [
            Container(
              width: width * 0.2,
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/image1 (1).jpg",
                ), // no matter how big it is, it won't overflow
              ),
            ),
            Container(
              height: 100,
              width: size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Akshay Ajay Das'),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.verified_rounded,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Psychologist,Couples Therapist',
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.green,
                        ),
                        height: 30,
                        width: 50,
                        //      padding: EdgeInsets.all(3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '4.1',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('8 years of experience')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Today 10:30 AM-11:30 AM'),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(Icons.navigate_next_outlined),
            )
          ]),
        ),
        onTap: () {
          setState(() {
            if (border == Colors.white) {
              border = Colors.red;
            } else {
              border = Colors.white;
            }
          });
        },
      ),
    );
  }
}
