class NotificationModel {
  String _id;
  String _name;
  String _message;

  NotificationModel(this._id, this._name, this._message);

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get message => _message;

  set message(String value) {
    _message = value;
  }


}