import 'package:flutter/material.dart';
import 'package:oauth1/oauth1.dart';
import 'package:tumblr/api/tumblr_api.dart';
import 'package:tumblr/auth/oauth1_client.dart';
import 'package:tumblr/auth/oauth2_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void getUserProfileV1() async {
    final client = TumblrOAuth1Client(
      apiKey: 'apiKey',
      apiSecret: 'apiSecret',
      callbackUrlScheme: 'callbackUrlScheme', // Your app's custom URL scheme
    );

// First-time authorization
    final credentials = Credentials(
      'token',
      'tokenSecret',
    );
// Store these credentials securely for future use

// Later, to reuse stored credentials
    client.credentials = credentials;

// Make API requests
    final userInfo = await client.getUserInfo();
    final dashboard = await client.getDashboard(limit: 20);

    print('User Info: $userInfo');
    print('Dashboard: $dashboard');
  }

  void getUserProfileV2() async {
    final tumblrApi = TumblrApi('accessToken');
    final userProfile = await tumblrApi.user.getUserProfile();
    print('User Profile: $userProfile');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  getUserProfileV1();
                },
                child: const Text('Get User Profile V1'),
              ),
              ElevatedButton(
                onPressed: () {
                  getUserProfileV2();
                },
                child: const Text('Get User Profile V2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
