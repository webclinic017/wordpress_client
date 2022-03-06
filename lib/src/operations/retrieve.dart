import '../requests/request_interface.dart';
import '../requests/wordpress_request.dart';
import '../responses/wordpress_response.dart';

mixin IRetrive<T, E extends IRequest> {
  Future<WordpressResponse<T?>> retrive(WordpressRequest<E> request);
}
