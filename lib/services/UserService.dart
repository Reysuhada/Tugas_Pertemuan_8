import 'dart:async';
import 'package:tugas_pertemuan_8/db_helper/repository.dart';
import 'package:tugas_pertemuan_8/model/user.dart';

class UserService {
  late Repository _repository;
  UserService() {
    _repository = Repository();
  }

//Save User
  SaveUser(User user) async {
    return await _repository.insertData('users', user.userMap());
  }

//Read All Users
  readAllUsers() async {
    return await _repository.readData('users');
  }

//Edit User
  UpdateUser(User user) async {
    return await _repository.updateData('users', user.userMap());
  }

//Delete User
  deleteUser(userId) async {
    return await _repository.deleteDataById('users', userId);
  }
}
