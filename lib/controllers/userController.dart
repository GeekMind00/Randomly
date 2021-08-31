import 'package:randomNumbersApp/models/userModel.dart';
import '../db/database.dart';

class UserController {
  Future signUpController(
      String userName, String email, String password) async {
    //encryption
    User user = new User(
      userName: userName,
      email: email,
      password: password,
    );
    user = await UsersDatabase.instance.createUser(user);
  }

  Future<String> loginController(String userName, String password) async {
    List result = await UsersDatabase.instance.readUser(userName);

    if (result[1]) {
      //Authentication & decryption
      return "Access granted";
    } else
      return "User not found, please sign up!";
  }
}
