import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: FlutterLogo(

                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                      TextSpan(
                          text:"Você ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                          children: [
                            TextSpan(
                              text: "enviou um ",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15
                              ),

                            ),
                            TextSpan(
                                text: "Pix"
                            ),
                            TextSpan(
                              text: " para",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15
                              ),
                            ),
                            TextSpan(
                                text: " Nataly Ianiski"
                            ),
                          ]
                      )
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Pagamento por música composta",style:
                TextStyle(
                  fontSize: 15,
                ),),                       ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    "R\$ 200,00",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),

                  Icon(
                    Icons.lock,
                    color: Colors.black38,
                    size: 15,
                  ),
                  Text(
                    "  |  1 dia atrás",
                    style: TextStyle(
                      color: Colors.black38,
                      fontSize: 13,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black38,
                  ),
                  Text("5",style: TextStyle(
                      color: Colors.black38
                  ),),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black38,
                  ),
                  Text("15",style: TextStyle(
                    color: Colors.black38,

                  ),),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
