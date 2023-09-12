class LoginModel {
  LoginModel({
    required this.message,
    required this.data,
    required this.status,
  });
  late final String message;
  late final Data data;
  late final int status;
  
  LoginModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    data = Data.fromJson(json['data']);
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['status'] = status;
    return _data;
  }
}

class Data {
  Data({
    required this.otp,
    required this.mobile,
  });
  late final int otp;
  late final String mobile;
  
  Data.fromJson(Map<String, dynamic> json){
    otp = json['otp'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['otp'] = otp;
    _data['mobile'] = mobile;
    return _data;
  }
}