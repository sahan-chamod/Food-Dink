class Address {
  final String street;
  final String city;
  final String zipCode;

  Address({required this.street, required this.city, required this.zipCode});

  @override
  String toString() {
    return '$street, $city, $zipCode';
  }
}
