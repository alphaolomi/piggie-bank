/// CreditCard
class CreditCard {
  final String _cardNo, _holder, _expiryDate, _cvv, _logo;

  /// CreditCard
  /// @param cardNo String
  /// @param logo String
  /// @param holder String
  /// @param expiryDate String
  /// @param cvv String  
  CreditCard(
    this._cardNo,
    this._logo,
    this._holder,
    this._expiryDate,
    this._cvv,
  ) : assert(_cardNo.length == 16);

  /// cardNo
  String get cardNo {
    var letters = [];
    for (int i = 0; i < _cardNo.length;) {
      letters.add(_cardNo.substring(i, ((i ~/ 4) + 1) * 4));
      i += 4;
    }
    var fakeNo = "";
    for (int i = 0; i < letters.length; i++) {
      if (i == letters.length - 1) {
        fakeNo += letters[i];
        break;
      }
      fakeNo += "****   ";
    }
    return fakeNo;
  }

  /// holder
  String get holder => _holder;

  /// logo
  String get logo => _logo;

  /// cvv
  String get cvv => _cvv;

  /// expiryDate
  String get expiryDate => _expiryDate;
}
