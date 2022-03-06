import '../../wordpress_client.dart';
import '../requests/create/create_post.dart';
import '../requests/delete/delete_post.dart';
import '../requests/list/list_post.dart';
import '../requests/retrive/retrive_post.dart';
import '../requests/update/update_post.dart';

class PostsInterface extends IInterface
    with
        ICreate<Post, CreatePostRequest>,
        IDelete<Post, DeletePostRequest>,
        IRetrive<Post, RetrivePostRequest>,
        IUpdate<Post, UpdatePostRequest>,
        IList<Post, ListPostRequest> {
  @override
  Future<WordpressResponse<Post?>> create(
    WordpressRequest<CreatePostRequest> request,
  ) async {
    return internalRequester.createRequest<Post>(request);
  }

  @override
  Future<WordpressResponse<Post?>> delete(
    WordpressRequest<DeletePostRequest> request,
  ) async {
    return internalRequester.deleteRequest<Post>(request);
  }

  @override
  Future<WordpressResponse<List<Post>?>> list(
    WordpressRequest<ListPostRequest> request,
  ) async {
    return internalRequester.listRequest<Post>(request);
  }

  @override
  Future<WordpressResponse<Post?>> retrive(
    WordpressRequest<RetrivePostRequest> request,
  ) async {
    return internalRequester.retriveRequest<Post>(request);
  }

  @override
  Future<WordpressResponse<Post?>> update(
    WordpressRequest<UpdatePostRequest> request,
  ) async {
    return internalRequester.updateRequest<Post>(request);
  }
}
