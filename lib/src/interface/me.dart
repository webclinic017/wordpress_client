import 'dart:async';

import '../../wordpress_client.dart';
import '../requests/delete/delete_me.dart';
import '../requests/retrive/retrive_me.dart';
import '../requests/update/update_me.dart';

class MeInterface extends IInterface
    with
        IDelete<User, DeleteMeRequest>,
        IRetrive<User, RetriveMeRequest>,
        IUpdate<User, UpdateMeRequest> {
  @override
  Future<WordpressResponse<User?>> delete(
    WordpressRequest<DeleteMeRequest> request,
  ) async {
    return internalRequester.deleteRequest<User>(request);
  }

  @override
  Future<WordpressResponse<User?>> retrive(
    WordpressRequest<RetriveMeRequest> request,
  ) async {
    return internalRequester.retriveRequest<User>(request);
  }

  @override
  Future<WordpressResponse<User?>> update(
    WordpressRequest<UpdateMeRequest> request,
  ) async {
    return internalRequester.updateRequest<User>(request);
  }
}
