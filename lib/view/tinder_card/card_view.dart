library card_view;

import 'package:flutter/material.dart';
import 'package:pyco_test/view/tinder_card/item_card/card_section.dart';

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.black,
                ),
              ),
              Divider(height: 1, color: Colors.grey),
              Flexible(
                flex: 7,
                child: Container(
                  color: Colors.grey[200],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: CardsSection(),
            ),
          ),
        ],
      ),
    );
  }
}