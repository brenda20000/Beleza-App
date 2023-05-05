import 'package:beleza/screens/ticket_view.dart';
import 'package:beleza/utils/app_info_list.dart';
import 'package:beleza/utils/app_layout.dart';
import 'package:beleza/utils/styles.dart';
import 'package:beleza/widgets/column_layout.dart';
import 'package:beleza/widgets/layout_builder_widget.dart';
import 'package:beleza/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack( children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          //padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)  ),
          children: [
            SizedBox(height: 40),
            Text("Tickets", style: Styles.headLineStyle1,),
            SizedBox(height: 20),
            AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(ticket: ticketList[0], isColor: true,),
            ),
            SizedBox(height: 1,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: 'Flutter DB', secondText: 'Passanger', alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(firstText: '5221 364869', secondText: 'Passport',alignment: CrossAxisAlignment.end,),
               
                    ],
                  ),
                  SizedBox(height: 20),
                  AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                  SizedBox(height: 20),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: '36786 268974', secondText: 'Number of E-ticket', alignment: CrossAxisAlignment.start,),
                      AppColumnLayout(firstText: 'B2SG58', secondText: 'Booking Code',alignment: CrossAxisAlignment.end,),
               
                    ],
                  ),
                  SizedBox(height: 20),
                  AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/image/visa.png", scale: 11,),
                              Text(" *** 2462", style: Styles.headLineStyle3,)
                            ],

                          ),
                           SizedBox(height: 5),
                           Text("Payment method", style: Styles.headLineStyle4,)
                        ],
                      ),
                      AppColumnLayout(firstText: '\$249.99', secondText: 'Price', alignment: CrossAxisAlignment.end,),
                    ],
                  ),
                   SizedBox(height: 1),

                ],
              ),
            ),
             /*
             Bar code
              */
          
          SizedBox(height: 1),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(21),
                bottomLeft: Radius.circular(21)
              )
            ),
            margin: EdgeInsets.only(left: 15, right: 15),
            padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
          /*child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: BarcodeWidget(
              barcode: Barcode.code128(),
              data: 'https://github.com/martinovovo',
              drawText: false,
              color: Styles.textColor,
              width: double.infinity,
              height: 70,
            ),
            ),*/
        ),
        ),
        SizedBox(height: 20),
        Container(
              padding: EdgeInsets.only(left: 15),
              child: TicketView(ticket: ticketList[0],),
            ),
          ],
        ),
        Positioned(
          left: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
              
            ),
          ),
        ),
          Positioned(
          right: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
              
            ),
          ),
        ),

        ]
      ),
    );
  }
}
