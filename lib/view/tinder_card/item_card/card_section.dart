import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/notifiers/profile_notifier.dart';
import 'package:pyco_test/view/tinder_card/item_card/item_card.dart';

class CardsSection extends StatefulWidget {
  @override
  _CardsSectionState createState() => _CardsSectionState();
}

class _CardsSectionState extends State<CardsSection> {
  bool dragOverTarget = false;

  List<ItemCartView> cards = List();

  int cardsCounter = 0;

  int _cardChanging = -1;

  bool _initial = true;

  final _keyCard1 = GlobalKey<ItemCartViewState>(debugLabel: 'Card[0]');
  final _keyCard2 = GlobalKey<ItemCartViewState>(debugLabel: 'Card[1]');
  final _keyCard3 = GlobalKey<ItemCartViewState>(debugLabel: 'Card[2]');
  
  @override
  Widget build(BuildContext context) {
    var dxValue = - MediaQuery.of(context).size.width / 2; 
    return Consumer<ProfileNotifier>(
        builder: (_, notifier, __) {
          WidgetsBinding.instance.addPostFrameCallback((_){
            if(_initial){
              notifier.getProfile();
              notifier.getFavoriteOffine();
              _initial = false;
            }
          });
          if (notifier.profiles == null || notifier.profiles.length < 3) {
            return Center(child: CircularProgressIndicator());
          } else
        addListView(notifier.profiles);
        return Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0.0, 0.0),
              child: IgnorePointer(
                child: SizedBox.fromSize(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: cards[2],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.0),
              child: IgnorePointer(
                child: SizedBox.fromSize(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: cards[1],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.0, 0.0),
              child: Draggable(
                onDragEnd: (details) {
                 onDragTarget(details, dxValue, notifier);
                },
                feedback: SizedBox.fromSize(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: cards[0],
                ),
                child: SizedBox.fromSize(
                  size: Size(
                    MediaQuery.of(context).size.width * 0.8,
                    MediaQuery.of(context).size.height * 0.5,
                  ),
                  child: cards[0],
                ),
                childWhenDragging: Container(),
              ),
            ),
          ],
        );
      }
    );
  }

  void changeCardsOrder(ProfileNotifier notifier) {
    setState(() {
      if (_cardChanging + 1 < 3) {
        _cardChanging++;
      } else {
        _cardChanging = 0;
      }

      var temp = cards[0];
      cards[0] = cards[1];
      cards[1] = cards[2];
      cards[2] = temp;

      if(_cardChanging == 0) {
        _keyCard1.currentState.setProfile(notifier.profiles[3]);
      }
      if(_cardChanging == 1) {
        _keyCard2.currentState.setProfile(notifier.profiles[3]);
      }
      if(_cardChanging == 2) {
        _keyCard3.currentState.setProfile(notifier.profiles[3]);
      }

      notifier.removeFirstItem();
    });
  }

  void onDragTarget(DraggableDetails details, double dxValue, ProfileNotifier notifier) {
    if(details.offset.dx < dxValue) {
      notifier.getProfile();
      changeCardsOrder(notifier);
    }
    if(details.offset.dx > (-dxValue)) {
      notifier.addFavorite(notifier.profiles[0]);
      changeCardsOrder(notifier);
      notifier.getProfile();
    }
  }

  void addListView(List<Profile> profiles) {
      cards.add(ItemCartView(profile: profiles[0], key: _keyCard1,));
      cards.add(ItemCartView(profile: profiles[1], key: _keyCard2,));
      cards.add(ItemCartView(profile: profiles[2], key: _keyCard3,));
  }
}