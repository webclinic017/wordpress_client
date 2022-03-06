import '../../wordpress_client.dart';
import '../requests/create/create_user.dart';
import '../requests/delete/delete_user.dart';
import '../requests/list/list_user.dart';
import '../requests/retrive/retrive_user.dart';
import '../requests/update/update_user.dart';

class UsersInterface extends IInterface
    with
        ICreate<User, CreateUserRequest>,
        IDelete<User, DeleteUserRequest>,
        IRetrive<User, RetriveUserRequest>,
        IUpdate<User, UpdateUserRequest>,
        IList<User, ListUserRequest> {
  @override
  Future<WordpressResponse<User?>> create(
    WordpressRequest<CreateUserRequest> request,
  ) async {
    return internalRequester.createRequest<User>(request);
  }

  @override
  Future<WordpressResponse<User?>> delete(
    WordpressRequest<DeleteUserRequest> request,
  ) async {
    return internalRequester.deleteRequest<User>(request);
  }

  @override
  Future<WordpressResponse<List<User>?>> list(
    WordpressRequest<ListUserRequest> request,
  ) async {
    return internalRequester.listRequest<User>(request);
  }

  @override
  Future<WordpressResponse<User?>> retrive(
    WordpressRequest<RetriveUserRequest> request,
  ) async {
    return internalRequester.retriveRequest<User>(request);
  }

  @override
  Future<WordpressResponse<User?>> update(
    WordpressRequest<UpdateUserRequest> request,
  ) async {
    return internalRequester.updateRequest<User>(request);
  }
}
