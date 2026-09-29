import 'package:localstorage_statemanagement/model/student_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class StudentHelper {
  String dbName = "student_db1.db";
  String tableName = "students";

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), dbName);
    return openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        await db.execute("""
          CREATE TABLE $tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            age INTEGER CHECK(age >0 AND age <100),
            gender TEXT,
            phone TEXT UNIQUE,
            email TEXT UNIQUE
          )
        """);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        await db.execute("""
          CREATE TABLE IF NOT EXISTS $tableName(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT NOT NULL,
            age INTEGER CHECK(age >0 AND age <100),
            gender TEXT,
            phone TEXT UNIQUE,
            email TEXT UNIQUE
          )
        """);
      },
    );
  }

  Future<int> addStudent(StudentModel stu) async {
    var openDB = await initDB();

    return openDB.insert(tableName, stu.toMap());
  }

  Future<List<StudentModel>> getAllStudents() async {
    var openDB = await initDB();
    var data = await openDB.query(tableName);

    return data.map((e) => StudentModel.toDart(e)).toList();
  }

  Future<List<StudentModel>> getOneStudent(int id) async {
    var openDB = await initDB();
    var data = await openDB.query(tableName, where: 'id=?', whereArgs: [id]);
    return data.map((e) => StudentModel.toDart(e)).toList();
  }

  Future<int> updateStudent(StudentModel stu) async {
    var openDB = await initDB();
    return openDB.update(
      tableName,
      stu.toMap(),
      where: 'id = ?',
      whereArgs: [stu.id],
    );
  }

  Future<int> deleteStudent(int id) async {
    var openDB = await initDB();
    return openDB.delete(tableName, where: 'id=?', whereArgs: [id]);
  }

  Future<int> countStudent() async {
    var openDB = await initDB();
    var data = await openDB.rawQuery(
      "SELECT COUNT(*) AS total FROM $tableName",
    );
    return data.first['total'] as int? ?? 0;
  }
}
