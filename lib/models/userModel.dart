final String tableUsers = 'users';

class UserFields {
  static final List<String> values = [
    /// Add all fields
    userID, userName, email, password
  ];

  static final String userID = '_id';
  static final String userName = 'userName';
  static final String email = 'email';
  static final String password = 'password';
}

class User {
  final int? userID;
  final String userName;
  final String email;
  final String password;

  const User({
    this.userID,
    required this.userName,
    required this.email,
    required this.password,
  });

  User copy({
    int? userID,
    String? userName,
    String? email,
    String? password,
  }) =>
      User(
        userID: userID ?? this.userID,
        userName: userName ?? this.userName,
        email: email ?? this.email,
        password: password ?? this.password,
      );

  static User fromJson(Map<String, Object?> json) => User(
        userID: json[UserFields.userID] as int?,
        userName: json[UserFields.userName] as String,
        email: json[UserFields.email] as String,
        password: json[UserFields.password] as String,
      );

  Map<String, Object?> toJson() => {
        UserFields.userID: userID,
        UserFields.userName: userName,
        UserFields.email: email,
        UserFields.password: password,
      };
}
