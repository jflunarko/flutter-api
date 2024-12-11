class UserParam {
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  UserParam(
      {required this.firstName,
      required this.lastName,
      required this.gender,
      required this.image});
  Map<String, dynamic> toJson(){
    return {
      'firstName' : this.firstName,
      'lastName' : this.lastName,
      'gender' : this.gender,
      'image' : this.image,
    };
  }
}