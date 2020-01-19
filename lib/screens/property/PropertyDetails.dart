import 'package:financial_App/screens/property/PropertyDet.dart';
import 'package:financial_App/screens/property/PropertyPage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'Property.dart';

class PropertyDetailsPage extends StatefulWidget {
  // Declare a field that holds the Todo.
  //final PropertyPage property;
  final String property;

  // In the constructor, require a Todo.
  PropertyDetailsPage({Key key, @required this.property}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _PropertyDetailsPageState();
  }
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  String listingID = "2";
  PropertyDet property;

  @override
  void initState() async{
    // TODO: implement initState
    super.initState();

    property = new PropertyDet(
        "https://firebasestorage.googleapis.com/v0/b/socialape-5f722.appspot.com/o/hdb1.jpg?alt=media&token=31acfb7e-7a22-42c1-a121-485a922b19b8",
        13.666,
        "HDB",
        "Changi Road",
        2,
        2,
        "222",
        99,
        156.56,
        "Unfurnished",
        [],
        "Nive hdb"
    );

    // DatabaseReference postsRef =
    //     FirebaseDatabase.instance.reference().child('Property/' + listingID);

    // var someData = await postsRef.once();

    // // //await postsRef.once().then((DataSnapshot snap) {
    // //   //var individualKey = snap.value;
    // //   //var data = snap.value;
    // var data = someData.value;

    //   print("my individual data " + data);
      // property = new PropertyDet(
      //   data['image'],
      //   data['price'],
      //   data['type'],
      //   data['location'],
      //   data['noOfBedRooms'],
      //   data['noOfBathRooms'],
      //   data['listingID'],
      //   data['tenure'],
      //   data['size'],
      //   data['furnishing'],
      //   data['facilitiesAmenities'],
      //   data['description'],
      // );

      setState(() {});
    
  }

  @override
  Widget build(BuildContext context) {
    

    //listingID = widget.property;

    print(listingID);
    print("At property details page");
  print("property image ${property.image}");
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Property Details"),
        ),
        body: new Container(
            child: 5 == 3
                ? new Text("No property available")
                : new ListView.builder(
                    itemCount: 0,
                    itemBuilder: (_, index) {
                      return PropertyUI(
                        property.image,
                        property.price,
                        property.type,
                        property.location,
                        property.noOfBedRooms,
                        property.noOfBathRooms,
                        property.listingID,
                        property.tenure,
                        property.size,
                        property.furnishing,
                        property.facilitiesAmenities,
                        property.description,
                      );
                    })));
  }

  Widget PropertyUI(
      String image,
      double price,
      String type,
      String location,
      int noOfBedRooms,
      int noOfBathRooms,
      String listingID,
      int tenure,
      double size,
      String furnishing,
      List<String> facilitiesAmenities,
      String description) {
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
                  onTap: () {}, // handle your image tap here
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
