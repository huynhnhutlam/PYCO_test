import 'package:flutter/material.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/bussiness/user_data.dart';
import 'package:pyco_test/view/tinder_card/item_card/bottom_icon.dart';

class ItemCartView extends StatefulWidget {
  final Profile profile;

  const ItemCartView({Key key, this.profile}) : super(key: key);
  @override
  ItemCartViewState createState() => ItemCartViewState();
}

class ItemCartViewState extends State<ItemCartView> {

  int _selectedIndex = 0;

  Profile _profile;

  DateTime _dateTime;

  final mainStyle = TextStyle(
      fontSize: 20, 
      color: Colors.black, 
      fontWeight: FontWeight.w500,
    );

  final subStyle = TextStyle(fontSize: 16, color: Colors.grey,);
  
  @override
  void initState() {
    _profile = widget.profile;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:_buildBody(_profile),
    );
  }

  Widget _buildBody(Profile profile) {
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
                profile.user.picture ?? '', 
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
   
  Widget _userInfo(UserData userData){
    return Column(
      children: <Widget>[
        Text(
          '${userData.name.title ?? ''}',
          style: mainStyle,),
        SizedBox(height: 4),
        Text(
          '${userData.name.first} ${userData.name.last}', 
          textAlign: TextAlign.center,
          style: mainStyle,
        ),
        SizedBox(height: 8),
        Text('Gender: ${userData.gender}',style: subStyle,),
      ],
    );
  }
  
  Widget _userRes(UserData userData){
    _dateTime = DateTime.fromMillisecondsSinceEpoch(int.parse(userData.registered));
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
  
  Widget _userAddress(UserData userData){
    return Column(
      children: <Widget>[
        Text('My Addressed Is',style: subStyle),
        SizedBox(height: 8),
        Text(
          '${userData.location.street}, ${userData.location.city}, ${userData.location.state}.',
          textAlign: TextAlign.center,
          style: mainStyle)
      ],
    );
  }
  
  Widget _userContact(UserData userData){
    return Column(
      children: <Widget>[
        Text(
          'Phone: ${userData.phone ?? ''}',
          style: subStyle,),
        SizedBox(height: 4),
        Text(
          'Cel: ${userData.cell ?? ''}', 
          style: subStyle,
        ),
        SizedBox(height: 8),
        Text(
          'Email: ${userData.email ?? ''}',
          textAlign: TextAlign.center,
          style: subStyle,),
      ],
    );
  }
  
  Widget _userAccount(UserData userData){
    return Column(
      children: <Widget>[
        Text('Account',style: subStyle,),
        Text('${userData.username}',style: mainStyle),
        // ListTile(
        //   title: Text('Favorite', style: subStyle),
        //   onTap: () {
        //     // _showFavorite(userData);
        //   },
        // )
      ],
    );
  }
  
  Widget _viewInfo(int index, Profile profile) {
    switch (index) {
      case 0:
        return _userInfo(profile.user);
        break;
      case 1: 
        return _userRes(profile.user);
        break;
      case 2:
        return _userAddress(profile.user);
        break;
      case 3: 
        return _userContact(profile.user);
        break;
      case 4: 
        return _userAccount(profile.user);
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

  void setProfile(Profile profile) {
    setState(() {
       _profile = profile;
    });
  }
}