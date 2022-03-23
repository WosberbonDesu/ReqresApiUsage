import 'package:jobsusageapi/models/reqresModel/colorData/reqresColorModel.dart';

class ColorModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<ReqresColorData>? data;
  ReqresColorSup? support;

  ColorModel(
      {this.page,
        this.perPage,
        this.total,
        this.totalPages,
        this.data,
        this.support});

  ColorModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <ReqresColorData>[];
      json['data'].forEach((v) {
        data!.add(new ReqresColorData.fromJson(v));
      });
    }
    support =
    json['support'] != null ? new ReqresColorSup.fromJson(json['support']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['per_page'] = this.perPage;
    data['total'] = this.total;
    data['total_pages'] = this.totalPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.support != null) {
      data['support'] = this.support!.toJson();
    }
    return data;
  }
}