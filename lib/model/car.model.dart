class Car {
  int id;
  String brandname;
  String brandlogo;

  Car({required this.id, required this.brandname, required this.brandlogo});

  List<Car> carsList = [
    Car(id: 1, brandname: 'Audi', brandlogo: 'assets/img/audi_logo.png'),
    Car(id: 2, brandname: "Bentley", brandlogo: "assets/img/Bentley-logo.png"),
    Car(id: 3, brandname: "BMW", brandlogo: "assets/img/bmw-logo.png"),
    Car(id: 4, brandname: "Bugatti", brandlogo: "assets/img/bmw-logo.png"),
    Car(
        id: 5,
        brandname: "Chevrolet",
        brandlogo: "assets/img/Chevrolet-logo.png"),
  ];
}
