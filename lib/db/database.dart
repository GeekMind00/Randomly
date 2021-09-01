import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:randomNumbersApp/models/userModel.dart';

class UsersDatabase {
  static final UsersDatabase instance = UsersDatabase._init();

  static Database? _database;

  UsersDatabase._init();

  Future<Database> get database async {
    _database = await _initDB('AppDatabase.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

// create users table with its attributes
    await db.execute('''
CREATE TABLE $tableUsers ( 
  ${UserFields.userID} $idType, 
  ${UserFields.userName} $textType,
  ${UserFields.email} $textType,
  ${UserFields.password} $textType
  )
''');
  }

//====================DB QUERIES==========================================================

  Future<User> createUser(User user) async {
    final db = await instance.database;

    final userID = await db.insert(tableUsers, user.toJson());
    return user.copy(userID: userID);
  }

  Future<List> readUser(String userName) async {
    final db = await instance.database;

    final maps = await db.query(
      tableUsers,
      columns: UserFields.values,
      where: '${UserFields.userName} = ?',
      whereArgs: [userName],
    );

    if (maps.isNotEmpty) {
      print("l2eto");
      return [User.fromJson(maps.first), 1];
    } else {
      User emptyUser =
          new User(userName: "none", password: "none", email: "none");
      return [emptyUser, 0];
    }
  }

  Future<List<User>> readAllUsers() async {
    final db = await instance.database;

    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(tableUsers);

    return result.map((json) => User.fromJson(json)).toList();
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
