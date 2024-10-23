import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/models/user.dart';
    
class Wrapper extends StatelessWidget {
  const Wrapper({super.key});
  
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);

    // return either home or authenticate widget
    if (user == null){
      return const Authenticate();
    }
    else{
      return Home();
    }
    
  }
}