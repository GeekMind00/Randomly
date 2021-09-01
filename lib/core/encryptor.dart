import 'package:crypto/crypto.dart';
import 'dart:convert';

class Encryptor {
  static String encrypt(String plainText) {
    var bytes = utf8.encode(plainText);
    var cipherText = sha1.convert(bytes);
    return cipherText.toString();
  }
}
