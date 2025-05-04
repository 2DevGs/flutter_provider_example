import 'package:flutter/material.dart';
import 'package:flutter_provider_example/change_notifier/change_notifier_page.dart';
import 'package:flutter_provider_example/change_notifier/provider_controller.dart';
import 'package:flutter_provider_example/provider/provider_page.dart';
import 'package:flutter_provider_example/provider/user_model.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_){
            return UserModel(
              name: 'Gustavo Dias', 
              imgAvatar: 'https://images.hdqwalls.com/download/flutter-logo-4k-qn-800x600.jpg', 
              birthDate: '12/01/2000',
            );
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
        ),
      ],
      
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/provider': (_) => ProviderPage(),
            '/change_notifier': (_) => ChangeNotifierPage(),
          },
          home: Builder(
            builder: (context) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('/provider');
                        }, 
                        child: Text('Provider'),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed('/change_notifier');
                        }, 
                        child: Text('Change Notifier'),
                      ),
                    ],
                  ),
                ),
              );
            } 
            ),
        ),
      );
  }
}
