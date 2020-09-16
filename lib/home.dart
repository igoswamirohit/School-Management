import 'package:flutter/material.dart';
import './main.dart';
import './calendar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0XFFD4E7FE),
            gradient: LinearGradient(
                colors: [Color(0XFFD4E7FE), Color(0XFFF9F9FB)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.8, 0.2]),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: RichText(
                    text: TextSpan(
                        text: 'Tue ',
                        style: TextStyle(
                            color: Color(0xFF263064),
                            fontSize: 12,
                            fontWeight: FontWeight.w900),
                        children: [
                      TextSpan(
                          text: '15 Sep',
                          style: TextStyle(
                              color: Color(0xFF263064),
                              fontSize: 12,
                              fontWeight: FontWeight.normal))
                    ])),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 0.5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.2),
                              blurRadius: 12,
                              spreadRadius: 8),
                        ],
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://imagevars.gulfnews.com/2020/01/22/Hrithik-Roshan--3--1579703264814_16fcda6e62f_large.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Rohit',
                        style: TextStyle(
                          color: Color(0XFF343E87),
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Here is a list of Schedule',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'you need to check!',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 185,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            height: MediaQuery.of(context).size.height - 230,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                buildTitleRow("TODAY'S CLASSES", 3),
                SizedBox(
                  height: 20,
                ),
                buildClassItem(
                    title: "The Special Theory of Relativity",
                    address: "Room C1, Faculty of Science Building",
                    teacherName: "Gaurav Tulsiani",
                    url:
                        'https://st1.bollywoodlife.com/wp-content/uploads/2020/07/Salman-Khan.jpg'),
                buildClassItem(
                    title: "Euclid\'s Geometry",
                    address: "Room Z1, Faculty of Science Building",
                    teacherName: "Sushil Tiwari",
                    url:
                        'https://akm-img-a-in.tosshub.com/indiatoday/reporter_image/ranveer-singh_6_053014110507_0.jpg?SnU_yf.LBFKyxGm3BjgVCXB7B_82YW6c'),
                SizedBox(
                  height: 15,
                ),
                buildTitleRow("YOUR TASKS", 4),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildTaskItem(
                          days: '3',
                          title: 'The Speical Theory of Relativity',
                          colors: Colors.red),
                      buildTaskItem(
                          days: '10',
                          title: 'Euclid\'s Geometry',
                          colors: Colors.green),
                      buildTaskItem(
                          days: '10',
                          title: 'Euclid\'s Geometry',
                          colors: Colors.green),
                      buildTaskItem(
                          days: '3',
                          title: 'The Speical Theory of Relativity',
                          colors: Colors.red),
                      buildTaskItem(
                          days: '10',
                          title: 'Euclid\'s Geometry',
                          colors: Colors.green)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Container buildTaskItem({String days, String title, Color colors}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(12),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
          color: colors.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deadline", style: TextStyle(fontSize: 10, color: Colors.grey)),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                    color: colors, borderRadius: BorderRadius.circular(3)),
              ),
              SizedBox(width: 5),
              Text(days + " days left",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Row buildTitleRow(String title, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(
                text: title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: Colors.black,
                ),
                children: [
              TextSpan(
                text: ' (' + number.toString() + ')',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Colors.grey,
                ),
              )
            ])),
        Text(
          'See all',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Color(0XFF3E3993)),
        )
      ],
    );
  }

  Container buildClassItem(
      {String title, String address, String teacherName, String url}) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0XFFF9F9FB)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '7:00',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'AM',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width - 160,
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                  )),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Text(
                      address,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(url),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 160,
                    child: Text(
                      teacherName,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}