class TrustedPlacesModel {
  final String name;
  final String address;
  final String city;
  final String phone;
  final String image;
  final String location;
  TrustedPlacesModel(
      {required this.name,
      required this.address,
      required this.city,
      required this.phone,
      required this.image,
      required this.location});
  factory TrustedPlacesModel.fromJson(jsonData) {
    return TrustedPlacesModel(
      name: jsonData["name"],
      address: jsonData["address"],
      city: jsonData["city"],
      phone: jsonData["phone"],
      image: jsonData["image"],
      location: jsonData["location"],
    );
  }
}
