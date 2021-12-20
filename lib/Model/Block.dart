
import 'package:xml/xml.dart';

class Block {
  String blockCode;
  String blockName;
  String blockNameHn;
  String distCode;

  Block(
    this.blockCode,
    this.blockName,
    this.blockNameHn,
    this.distCode,
  );

factory Block.fromMap(Map<String,dynamic> xml){
      return Block(xml["BlockCode"],xml["BlockName"],xml["BlockNameHN"], xml["DistCode"]);
}

  get BlockCode => this.blockCode;
  get BlockName => this.blockName;
  get BlockNameHN => this.blockNameHn;
  get DistCode => this.distCode;



  static List<Block> fromElement(Iterable<XmlElement> elements) {
    return elements.map((element) {
      return Block(
          element
              .findElements('BlockCode')
              .first
              .text,
          element
              .findElements('BlockName')
              .first
              .text,
          element
              .findElements('BlockNameHN')
              .first
              .text,
          element
              .findElements('DistCode')
              .first
              .text);
    }).toList();
  }
}


