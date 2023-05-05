import 'package:beleza/screens/hotel_page.dart';
import 'package:beleza/screens/ticket_view.dart';
import 'package:beleza/utils/styles.dart';
import 'package:beleza/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/app_info_list.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text("Good Morning",  style: Styles.headLineStyle3,), 
                       SizedBox(height: 5),
                       Text("Book Tickets",  style: Styles.headLineStyle1,),
                    ],
                  ),
                  Container(
                     height: 50,
                     width: 50,
                     decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage(
                            "assets/images/img_1.png" //logo
                          ) )
                      ),
                  )
                ],
              ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD) 

                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Color(0xFFBFC205)),
                      Text("Search", style: Styles.headLineStyle4,)
                
                  ],
                              ),
                ),
                SizedBox(
                  height: 40),
                  //height: AppLayout.getHeight(40)),
               AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View all")


            ]),
          ),
          SizedBox(
            //height: AppLayout.getHeight(15),
            height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket,)).toList(),
            ),
          ),
          SizedBox(height: 15),
          Container( 
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),
            
            ),
        ],
      ),
      
    );
  }
}

