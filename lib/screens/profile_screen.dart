import 'package:beleza/utils/styles.dart';
import 'package:beleza/widgets/column_layout.dart';
import 'package:beleza/widgets/layout_builder_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("assets/images/img_1.png"))),
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle1,
                  ),
                  SizedBox(height: 2),
                  Text("New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500)),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xFFFEF4F3)),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFF526799)),

                        ///icon problem
                        child: Icon(
                          Icons.shield_rounded,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "Premium status",
                        style: TextStyle(
                            color: Color(0xFF526799),
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 8),
                    ]),
                  ),
                ],
              ),
              Spacer(), //gives minimum space btw containers
              Column(
                children: [
                  InkWell(
                      onTap: () {
                        print("You are tapped");
                      },
                      child: Text(
                        "Edit",
                        style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                            fontWeight: FontWeight.w300),
                      ))
                ],
              )
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade300,),
          SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF264CD2))
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.lightbulb_circle_rounded,
                      color: Styles.primaryColor, size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award",
                        style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        Text("You have 96 flights in a year",
                        style: Styles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.w500,
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 16,
                        ),),
                      ],
                    )
                  ],
                ),
              )



            ],
          ),
          SizedBox(height: 25),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  //color: Colors.red,
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ]
            ),

            child: Column(
              children: [
                SizedBox(height: 15),
                Text(
                  "192802", 
                style: TextStyle(
                  fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                      Text("2 May 2023", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    ],
                  ),
                  Divider(color: Colors.grey.shade300,),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: "23 042", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start),

                      AppColumnLayout(firstText: "Airlines Co", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end),
                    
                    ],
                  ),
                  SizedBox(height: 12),
                  AppLayoutBuilderWidget(sections: 12, isColor: false,),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       AppColumnLayout(firstText: "24", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start),

                      AppColumnLayout(firstText: "McDonal\'s", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end),
                    ],
                  ),
                  SizedBox(height: 12),
                  AppLayoutBuilderWidget(sections: 12, isColor: false,),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       AppColumnLayout(firstText: "52 340", 
                      secondText: "Miles", 
                      alignment: CrossAxisAlignment.start),

                      AppColumnLayout(firstText: "DBestech", 
                      secondText: "Received from", 
                      alignment: CrossAxisAlignment.end),
                    ],
                  ),


              ],
            ),
          ),
          SizedBox(height: 25),
          InkWell(
            onTap: () => print("You are tapped"),
            child: Center(
              child: Text("How to get more miles", 
              style: Styles.textStyle.copyWith(
                color: Styles.primaryColor,
                fontWeight: FontWeight.w500)),
            ),
          )

        ],
      ),
    );
  }
}
