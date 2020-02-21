
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';

abstract class BusinessRepo {
  void dispose();

  Future<List<Profile>> getProfile();

  Future<int> updateFavoriteInDB(List<FavoriteItem> favoriteItem);

  Future<List<FavoriteItem>> getCachedFavorite();
}
