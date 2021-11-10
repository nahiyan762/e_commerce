class MetaInfo {
  int pageSize;
  int count;
  int page;
  String next;
  String previous;

  MetaInfo({
    required this.pageSize,
    required this.count,
    required this.page,
    required this.next,
    required this.previous,
  });

  factory MetaInfo.fromJson(final json) {
    return MetaInfo(
      pageSize: json["page_size"],
      count: json["count"],
      page: json["page"],
      next: json["next"],
      previous: json["previous"]
    );
  }

  Map<String, dynamic> toJson() => {
    "page_size": pageSize,
    "count": count,
    "page": page,
    "next": next,
    "previous": previous,
  };

}
