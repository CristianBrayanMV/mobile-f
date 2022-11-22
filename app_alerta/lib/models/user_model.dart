class UserModel {
  int? id;
  String fullName;
  String dni;
  String address;
  String phone;
  String? password;

  UserModel({
    this.id,
    required this.fullName,
    required this.dni,
    required this.phone,
    required this.address,
    this.password
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
       //id:json["id"] ?? 0,
       fullName: json["nombreCompleto"],
        dni: json["dni"],
        phone: json["telefono"],
        address: json["direccion"],
        //password: json["password"] ?? "",
      );
}
