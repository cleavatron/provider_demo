import 'package:provider_demo/core/enums/viewstate.dart';
import 'package:provider_demo/core/models/post.dart';
import 'package:provider_demo/core/services/api.dart';
import 'package:provider_demo/core/viewmodels/base_model.dart';
import 'package:provider_demo/locator.dart';

class HomeModel extends BaseModel {
  Api _api = locator<Api>();

  List<Post> posts;

  Future getPosts(int userId) async {
    setState(ViewState.Busy);
    posts = await _api.getPostsForUser(userId);
    setState(ViewState.Idle);
  }
}
