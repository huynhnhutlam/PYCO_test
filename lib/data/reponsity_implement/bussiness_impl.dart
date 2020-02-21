import 'package:pyco_test/data/local/db_helper.dart';
import 'package:pyco_test/data/remote/bussiness/bussiness_api.dart';
import 'package:pyco_test/data/remote/http_handler.dart';
import 'package:pyco_test/data/remote/rest_api.dart';
import 'package:pyco_test/data/reponsity/bussiness_repo.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/bussiness/profile_res.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';



class BusinessRepoImpl extends BusinessRepo with HttpHandler {
  BusinessAPI _businessAPI;
  
  BusinessRepoImpl() {
    _create();
  }

  void _create() async {
    _businessAPI = await RestAPI.provideBusinessAPI();
  }

  @override
  void dispose() {
    _businessAPI.dispose();
  }

  @override
  Future<List<Profile>> getProfile() async{
    print('LOAD');
    ProfileResponse profile = await call(_businessAPI.getProfile());
    return List.of(profile.results);
  }

  @override
  Future<int> updateFavoriteInDB(List<FavoriteItem> favoriteItem) async{
   return await DbHelper().updateCacheFavorite(favoriteItem);
  }

  @override
  Future<List<FavoriteItem>> getCachedFavorite() async{
    return await DbHelper().getCachedFavorite();
  }
}
