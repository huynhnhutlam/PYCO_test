
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:pyco_test/data/service/bussiness_service.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

class ProfileNotifier extends ChangeNotifier {

  BusinessService bussinessService;

  ProfileNotifier(this.bussinessService);

  bool _loading = false;

  bool _checkActivity = true;

  List<FavoriteItem> _favoriteItems = List();

  List<FavoriteItem> get favoriteItems => _favoriteItems;

  List<Profile> _profiles = List();

  List<Profile> get profiles => _profiles;

  Profile _profile;

  Profile get profile => _profile;

  FavoriteItem _favoriteItem;

  FavoriteItem get favoriteItem => _favoriteItem;

  setProfile(Profile profile) {
    _profile = profile;
    _profiles.add(profile);
    if (_profiles.length < 10) {
      getProfile();
    }
    notifyListeners();
  }

  setFavoriteItem(FavoriteItem favoriteItem) {
    _favoriteItem = favoriteItem;
  }

  void removeFirstItem() {
    _profiles.removeAt(0);
  }

  Future<List<Profile>> getProfile() async{
    if (!_loading) {
      _loading = true;
    } else return null;
    List<Profile> profile = await bussinessService.getProfile()
      .catchError((error) {
        print(error);
      });
      _loading = false;
      setProfile(profile[0]);
    return profile;
  }
  
  Future<List<FavoriteItem>> getFavoriteOffine() async{
    List<FavoriteItem> favoriteItems = await bussinessService.getCachedFavorite()
    .catchError((error) {
      print(error);
    });
    setFavoriteItem(favoriteItems[0]);
    return favoriteItems;
  }
  
  void addFavorite(Profile profile) async{
    String base64image;
    String path;
    File filePath;
    if(_checkConnection() == null){
      print('a');
    }
    try {
      var imageId = await ImageDownloader.downloadImage(profile.user.picture.replaceFirst('http', 'https'));
      if (imageId == null) {
        return;
      }
      path = await ImageDownloader.findPath(imageId);
      filePath = new File(path);
      base64image = base64Encode(filePath.readAsBytesSync());
    if (!_loading) {
      _loading = true;
    } else return;
      FavoriteItem favoriteItem = FavoriteItem((b) => b
        ..id = null
        ..gender = profile.user.gender
        ..email = profile.user.email
        ..title = profile.user.name.title
        ..first = profile.user.name.first
        ..last = profile.user.name.last
        ..street = profile.user.location.street
        ..city = profile.user.location.city
        ..state = profile.user.location.state
        ..zip = profile.user.location.zip
        ..username = profile.user.username
        ..password = profile.user.password
        ..salt = profile.user.salt
        ..md5 = profile.user.md5
        ..sha1 = profile.user.sha1
        ..sha256= profile.user.sha256
        ..registered = profile.user.registered
        ..dob = profile.user.dob
        ..phone = profile.user.phone
        ..picture = base64image
        ..cell = profile.user.cell
        ..ssn = profile.user.ssn
        ..seed = profile.seed
        ..version = profile.version);
      _favoriteItems.add(favoriteItem);
      _loading = false;
      updateFavoriteInDB();
      getProfile();
      notifyListeners(); 
      } on PlatformException catch (error) {
      print(error);
    }
  }
  
  void updateFavoriteInDB() {
    bussinessService.updateCartInDB(_favoriteItems)
    .then((res) {
      print('Insert DB OK');
    })
    .catchError((error) {
      print(error.toString());
    });
  }

  Future<bool> _checkConnection() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      print('MOBILE');
      return _checkActivity;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      
      print('WIFI');
      return _checkActivity;
    }
    _checkActivity = false;
    return _checkActivity;
  }
}