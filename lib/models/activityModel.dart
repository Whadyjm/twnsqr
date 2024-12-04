
///this is a model for every activity card, with the required parameters

class ActivityModel {

  final String time, duration, title, location, spots, price;/// just String by now
  final String? category;

  ActivityModel({
    this.category,
    required this.time,
    required this.duration,
    required this.title,
    required this.location,
    required this.spots,
    required this.price
  });
}