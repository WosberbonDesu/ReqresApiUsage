



class ReqresColorData {
  int? id;
  String? name;
  int? year;
  String? color;
  String? pantoneValue;

  ReqresColorData({this.id, this.name, this.year, this.color, this.pantoneValue});

  ReqresColorData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    year = json['year'];
    color = json['color'];
    pantoneValue = json['pantone_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['year'] = this.year;
    data['color'] = this.color;
    data['pantone_value'] = this.pantoneValue;
    return data;
  }
}



class ReqresColorSup {
  String? url;
  String? text;

  ReqresColorSup({this.url, this.text});

  ReqresColorSup.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['text'] = this.text;
    return data;
  }
}