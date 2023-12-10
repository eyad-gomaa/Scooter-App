class TrustedPlacesModel{
  final String name;
  final String address;
  final String phone;
  final String image;
  TrustedPlacesModel({
    required this.name,
    required this.address,
    required this.phone,
    required this.image
  });
  factory TrustedPlacesModel.fromJson(jsonData){
    return TrustedPlacesModel(
        name: jsonData["name"],
        address: jsonData["address"],
        phone: jsonData["phone"],
        image: jsonData["image"],
    );
  }
}