import 'package:mapster/mapster.dart';

import '../../application/common/common.dart';
import '../../presentation/contracts/user_info_response/user_info_response.dart';

class UserInfoResultToUserInfoResponseMapper
    extends OneSourceMapper<UserInfoResult, UserInfoResponse> {
  UserInfoResultToUserInfoResponseMapper(super.input);

  @override
  UserInfoResponse map() {
    return UserInfoResponse(
      userInfo: _result.userInfo,
    );
  }

  UserInfoResult get _result => source;
}
