class PropertyDet {
  String description;
  String image;
  double price;
  String type;
  double size;
  String location;
  int noOfBedRooms;
  int noOfBathRooms;
  String listingID;
  int tenure;
  String furnishing;
  List<String> facilitiesAmenities;
  

//  Property(this.ID, this.datePosted, this.description, this.image, this.price,
//      this.type);


  PropertyDet(String image,
      double price, String type, String location, int noOfBedRooms, int noOfBathRooms, String listingID, int tenure, double size, String furnishing, List<String> facilitiesAmenities, String description) {
    this.image = image;
    this.price = price;
    this.type = type;
    this.location = location;
    this.noOfBedRooms = noOfBedRooms;
    this.noOfBathRooms = noOfBathRooms;
    this.listingID = listingID;
    this.tenure = tenure;
    this.size = size;
    this.furnishing = furnishing;
    this.facilitiesAmenities = facilitiesAmenities;
    this.description = description;
  }
}
