import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:localstorage_statemanagement/database/student_helper.dart';
import 'package:localstorage_statemanagement/model/student_model.dart';

class StudentController extends AsyncNotifier<List<StudentModel>> {
  StudentHelper helper = StudentHelper();

  int countStudent = 0;
  @override
  Future<List<StudentModel>> build() async {
    loadingData();
    return await helper.getAllStudents();
  }

  void loadingData() async {
    countStudent = await helper.countStudent();
  }

  Future<void> insertStudent(StudentModel stu) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await helper.addStudent(stu);
      loadingData();
      return await helper.getAllStudents();
    });
  }

  Future<void> getAStudent(int id) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await helper.getOneStudent(id);
    });
  }

  Future<void> updateStudent(StudentModel stu) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await helper.updateStudent(stu);
      return await helper.getAllStudents();
    });
  }

  Future<void> deleteStudent(int id) async {
    state = AsyncLoading();
    state = await AsyncValue.guard(() async {
      await helper.deleteStudent(id);
      loadingData();
      return await helper.getAllStudents();
    });
  }
}

final studentProvider =
    AsyncNotifierProvider<StudentController, List<StudentModel>>(
      StudentController.new,
    );

class SelectedGender extends Notifier<String> {
  @override
  String build() {
    return "Male";
  }

  void setGender(String value) {
    state = value;
  }
}

final selectGenderProvider = NotifierProvider<SelectedGender,String>(SelectedGender.new);
