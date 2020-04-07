import 'package:flutter/material.dart';

import '../models/credit_card.dart';
import '../resources/database.dart' as db;
import '../screens/credit_card_screen.dart';
import '../widgets/credit_card_widget.dart';
import '../widgets/history_widget.dart';
import '../widgets/send_money_widget.dart';

class PaymentScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Home",
          style: TextStyle(inherit: true, color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: ListView(
        children: <Widget>[
          _buildCreditCards(),
          SendMoneyWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: HistoryWidget(),
          )
        ],
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  Widget _buildCreditCards() {
    var creditCards = db.getCreditCards();
    return Container(
      height: 250.0,
      margin: EdgeInsets.only(left: 4.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          CreditCard creditCard = creditCards[index];
          Color color =
              index % 2 == 0 ? Colors.white : Theme.of(context).primaryColor;

          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      CreditCardScreen(creditCard, themeColor: color),
                ));
              },
              child: CreditCardWidget(
                creditCard,
                collapsed: true,
                themeColor: color,
              ),
            ),
          );
        },
        itemCount: creditCards.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
