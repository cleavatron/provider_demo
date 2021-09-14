import 'package:provider_demo/core/enums/viewstate.dart';
import 'package:provider_demo/core/models/comment.dart';
import 'package:provider_demo/core/services/api.dart';
import 'package:provider_demo/core/viewmodels/base_model.dart';

import 'package:provider_demo/locator.dart';

class CommentsModel extends BaseModel {
  Api _api = locator<Api>();
  List<Comment> comments;

  Future fetchComments(int postId) async {
    setState(ViewState.Busy);
    comments = await _api.getCommentsForPost(postId);
    setState(ViewState.Idle);
  }
}
