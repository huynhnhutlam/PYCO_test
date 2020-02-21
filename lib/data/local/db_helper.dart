import 'package:pyco_test/model/favorite/favorite_item.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {

  static final String favoriteTable = 'Favorite';

  DbHelper.internal();

  static final DbHelper _instance = DbHelper.internal();

  factory DbHelper() => _instance;

  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await _initDb();
      return _db;
    }
  }

  Future<Database> _initDb() async {
    String root = await getDatabasesPath();
    String dbPath = join(root, 'pycotest.db');
    Database db = await openDatabase(
      dbPath,
      version: 9,
      onCreate: _onCreate,
      onDowngrade: _onDowngrade,
      onUpgrade: _onUpgrade
    );
    return db;
  }

  void _onDowngrade(Database db, int version, int optionValue) {

  }

  void _onUpgrade(Database db, int version, int optionValue) {

  }

  void _onCreate(Database db, int version) async {
    await db.execute(
      "CREATE TABLE $favoriteTable (" +
      "FavoriteId INTEGER PRIMARY KEY," +
      "Gender TEXT," + 
      "Email TEXT," + 
      "Title TEXT," + 
      "First TEXT," +
      "Last TEXT," +
      "Street TEXT," + 
      "City TEXT," + 
      "State TEXT," +
      "Zip TEXT," +
      "Username TEXT," + 
      "Password TEXT," + 
      "Salt TEXT," + 
      "Md5 TEXT," +
      "Sha1 TEXT," + 
      "Sha256 TEXT," + 
      "Registered TEXT," +
      "Dob TEXT," + 
      "Phone TEXT," + 
      "Cell TEXT," +
      "Ssn TEXT," +
      "Picture TEXT," +
      "Seed TEXT," +
      "Version TEXT" +
      ");"
    );
  }

  Future clearCacheFavorite() async {
    Database ourDB = await db;
    return ourDB.delete(favoriteTable);
  }

  Future<int> updateCacheFavorite(List<FavoriteItem> favoriteItems) async {
    print(favoriteItems.toString());
    Database ourDB = await db;
    var res;
    for (FavoriteItem orderItem in favoriteItems) {
      res = await ourDB.insert(favoriteTable, orderItem.toMap());
    }
    return res;
  }

  Future<List<FavoriteItem>> getCachedFavorite() async {
    Database ourDB = await db;
    var res = await ourDB.query(favoriteTable);
    return FavoriteItem.fromJsonArray(res);
  }

  void dispose() {
    if (_db != null) {
      _db.close();
    }
  }
}