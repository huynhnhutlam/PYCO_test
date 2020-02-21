import 'package:flutter/material.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';
import 'package:pyco_test/view/tinder_card/item_card/bottom_icon.dart';

class ItemCartOffineView extends StatefulWidget {
  final FavoriteItem favorite;

  const ItemCartOffineView({Key key, this.favorite}) : super(key: key);
  @override
  ItemCartOffineViewState createState() => ItemCartOffineViewState();
}

class ItemCartOffineViewState extends State<ItemCartOffineView> {

  int _selectedIndex = 0;

  FavoriteItem _favorite;

  DateTime _dateTime;

  final mainStyle = TextStyle(
      fontSize: 20, 
      color: Colors.black, 
      fontWeight: FontWeight.w500,
    );

  final subStyle = TextStyle(fontSize: 16, color: Colors.grey,);
  
  @override
  void initState() {
    _favorite = widget.favorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:_buildBody(_favorite),
    );
  }

  Widget _buildBody(FavoriteItem profile) {
    return Card(
      elevation: 5,
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Container(
                  color: Colors.grey[200],
                ),
              ),
              Divider(height: 1, color: Colors.grey),
              Flexible(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: _viewInfo(_selectedIndex, profile),
                    ),
                    SizedBox(height: 16),
                    BottomIconBar(
                      onTap: _onItemTapped,
                      index: _selectedIndex,
                    ),
                    SizedBox(height: 16)
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 40,
            child: Center(
              child: _avatar(
                profile.picture ?? '', 
                size: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _avatar(String imageUrl,{double size}) {
    return Container(
      height: size,
      width: size,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        shape: BoxShape.circle,
        // ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size / 2),
        child: Image.network(imageUrl ?? '', fit: BoxFit.cover),
      )
    );
  }
   
  Widget _userInfo(FavoriteItem favoriteItem){
    return Column(
      children: <Widget>[
        Text(
          '${favoriteItem.title ?? ''}',
          style: mainStyle,),
        SizedBox(height: 4),
        Text(
          '${favoriteItem.first} ${favoriteItem.last}', 
          textAlign: TextAlign.center,
          style: mainStyle,
        ),
        SizedBox(height: 8),
        Text('Gender: ${favoriteItem.gender}',style: subStyle,),
      ],
    );
  }
  
  Widget _userRes(FavoriteItem favoriteItem){
    _dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(favoriteItem.registered));
    return Column(
      children: <Widget>[
        Text(
          'Registered',
          style: subStyle,),
        SizedBox(height: 4),
        Text(
          '${_dateTime.day ?? '01'}/${_dateTime.month ?? '01'}/${_dateTime.year ?? 1990}', 
          textAlign: TextAlign.center,
          style: mainStyle,
        ),
      ],
    );
  }
  
  Widget _userAddress(FavoriteItem favoriteItem){
    return Column(
      children: <Widget>[
        Text('My Addressed Is',style: subStyle),
        SizedBox(height: 8),
        Text(
          '${favoriteItem.street}, ${favoriteItem.city}, ${favoriteItem.state}.',
          textAlign: TextAlign.center,
          style: mainStyle)
      ],
    );
  }
  
  Widget _userContact(FavoriteItem favoriteItem){
    return Column(
      children: <Widget>[
        Text(
          'Phone: ${favoriteItem.phone ?? ''}',
          style: subStyle,),
        SizedBox(height: 4),
        Text(
          'Cel: ${favoriteItem.cell ?? ''}', 
          style: subStyle,
        ),
        SizedBox(height: 8),
        Text(
          'Email: ${favoriteItem.email ?? ''}',
          textAlign: TextAlign.center,
          style: subStyle,),
      ],
    );
  }
  
  Widget _userAccount(FavoriteItem favoriteItem){
    return Column(
      children: <Widget>[
        Text('Account',style: subStyle,),
        Text('${favoriteItem.username}',style: mainStyle),
        // ListTile(
        //   title: Text('Favorite', style: subStyle),
        //   onTap: () {
        //     // _showFavorite(userData);
        //   },
        // )
      ],
    );
  }
  
  Widget _viewInfo(int index, FavoriteItem favoriteItem) {
    switch (index) {
      case 0:
        return _userInfo(favoriteItem);
        break;
      case 1: 
        return _userRes(favoriteItem);
        break;
      case 2:
        return _userAddress(favoriteItem);
        break;
      case 3: 
        return _userContact(favoriteItem);
        break;
      case 4: 
        return _userAccount(favoriteItem);
        break;
      default:
      return null;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void setProfile(FavoriteItem favorite) {
    setState(() {
       _favorite = favorite;
    });
  }
}