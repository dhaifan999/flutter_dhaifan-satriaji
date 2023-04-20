import 'package:flutter/material.dart';
import 'package:code_competence1/model/photo_model.dart';

class PhotosProvider with ChangeNotifier {
  final List<PhotoItem> _photos = [
    PhotoItem(
      image:
          'https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM=w240-h480-rw',
    ),
    PhotoItem(
      image:
          'https://play-lh.googleusercontent.com/Ui_-OW6UJI147ySDX9guWWDiCPSq1vtxoC-xG17BU2FpU0Fi6qkWwuLdpddmT9fqrA=w240-h480',
    ),
    PhotoItem(
      image:
          'https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=w240-h480',
    ),
    PhotoItem(
      image:
          'https://play-lh.googleusercontent.com/7amw2OizcGtG60nSDAO-ukO-lNPi_Q8IOgVymkJ6fER24Af2nIg4-CHgDQkkXQHUfQ4=w240-h480-rw',
    ),
  ];

  List<PhotoItem> get photos => _photos;
}
