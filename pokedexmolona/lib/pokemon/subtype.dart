class SubType {
  String? name;
  String? url;

  SubType({this.name, this.url});

  factory SubType.fromJson(Map<String, dynamic> json) => SubType(
        name: json['name'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
}
