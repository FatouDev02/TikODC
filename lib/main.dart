import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Materialapp represente toute l'app
    return const MaterialApp(
      //nom de l'app pas le titre à afficher
      title: 'Flutter TikTok',
      //bande debug a ne pas afficher
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(
              'img/imagess/addbutton.png',
            )),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Comment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0XFF141518),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  HomePage({Key? key}) : super(key: key);
  //on crée une var de type list qui va contenir des maps et toute nos infos
  final List<Map> tiktokitems = [
    {
      "video": "img/videos/vid1.MOV",
    },
    {
      "video": "img/videos/vid2.MOV",
    },
    {
      "video": "img/videos/vid3.MOV",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        //toute la hauteur
        height: double.infinity,
        scrollDirection: Axis.vertical,
        //100% de l'espace
        viewportFraction: 1.0,
      ),
      items: tiktokitems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: const [VideoWidget()],
              ),
              //color: item['color'],
              // child: const Center(
              //   child: Text('text'),
              // ),
              // width: MediaQuery.of(context).size.width,
              // //  margin: EdgeInsets.symmetric(horizontal: 5.0),
              // decoration: BoxDecoration(color: Colors.amber),
              // child: Center(
              //   child: Text(
              //     'text $i',
              //     style: TextStyle(fontSize: 16.0),
              //   ),
              //)
            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  //late pour dire quon va l'initialiser apres
  late VideoPlayerController _controller;
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset('img/videos/vid1.MOV')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
