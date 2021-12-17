
import 'package:xml/xml.dart';

class dist {
final String _DistCode;
final String _DistName;
final String _DistNameHN;


dist(
  this._DistCode,
  this._DistName,
  this._DistNameHN,

);

/*dist.fromMap(Map map)
: this(
  DistCode : map['DistCode'],
  DistName : map['DistName'],
  DistNameHN : map['DistNameHN'],
);*/

/*Map<String, dynamic> asMap() => {
  'DistCode' : DistCode,
  'DistName' : DistName,
  'DistNameHN' : DistNameHN,
};*/
factory dist.fromMap(Map<String,dynamic> xml){

      return dist(xml["DistCode"],xml["DistName"],xml["DistNameHN"]);

}

  get DistCode => this._DistCode;
  get DistName => this._DistName;
  get DistNameHN => this._DistNameHN;



 /* factory dist.fromElement(XmlElement distElement) {
    return dist._(
      distElement.getAttribute('DistCode'),
      distElement.getAttribute('DistName'),
      distElement.getAttribute('DistNameHN'),
      distElement
          .findElements('dist')
          .map<dist>((e) => dist.fromElement(e))
          .toList(),
    );
  }

  String? DistCode;
  String? DistName;
  String? DistNameHN;
  List<dist> subdist;*/
}


