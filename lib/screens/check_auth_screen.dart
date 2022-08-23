import 'package:flutter/material.dart';
import 'package:productos_app/screens/screens.dart';
import 'package:productos_app/services/services.dart';
import 'package:provider/provider.dart';

class CheckAuthScreen extends StatelessWidget {
  const CheckAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.isAuth(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Text('');
            }

            if (snapshot.data == '') {
              Future.microtask(() {
              Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const LoginScreen();
                  },
                  transitionDuration: const Duration(seconds: 0)
                ));
              
                //Navigator.pushReplacementNamed(context, 'home');
              });
            }else{
              Future.microtask(() {
              Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const HomeScreen();
                  },
                  transitionDuration: const Duration(seconds: 0)
                ));
              
                //Navigator.pushReplacementNamed(context, 'home');
              });
            }

            

            return Container();
          },
        ),
      ),
    );
  }
}
