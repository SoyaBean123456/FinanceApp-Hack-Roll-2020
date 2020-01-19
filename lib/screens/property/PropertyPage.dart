import 'package:financial_App/screens/property/PropertyDetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Property.dart';
import 'package:simple_smart_scraper/simple_smart_scraper.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';

class PropertyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PropertyPageState();
  }
}

class _PropertyPageState extends State<PropertyPage> {
  List<Property> propertyList = [];

  @override
  void initState() {
    super.initState();

    DatabaseReference postsRef =
        FirebaseDatabase.instance.reference().child('Property');

    postsRef.once().then((DataSnapshot snap) {
      var keys = snap.value.keys;
      var data = snap.value;

      propertyList.clear();

      for (var individualKey in keys) {
        print("individual key " + individualKey);
        Property property = new Property.simpleDetails(
          data[individualKey]['image'],
          data[individualKey]['price'],
          data[individualKey]['type'],
          data[individualKey]['location'],
          data[individualKey]['noOfBedRooms'],
          data[individualKey]['noOfBathRooms'],
          //data[individualKey]['listingID']
          individualKey
        );

        propertyList.add(property);
      }

      setState(() {
        print('Length : ${propertyList.length}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Property List"),
      ),
      body: new Container(
          child: propertyList.length == 0
              ? new Text("No property available")
              : new ListView.builder(
                  itemCount: propertyList.length,
                  itemBuilder: (_, index) {
                    return PropertyUI(
                        propertyList[index].image,
                        propertyList[index].price,
                        propertyList[index].type,
                        propertyList[index].location,
                        propertyList[index].noOfBedRooms,
                        propertyList[index].noOfBathRooms,
                        propertyList[index].listingID);
                  })),
    );
  }

  Widget PropertyUI(String image, double price, String type, String location,
      int noOfBedRooms, int noOfBathRooms, String listingID) {
    return new Card(
        elevation: 10.0,
        margin: EdgeInsets.all(15.0),
        child: new Container(
          padding: new EdgeInsets.all(14.0),
          child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PropertyDetailsPage(property: listingID),
                      ),
                    );
                  }, // handle your image tap here
                  child: Image.network(image,
                      fit: BoxFit.cover // this is the solution for border
                      // width: 110.0,
                      // height: 110.0,
                      ),
                ),
                // new Image.network(image, fit: BoxFit.cover),
                SizedBox(height: 10.0),
                new Row(
                  children: <Widget>[
                    new Text(
                      "S" + "\$" + "$price",
                      style: Theme.of(context).textTheme.subhead,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                new Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "$noOfBedRooms",
                        style: Theme.of(context).textTheme.subhead,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 3.0),
                      new Icon(Icons.local_hotel),
                      SizedBox(width: 5.0),
                      new Text(
                        "$noOfBathRooms",
                        style: Theme.of(context).textTheme.subhead,
                        textAlign: TextAlign.center,
                      ),
                      new Icon(Icons.local_hotel),
                    ]),

                new Row(
                  children: <Widget>[
                    new Text(
                      location,
                      style: Theme.of(context).textTheme.subhead,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ]),
        ));
  }
}
