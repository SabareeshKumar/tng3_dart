class User {
  final int id;
  String name;
  String age;
  String email_id;

  User(this.id, this.name, this.age, this.email_id);

  factory User.fromJson(Map<String, dynamic> user) =>
    User(_toInt(user['id']), user['name'], user['age'].toString(), user['email_id']);

  Map toJson() => {'id': id, 'name': name, 'age' : age, 'email_id': email_id};
  
}
int _toInt(id) => id is int ? id : int.parse(id);
