import 'package:randomNumbersApp/models/userModel.dart';
import '../db/database.dart';
import '../core/encryptor.dart';

class UserController {
  static String authController(List result, String passwordByUser) {
    String authMessage = "";
    if (result[1] == 1) {
      passwordByUser = Encryptor.encrypt(passwordByUser);
      String passwordInDatabase = result[0].password;

      if (passwordByUser != passwordInDatabase)
        authMessage = "Password is not correct!";
      else
        authMessage = "Access granted!";
    } else
      authMessage = "User not found, please sign up!";
    return authMessage;
  }

  static Future signUpController(
      String userName, String email, String password) async {
    //password encryption
    password = Encryptor.encrypt(password);

    User user = new User(
      userName: userName,
      email: email,
      password: password,
    );
    user = await UsersDatabase.instance.createUser(user);
  }

  static Future<String> loginController(
      String userName, String password) async {
    List result = await UsersDatabase.instance.readUser(userName);

    //Authentication
    return authController(result, password);
  }
}
