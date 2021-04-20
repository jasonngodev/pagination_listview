class DataModel {
  int totalRecords;
  List<Radio> data;

  DataModel({
    this.totalRecords,
    this.data,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        totalRecords: int.parse(
            json['totalPassengers'].toString()), //int.parse(json['Message']),
        data: (json["data"] as List).map((i) => Radio.fromJson(i)).toList());
  }
}

class Radio {
  final String id; //int id;
  final String radioName;

  Radio({
    this.id,
    this.radioName,
  });

  factory Radio.fromJson(Map<String, dynamic> json) {
    return Radio(
      id: json["_id"],
      radioName: json['name'],
    );
  }
}
