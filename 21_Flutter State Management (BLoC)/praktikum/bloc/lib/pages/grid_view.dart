import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assets/provider/img_provider.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key, required this.title});

  final String title;

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    final photosProvider = Provider.of<PhotosProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Grid View',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
          ),
          itemCount: photosProvider.photos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                photosProvider.showBottomSheet(
                  context: context,
                  index: index,
                  photosProvider: photosProvider,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(photosProvider.photos[index].imageUrl),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
