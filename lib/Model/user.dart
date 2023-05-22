class User{
  
	// id 	nama 	username 	email 	role 	email_verified_at 	password
  final String id;
  final String nama;
  final String email;
  final String role;

  User({required this.id,required this.nama,required this.email,required this.role});

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      id: json['id']?.toString() ?? '',
      nama : json['nama']?.toString() ?? '',
      email : json['email']?.toString() ?? '',
      role : json['role']?.toString() ?? '',
    );
  }
}