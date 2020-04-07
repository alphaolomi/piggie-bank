/// Payment
class Payment {
  String _partyPic, _partyName, _category;
  String _time;
  double _amount;
  int _paymentType;

  /// Payment
  Payment(this._partyPic, this._partyName, this._category, this._time,
      this._amount, this._paymentType)
      : assert(_paymentType != 0);

  /// type
  int get type => _paymentType;

  /// amount
  double get amount => _amount;

  /// time
  String get time => _time;

  /// category
  get category => _category;

  /// partyName
  get partyName => _partyName;

  String get partyPic => _partyPic;
}
