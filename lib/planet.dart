class Planet {
  int id;
  String name;
  String location;
  String distance;
  double gravity;
  String description;
  String image;

  Planet(this.id, this.name, this.location, this.distance, this.gravity,
    this.description, this.image);

  Planet.fromJson(final dynamic items) : this(
    items["id"],
    items["name"],
    items["location"],
    items["distance"],
    items["gravity"],
    items["description"],
    items["image"]
  );

}