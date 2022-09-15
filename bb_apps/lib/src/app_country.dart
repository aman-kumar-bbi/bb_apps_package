part of bb_apps;

Future<String> getCountry() async {
  final response = await http.get(Uri.parse('http://ip-api.com/json'));
  Map data = jsonDecode(response.body);

  String country = data["country"];

  return country;
}
