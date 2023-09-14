import 'package:fast_app_base/common/cli_common.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/network/daangn_api.dart';
import '../../../entity/post/vo_product_post.dart';

part 'post_state.logic.dart';

mixin PostState<T extends StatefulWidget> on State<T>{

  ProductPost? productPost;

  @override
  void initState() {
    requestPost();
    super.initState();
  }

  void requestPost() async {
    await sleepAsync(400.ms);
    final response = await DaangnApi.getPost(widget.id);
    setState(() {
      productPost = response;
    });
  }

}