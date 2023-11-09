import 'package:team_project/data/model/product.dart';

import '../model/user.dart';

class ResponseDTO {
  Product resProduct;
  User resUser;

  ResponseDTO(this.resProduct, this.resUser);
}
