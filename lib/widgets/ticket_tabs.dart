import 'package:beleza/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          //borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
          color: Color(0xFFF4F6FD),
        ),
        child: Row(children: [
          /*Airline Tickets */
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * .44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              //borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.white,
            ),
            child: Center(child: Text(firstTab)),
          ),
          /*hoterls */
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            //padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
            width: size.width * .44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              //borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
              color: Colors.transparent,
            ),
            child: Center(child: Text(secondTab)),
          ),
        ]),
      ),
    );
  }
}
