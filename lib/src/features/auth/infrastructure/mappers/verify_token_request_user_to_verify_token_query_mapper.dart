import 'package:mapster/mapster.dart';

import '../../../common/domain/domain.dart';
import '../../application/application.dart';
import '../../presentation/contracts/contracts.dart';

class VerifyTokenRequestUserToVerifyTokenQueryMapper
    extends TwoSourcesMapper<VerifyTokenRequest, EndUser, VerifyTokenQuery> {
  VerifyTokenRequestUserToVerifyTokenQueryMapper(super.input);

  @override
  VerifyTokenQuery map() {
    return VerifyTokenQuery(
      user: _user,
    );
  }

  EndUser get _user => source2;
}
