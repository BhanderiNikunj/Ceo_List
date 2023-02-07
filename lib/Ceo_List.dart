import 'package:ceo_list/ModalClass.dart';
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

  List Detail1 = [
    "Pichai Sundararajan (born June 10, 1972), better known as Sundar Pichai, is an Indian-American business executive. He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.",
    "William Henry Gates III (born October 28, 1955) is an American business magnate, author, investor, and philanthropist. He is a co-founder of Microsoft, along with his late childhood friend Paul Allen. During his career at Microsoft, Gates held the positions of chairman, chief executive officer (CEO), president and chief software architect, while also being the largest individual shareholder until May 2014. He was a major entrepreneur of the microcomputer revolution of the 1970s and 1980s.",
    "Jeffrey Preston Bezos (/ˈbeɪzoʊs/ BAY-zohss;[2] né Jorgensen; born January 12, 1964) is an American entrepreneur, media proprietor, investor, and commercial astronaut. He is the founder, executive chairman, and former president and CEO of Amazon. With a net worth of US\$128 billion as of February 2023, Bezos is the third-wealthiest person in the world and was the wealthiest from 2017 to 2021 according to both Bloomberg's Billionaires Index and Forbes.",
    "Mukesh Dhirubhai Ambani (born 19 April 1957) is an Indian billionaire businessman. He is the chairman and managing director of Reliance Industries Ltd. (RIL), a Fortune Global 500 company and India's most valuable company by market value. According to Forbes and Bloomberg Billionaires Index, Ambani's net worth is estimated at \$83.6 billion As of February 2023, making him the richest person in Asia and the 12th richest person in the world.",
    "Timothy Donald Cook (born November 1, 1960)[1] is an American business executive who has been the chief executive officer of Apple Inc. since 2011. Cook previously served as the company's chief operating officer under its co-founder Steve Jobs.",
    "Shantanu Narayen (born May 27, 1963)[1] is an Indian-American business executive. He has been the chairman, president, and chief executive officer (CEO) of Adobe Inc. since December 2007. Before this, he was the company's president and chief operating officer since 2005.",
    "Daniel Zhang Yong pinyin: is a Chinese technology executive. He is currently the CEO of Alibaba Group. Before becoming the CEO, Zhang was best known for his roles as CEO of Taobao and president of Tmall (owned by Alibaba). While running Tmall, Zhang created the Singles' Day shopping holiday, an annual Chinese sales event with gross sales reaching four times higher than Black Friday and Cyber Monday combined.",
    "Harald Krüger (born 13 October 1965 in Freiburg im Breisgau, West Germany[1]) is a German manager who served as the chairman of the board of management (CEO) for BMW; he was replaced on 16 August 2019 by Oliver Zipse, after he declined to be considered for contract renewal in 2020.",
    "Michael Saul Dell (born February 23, 1965) is an American billionaire businessman and philanthropist. He is the founder, chairman, and CEO of Dell Technologies, one of the world's largest technology infrastructure companies. He is ranked the 24th richest person in the world by Bloomberg Billionaires Index, with a net worth of \$45 billion as of October 2022.",
    "Robert (Bob) Holmes Swan (born 1959 or 1960)[1] is an American business executive. He was CEO of Intel Corporation from January 2019 until February 15, 2021. He joined Intel as CFO in October 2016 from General Atlantic, after spending years as CFO at eBay, Electronic Data Systems, and TRW Inc. Following the resignation of Brian Krzanich as Intel CEO, he was named interim CEO on June 21, 2018, and appointed to full-time CEO on January 31, 2019. As of February 15, 2021, Swan was replaced by VMware CEO Pat Gelsinger. In July 2021, Silicon Valley venture capital firm Andreessen Horowitz announced that Swan will be joining the firm.",
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
              Detail1: Detail1[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget CEO(
      {String? Name,
      String? Company,
      String? Images,
      Color? c1,
      String? Detail1}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Model m1 = Model(
              Name: Name, Company: Company, Image: Images, detail1: Detail1);
          Navigator.pushNamed(context, 'print', arguments: m1);
        },
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
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("$Images"),
                ),
                SizedBox(
                  width: 20,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
