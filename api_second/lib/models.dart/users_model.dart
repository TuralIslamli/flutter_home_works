class Hair {
  String? color;
  String? type;

  Hair.fromJson(Map<String, dynamic> json) {
    color = json["color"];
    type = json["type"];
  }
}

class Company {
  String? name;
  String? title;
  String? department;
  Address? address;
  Company.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    title = json["title"];
    department = json["department"];
    address = Address.fromJson(json["address"]);
  }
}

class Address {
  String? address;
  String? city;
  String? postalCode;
  String? state;
  Coordinates? coordinates;

  Address.fromJson(Map<String, dynamic> json) {
    address = json["address"];
    city = json["city"];
    postalCode = json["postalCode"];
    state = json["state"];
    coordinates = Coordinates.fromJson(json["coordinates"]);
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json["lat"];
    lng = json["lng"];
  }
}

class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  int? age;
  Hair? hair;
  Company? company;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstName = json["firstName"];
    lastName = json["lastName"];
    age = json["age"];
    hair = Hair.fromJson(json["hair"]);
    company = Company.fromJson(json["company"]);
  }
}

class MainModel {
  List<UserModel>? users;
  int? total;
  int? limit;

  MainModel.fromJson(Map<String, dynamic> json) {
    total = json["total"];
    limit = json["limit"];
    if (json["users"] != null) {
      users = (json["users"] as List)
          .map(
            (e) => UserModel.fromJson(e),
          )
          .toList();
    }
  }
}
