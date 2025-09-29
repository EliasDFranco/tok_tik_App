import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool iniciallLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadingNextPage() async {
    // todo: cargar videos

    notifyListeners();
  }
}
