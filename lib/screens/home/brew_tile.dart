import 'package:flutter/material.dart';
import 'package:brew_crew/models/brew.dart';

class BrewTile extends StatelessWidget {

  final Brew brew;
  BrewTile({required this.brew});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20, 6, 20, 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.brown[brew.strength],
            //backgroundImage: const AssetImage('assets/coffee_bean.png'),
            
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugar(s).'),
        ),
      ),
    );
  }
}