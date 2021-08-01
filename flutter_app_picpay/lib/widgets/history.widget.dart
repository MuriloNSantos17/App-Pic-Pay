import 'package:flutter/material.dart';
class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      margin: const EdgeInsets.only(left: 5),
      child: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (notification){
          notification.disallowGlow();
          return true;
        },
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (_,index){
              return Container(
                width: 90,
                padding: const  EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      padding: const  EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black38,
                          )
                      ),
                      child: FlutterLogo(),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        "PIX",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    )
                  ],
                ),
              );
            } ),
      ),
    );
  }
}
