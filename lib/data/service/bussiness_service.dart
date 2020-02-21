

import 'package:pyco_test/data/reponsity/bussiness_repo.dart';
import 'package:pyco_test/data/reponsity_implement/bussiness_impl.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';

class BusinessService {

  BusinessRepo _businessRepo;

  BusinessService() {
    _businessRepo = BusinessRepoImpl();
  }

  void dispose() {
    _businessRepo.dispose();
  }

  Future<List<Profile>> getProfile() =>
    _businessRepo.getProfile();

  Future updateCartInDB(List<FavoriteItem> favoriteItems) => _businessRepo.updateFavoriteInDB(favoriteItems);

  Future getCachedFavorite() => _businessRepo.getCachedFavorite();
}