// To parse this JSON data, do
//
//     final jobModel = jobModelFromJson(jsonString);

import 'dart:convert';

JobModel jobModelFromJson(String str) => JobModel.fromJson(json.decode(str));

String jobModelToJson(JobModel data) => json.encode(data.toJson());

class JobModel {
  String id;
  String name;
  String category;
  String companyName;
  String companyLogo;
  String location;
  List<String> about;
  List<String> qualifications;
  List<String> responsibilities;
  int createdAt;
  int updatedAt;

  JobModel({
    required this.id,
    required this.name,
    required this.category,
    required this.companyName,
    required this.companyLogo,
    required this.location,
    required this.about,
    required this.qualifications,
    required this.responsibilities,
    required this.createdAt,
    required this.updatedAt,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
        id: json["id"],
        name: json["name"],
        category: json["category"],
        companyName: json["companyName"],
        companyLogo: json["companyLogo"],
        location: json["location"],
        about: List<String>.from(json["about"].map((x) => x)),
        qualifications: List<String>.from(json["qualifications"].map((x) => x)),
        responsibilities:
            List<String>.from(json["responsibilities"].map((x) => x)),
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category,
        "companyName": companyName,
        "companyLogo": companyLogo,
        "location": location,
        "about": List<dynamic>.from(about.map((x) => x)),
        "qualifications": List<dynamic>.from(qualifications.map((x) => x)),
        "responsibilities": List<dynamic>.from(responsibilities.map((x) => x)),
        "createdAt": createdAt,
        "updatedAt": updatedAt,
      };
}
