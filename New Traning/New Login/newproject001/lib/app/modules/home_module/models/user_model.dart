class UserModel {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;
  final Company? company;
  final Address? address;

  UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    this.address,
    required this.website,
    this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      userName: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),
    );
  }
  // toJson() => {'id': id};
}

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo? geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'],
      suite: json['suite'],
      city: json['city'],
      zipcode: json['zipcode'],
      geo: Geo.fromJson(json['geo']),
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  Geo({required this.lat, required this.lng});
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(lat: json['lat'], lng: json['lng']);
  }
}

class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({required this.bs, required this.catchPhrase, required this.name});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      bs: json['bs'],
      catchPhrase: json['catchPhrase'],
      name: json['name'],
    );
  }
}
