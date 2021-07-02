import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CounSellingAdvice extends StatefulWidget {
  final String name;
  final String occupation;
  final int yearsOfExperience;
  final String languagesKnown;
  final int onlineconsultationscompleted;
  final int stars;
  final String imagelink;
  final int price;
  CounSellingAdvice(
      {this.name = 'Akshat Ajay Das',
      this.languagesKnown = 'English Hindi',
      this.occupation = 'Psychologist,Couples Therapist',
      this.onlineconsultationscompleted = 560,
      this.stars = 5,
      this.price=550,
      this.imagelink = 'assets/image1 (1).jpg',
      this.yearsOfExperience = 12});
  @override
  _CounSellingAdviceState createState() => _CounSellingAdviceState();
}

class _CounSellingAdviceState extends State<CounSellingAdvice> {
  List<Icon> _myWidget(int count) {
    return List.generate(
        count,
        (i) => Icon(
              Icons.star,
              color: Colors.green,
            )).toList(); // replace * with your rupee or use Icon instead
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    List<bool> isSelected1 = [false];
    List<bool> isSelected2 = [false];
    List<bool> isSelected3 = [false];

    
    return Container(
        padding: EdgeInsets.only(left: 10,top:10,bottom: 10),
        width: size.width,
        decoration: BoxDecoration(
         //   border: Border.all(color: Colors.green, width: 3),
            color: Colors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width * 0.2,
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(widget.imagelink),
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
                          Text(widget.name),
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
                            widget.occupation,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(children: _myWidget(widget.stars))
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.navigate_next_outlined),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.yard_rounded,
                  color: Colors.yellow,
                ),
                Text(widget.yearsOfExperience.toString() + ' Years of experience')
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.mic_none_outlined,
                  color: Colors.yellow,
                ),
                Row(
                  children: [
                    Text(
                      'Languages ',
                    ),
                    Text(
                      widget.languagesKnown,
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.yard_rounded,
                  color: Colors.yellow,
                ),
                Text(widget.onlineconsultationscompleted.toString() +
                    ' online consultations completed')
              ],
            ),
            SizedBox(height: 10,),
            Row(children: [
              Icon(
                Icons.messenger_sharp,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Available Today'),
              SizedBox(
                width: width * 0.05,
              ),
              Row(
                children: [
                  ToggleButtons(
                    constraints: BoxConstraints(
                        minWidth: width * 0.2, minHeight: height * 0.03),
                    borderColor: Colors.blue,
                    selectedColor: Colors.blue,
                    color: Colors.blue,
                    isSelected: isSelected1,
                    onPressed: (int index) {
                      setState(() {
                        isSelected1[index] = !isSelected1[index];
                      });
                    },
                    children: [
                      Text('9:30 AM'),
                    ],
                  ),
                  SizedBox(width: 3),
                  ToggleButtons(
                    constraints: BoxConstraints(
                        minWidth: width * 0.2, minHeight: height * 0.03),
                    borderColor: Colors.blue,
                    color: Colors.blue,
                    isSelected: isSelected2,
                    onPressed: (int index) {
                      setState(() {
                        isSelected2[index] = !isSelected2[index];
                      });
                    },
                    children: [
                      Text('11:30 AM'),
                    ],
                  ),
                  SizedBox(width: 2),
                  ToggleButtons(
                    constraints: BoxConstraints(
                        minWidth: width * 0.12, minHeight: height * 0.03),
                    borderColor: Colors.blue,
                    color:  Colors.blue ,
                    isSelected: isSelected3,
                    onPressed: (int index) {
                      setState(() {
                      //  _hasBeenPressed3 = !_hasBeenPressed3;
                        isSelected3[index] = !isSelected3[index];
                      });
                    },
                    children: [
                      Text('More'),
                    ],
                  ),
                ],
              ),
            ]),
            SizedBox(height: 10,),
            Row(
              
              children: [
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Book Appointment',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
                SizedBox(
                  width: width*0.3,
                ),
                Text(
                  '\u20B9'+widget.price.toString(),
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                )
              ],
            )
          ],
        ),
    );
  }
}
