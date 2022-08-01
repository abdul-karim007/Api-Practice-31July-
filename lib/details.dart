import 'package:flutter/material.dart';
import 'package:july31/model.dart';

class Details extends StatelessWidget {
  Details({Key? key, required this.userDetails}) : super(key: key);

  late UserModel userDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID no. : ${userDetails.id}'),
            Text('Name: ${userDetails.name}'),
            Text('UserName: ${userDetails.username}'),
            Text('Email: ${userDetails.email}'),
            Text('Street: ${userDetails.address!.street}'),
            Text('Suite: ${userDetails.address!.suite}'),
            Text('City: ${userDetails.address!.city}'),
            Text('ZipCode: ${userDetails.address!.zipcode}'),
            Text('Address: ${userDetails.address!.geo!.lat}'),
            Text('Address: ${userDetails.address!.geo!.lng}'),
            Text('Phone: ${userDetails.phone}'),
            Text('Website: ${userDetails.website}'),
            Text('Company Name: ${userDetails.company!.name}'),
            Text('Catch Phrase: ${userDetails.company!.catchPhrase}'),
            Text('BS: ${userDetails.company!.bs}'),
          ],
        ),
      ),
    );
  }
}
