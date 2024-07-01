class dataModel {
  String? songName;
  String? artistName;

  dataModel({this.songName, this.artistName});

  dataModel.fromJson(Map<String, dynamic> json) {
    songName = json['songName'];
    artistName = json['artistName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['songName'] = this.songName;
    data['artistName'] = this.artistName;
    return data;
  }
}