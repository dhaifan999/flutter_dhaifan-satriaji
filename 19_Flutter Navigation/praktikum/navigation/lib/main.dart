import 'package:flutter/material.dart';
import 'package:assets/models/photo_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grid View',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Grid View Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _photos = [
    PhotoItem(
      imageUrl:
          'https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM=w240-h480-rw',
      name: 'Instagram',
      webAdress: 'https://www.instagram.com',
    ),
    PhotoItem(
      imageUrl:
          'https://play-lh.googleusercontent.com/Ui_-OW6UJI147ySDX9guWWDiCPSq1vtxoC-xG17BU2FpU0Fi6qkWwuLdpddmT9fqrA=w240-h480',
      name: 'TikTok',
      webAdress: 'https://www.tiktok.com',
    ),
    PhotoItem(
      imageUrl:
          'https://play-lh.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg=w240-h480',
      name: 'Facebook',
      webAdress: 'https://www.facebook.com',
    ),
    PhotoItem(
      imageUrl:
          'https://play-lh.googleusercontent.com/7amw2OizcGtG60nSDAO-ukO-lNPi_Q8IOgVymkJ6fER24Af2nIg4-CHgDQkkXQHUfQ4=w240-h480-rw',
      name: 'Lazada',
      webAdress: 'https://www.lazada.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
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
          itemCount: _photos.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showBottomSheet(context, index);
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_photos[index].imageUrl),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<dynamic> showBottomSheet(BuildContext context, int index) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: 180,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(_photos[index].imageUrl),
                  ),
                  title: Text(
                    _photos[index].name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    _photos[index].webAdress,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true).pushNamed(
                          '/detail',
                          arguments: {
                            'name': _photos[index].name,
                            'image': _photos[index].imageUrl,
                          },
                        );
                      },
                      child: const Text(
                        'Yes',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'No',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
