import 'reqresUserModel.dart';

class ReqresModel {

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<ReqresModelData?>? data;
  ReqresModelSup? support;

  ReqresModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });
  ReqresModel.fromJson(Map<String, dynamic> json) {
    page = json['page']?.toInt();
    perPage = json['per_page']?.toInt();
    total = json['total']?.toInt();
    totalPages = json['total_pages']?.toInt();
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <ReqresModelData>[];
      v.forEach((v) {
        arr0.add(ReqresModelData.fromJson(v));
      });
      this.data = arr0;
    }
    support = (json['support'] != null) ? ReqresModelSup.fromJson(json['support']) : null;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['data'] = arr0;
    }
    if (support != null) {
      data['support'] = support!.toJson();
    }
    return data;
  }
}