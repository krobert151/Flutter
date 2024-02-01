import 'package:flutter/material.dart';

import '../videos_reponse/videos/videos.dart';

class VideosList extends StatelessWidget {
  final ListVideosResponse videosResponse;
  const VideosList({super.key, required this.videosResponse});

  @override
  Widget build(BuildContext context) {
    return Text(videosResponse.id.toString());
  }
}
