
import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {
  String name = 'Nome';
  String imgAvatar = 'https://cdn.iconscout.com/icon/free/png-512/flutter-3629369-3032362.png';
  String birthDate = 'Data';  

  void alterarDados() {
    name = 'Gustavo Dias';
    imgAvatar = 
        'https://play-lh.googleusercontent.com/Ffp7H42YCePwAXVtNCVYTK_Y9Pq1TqqpQ6fjputEHdgTiv0UYLJ0BXiwFZdY6aEPsQ';
    birthDate = '12/01/2000';
    notifyListeners();
  }


void alterarNome() {
    name = 'Academia do Flutter';
    notifyListeners();
  }
}
