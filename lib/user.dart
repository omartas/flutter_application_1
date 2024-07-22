class User {
  final String name;
  final int yas;

  User({required this.name, required this.yas});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      yas: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': yas,
    };
  }
}
