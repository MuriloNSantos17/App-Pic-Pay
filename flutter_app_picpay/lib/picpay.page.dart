import 'package:flutter/material.dart';
import 'package:flutter_app_picpay/widgets/activity_item.dart';
import 'package:flutter_app_picpay/widgets/bottom_menu_widget.dart';
import 'package:flutter_app_picpay/widgets/button_tabs.dart';
import 'package:flutter_app_picpay/widgets/history.widget.dart';

class PicPayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildAppBar(context),
              SizedBox(
                height: 10,
              ),
              buildHistory(),
              SizedBox(
                height: 10,
              ),
              buildPromotion(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text("Atividades",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),),
                    Spacer(),
                    ButtonTab(
                      isSelected:false,
                      texto:"Todos",

                    ),
                    ButtonTab(
                      isSelected:true,
                      texto:"Minhas",
                      colorBorder: Color.fromRGBO(17, 199, 111, 1)
                    ),
                  ],
                ),
              ),

              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (_,index){
                    return ActivityItem();
              }),

            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100,
        color: Colors.transparent,
        padding: EdgeInsets.only(bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(17, 199, 111, 1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.attach_money ,
                color: Colors.white,
              ),
            ),
            Text("Pagar",style: TextStyle(
              color: Color.fromRGBO(17, 199, 111, 1),
            ),)
          ],
        ),


      ),
      bottomNavigationBar: buildBottomBar()
    );
  }
}

Widget buildBottomBar()
{
  return Container(
    color: Colors.white,
    height: 50,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                child:BottomMenu(
                  icon: Icons.home_filled,
                  isSelected: true,
                  text: "Início",
                ),
              ),
              Expanded(
                child:  BottomMenu(
                  isSelected: false,
                  icon: Icons.account_balance_wallet_outlined,
                  text: "Carteira",
                ),
              ),

            ],
          ),
        ),
        Spacer(),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: BottomMenu(
                  icon: Icons.notifications_outlined,
                  isSelected: false,
                  text: "Notificações",
                ),
              ),


              BottomMenu(
                isSelected: false,
                icon: Icons.shopping_bag_outlined,
                text: "Shop",
              ),
              SizedBox(
                width: 20,
              )
            ],

          ),
        ),

      ],
    ),

  );
}

Widget buildAppBar(BuildContext context){
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          children: [
            IconButton(icon: Icon(Icons.qr_code_outlined, color: Color.fromRGBO(17, 199, 111, 1),),
                onPressed: (){}),
            IconButton(icon: Icon(Icons.settings_outlined,color: Color.fromRGBO(17, 199, 111, 1),), onPressed:(){}),
            Spacer(),
            Column(
              children: [
                Text("Meu Saldo", style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                Text("R\$ 550.522,99",
                  style: Theme.of(context).textTheme.headline6, )
              ],
            ),
            Spacer(),
            IconButton(icon: Icon(Icons.card_giftcard_outlined, color: Color.fromRGBO(17, 199, 111, 1),),
                onPressed: (){}),
            IconButton(icon: Icon(Icons.maps_ugc_outlined, color: Color.fromRGBO(17, 199, 111, 1),),
                onPressed: (){}),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: (){

          },
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black38
                ),
                borderRadius: BorderRadius.circular(50)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("O que você quer pagar?",style:
                TextStyle(
                  fontSize: 18,
                  color: Colors.black38,
                ),)
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildHistory(){
  return Column(
    children: [
      Row(
        children: [
          ButtonTab(
            isSelected:true,
            texto:"Sugestões",
          ),
          ButtonTab(
            isSelected:false,
            texto:"Favoritos",
          ),
          ButtonTab(
            isSelected:false,
            texto:"Favoritos",
          ),
          ButtonTab(
            isSelected:false,
            texto:"Favoritos",
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      History(),
    ],
  );
}

Widget buildPromotion(){
  return Card(
    elevation: 3,
    margin: const EdgeInsets.all(10),
    child: InkWell(
      onTap: (){},
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: Color.fromRGBO(17, 199, 111, 1),
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Seleção especial"),
                Text("Promoções disponíveis",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),

              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color.fromRGBO(17, 199, 111, 1),
              size: 15,
            ),


          ],
        ),

      ),
    ),
  );
}
