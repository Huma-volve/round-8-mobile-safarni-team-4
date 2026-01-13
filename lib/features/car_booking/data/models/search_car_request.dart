class SearchCarRequest {
  final String search;

  const SearchCarRequest({required this.search});

  Map<String, dynamic> toJson() {
    return {'search': search};
  }
}
