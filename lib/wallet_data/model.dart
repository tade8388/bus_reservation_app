class Model {
  // final String date;
  final String entryStation;
  final String exiteStation;
  const Model(
      {
      // this.date,
      this.entryStation,
      this.exiteStation});
  Model copy({String entryStation, String exiteStation}) => Model(
      entryStation: entryStation ?? this.entryStation,
      exiteStation: exiteStation ?? this.exiteStation);
}
