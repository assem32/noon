class bookModel{
  String ?name;
  String ? mail;
  String ?uId;
  String ?phone;

  String ? bio;
  bookModel({
    this.name,
    this.mail,
    this.uId,
    this.phone,

    this.bio,


  });
  bookModel.fromJson(Map<String,dynamic>? json){
    mail = json!['mail'];
    name=json['name'];
    uId=json['uId'];
    phone=json['phone'];
    bio=json['bio'];


  }
  Map<String,dynamic>toMap(){
    return {
      'name': name,
      'mail': mail,
      'uId': uId,
      'bio':bio,
      'phone': phone,
    };
  }
}