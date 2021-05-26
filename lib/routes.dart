import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:makom_customer_app/constants.dart';
import 'package:makom_customer_app/screens/auth/signup_otp.dart';
import 'package:makom_customer_app/screens/index.dart';
import 'package:makom_customer_app/screens/inventory/add_item.dart';
import 'package:makom_customer_app/screens/inventory/items.dart';
import 'package:provider/provider.dart';
import 'services/authentication/authprovider.dart';
import 'services/location/location_provider.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/splashscreen': (BuildContext context) => SplashScreen(),
    '/home': (BuildContext context) => HomePage(),
    '/cash_return': (BuildContext context) => CashReturn(),
    '/send_page': (BuildContext context) => SendPage(),
    '/profile': (BuildContext context) => ProfilePage(),
    '/share_app': (BuildContext context) => ShareApp(),
    '/payment_methods': (BuildContext context) => PaymentMethods(),
    '/notifications': (BuildContext context) => Notifications(),
    '/prohibited_items': (BuildContext context) => ProhibitedItems(),
    '/signup_otp': (BuildContext context) => OtpScreen(),
    '/signup': (BuildContext context) => SignupScreen(),
    '/login': (BuildContext context) => LoginScreen(),
    '/googlemaps': (BuildContext context) => Googlemaps(),
    '/items': (BuildContext context) => ItemsPage(),
    '/add_items': (BuildContext context) => AddItemsPage(),
  };

  Routes() {
    runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LocationProvider()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
          StreamProvider(
            create: (context) => context.read<AuthProvider>().authStateChange,
            initialData: null,
          )
        ],
        child: new MaterialApp(
          theme: themeData,
          title: 'Makom',
          routes: routes,
          home: AuthWrapper(),
          debugShowCheckedModeBanner: false,
        )));
  }
}

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      final firebaseUser = context.watch<User>();
      if (firebaseUser != null) {
        return HomePage();
      }
      return LoginScreen();
    });
  }
}
