import 'package:flutter/material.dart';

class CEO extends StatefulWidget {
  const CEO({Key? key}) : super(key: key);

  @override
  State<CEO> createState() => _CEOState();
}

class _CEOState extends State<CEO> {
  List Name = [
    "Sunder Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayan",
    "Deniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan",
  ];
  List Company = [
    "Google",
    "Microsoft",
    "Amazon",
    "Reliance LTD.",
    "Apple",
    "Adobe",
    "Alibaba",
    "BMW",
    "Dell",
    "Intel",
  ];
  List Images = [
    "Assets/Images/sunder.jpg",
    "Assets/Images/bill.jpg",
    "Assets/Images/jeff.jpg",
    "Assets/Images/mukesh.jpg",
    "Assets/Images/tim.jpg",
    "Assets/Images/shantanu.jpg",
    "Assets/Images/daniel.jpg",
    "Assets/Images/harald.jpg",
    "Assets/Images/michael.jpg",
    "Assets/Images/Bob.jpg",
  ];
  List color = [
    Colors.blueGrey.shade900,
    Colors.grey,
    Colors.blueGrey.shade900,
    Colors.grey,
    Colors.blueGrey.shade900,
    Colors.grey,
    Colors.blueGrey.shade900,
    Colors.grey,
    Colors.blueGrey.shade900,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              transform: GradientRotation(30),
              colors: [
                Colors.pink,
                Colors.blue,
              ],
            ),
          ),
          child: ListView.builder(
            itemCount: Name.length,
            itemBuilder: (context, index) => CEO(
              Name: Name[index],
              Images: Images[index],
              c1: color[index],
              Company: Company[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget CEO({String? Name, String? Company, String? Images, Color? c1}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: c1,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("$Images"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$Name",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    "$Company",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
