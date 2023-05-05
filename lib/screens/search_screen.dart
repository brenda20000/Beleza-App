import 'package:beleza/utils/app_layout.dart';
import 'package:beleza/utils/styles.dart';
import 'package:beleza/widgets/Icon_text_widget.dart';
import 'package:beleza/widgets/double_text_widget.dart';
import 'package:beleza/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        //padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          //SizedBox(AppLayout.getHeight(40)),
          Text("What are\n You looking for",
              style: Styles.headLineStyle1.copyWith(fontSize: 35)),
          //Text("What are\n You looking for", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          SizedBox(height: 20),
          //SizedBox(AppLayout.getHeight(20)),
         AppTicketTabs(firstTab: 'Airline Tickets', secondTab: 'Hotels',),    
         SizedBox(height: 25,),
         //SizedBox(AppLayout.getHeight(25)),
         AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
         SizedBox(height: 20),
         AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
         SizedBox(height: 25),
         Container(
         padding: EdgeInsets.symmetric(
         horizontal: 15, 
         vertical: 18),
         //padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12),vertical: AppLayout.getWidth(12)),
         decoration: BoxDecoration(
          color: Color(0xD91130CE),
           borderRadius: BorderRadius.circular(10),
        //borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
       ),
        child:Center(
        child: Text("Find tickets", style: Styles.textStyle.copyWith(color: Colors.white),
           ),
       ),
      ),
         SizedBox(height: 40),
         AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
         SizedBox(height: 15),
         Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(

              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              //padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
              height: 425,
               //height: AppLayout.getHeight(400),
              width: size.width*0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1,
                  )
                ]
              ),
              child: Column(
                children: [
                  Container(
                    height: 190,
                    //height: AppLayout.getHeight(190),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      //borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "Assets/images/sit.jpg"
                        ))
                    ),  
                  ),
                  SizedBox(height: 12),
                  //SizedBox(AppLayout.getHeight(12)),
                  Text(
                    "20% discount on the early booking of this flight, don't miss",
                    style: Styles.headLineStyle2.copyWith(color: Colors.grey.shade200),
                  )
                ]),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                  width: size.width*0.44,
                  height: 200,
                  //SizedBox(AppLayout.getHeight(144)),
                  decoration: BoxDecoration(
                    color: Color(0xFF3AB8BB),
                    borderRadius: BorderRadius.circular(18)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Discount\n for survey", 
                      style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10),
                      Text("Take survey about our services and get discounts.", 
                      style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 18),),
                    ],
                  ),

                ),
              Positioned(
                right: -45,
                top: -40,
                child:   Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Color(0xFF189999)),
                    color: Colors.transparent
                  ),

                ),)
                  ],
                ),
                 SizedBox(height: 15),
                 Container(
                  width: size.width*0.44,
                  height: 210,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15), horizontal:ppLayout.getWidth(15) )
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    //borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                    color: Color(0xFFEC6545)

                  ),
                  child: Column(
                    children: [
                      Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,),
                      SizedBox(height: 5),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: '@',
                            style: TextStyle(fontSize: 38)
                          ),
                          TextSpan(
                            text: '#',
                            style: TextStyle(fontSize: 50)
                          ),
                          TextSpan(
                            text: '\$',
                            style: TextStyle(fontSize: 38)
                          ),
                        ]))

                    ]
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
