//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tikodc/login.dart';
import 'package:tikodc/profil.dart';
import 'package:tikodc/renitialiser.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

import 'creernewpassword.dart';
import 'otp.dart';

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
//liste des différentes pages
  final List<Widget> _pagesfc = [
    HomePage(),
    Newpassword(),
    createnewpassword(),
    Loginpage(),
    UserProfilPage(),

  ];

  @override
  Widget build(BuildContext context) {
    //Scafold wid principal
    return Scaffold(
      body: _pagesfc[_selectedIndex],
      //btn de navigation
      bottomNavigationBar:   BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //pour l'icon selectionner
        currentIndex: _selectedIndex,
        //cette fonction s'execute
        onTap: _onItemTapped,
        items:  <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),

           BottomNavigationBarItem(
            icon: Image.asset(
                "img/imagess/tiktok_add.png",
              height: 35,
            ),label: 'Add'
        ),

          // BottomNavigationBarItem(
          //   icon:
          //   ImageIcon(AssetImage(
          //     'img/imagess/addbutton.png',

          //   )),
          //   label: 'Add',
          // ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.comment_outlined),
            label: 'Comment',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profil',
          ),
        ],
        backgroundColor: const Color(0XFF141518),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
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
      "video": "img/videos/vid1.mp4",
    },
    {
      "video": "img/videos/vid2.mp4",
    },
    {
      "video": "img/videos/vid3.mp4",
    },
    {
      "video": "img/videos/vid4.mp4",
    },
    {
      "video": "img/videos/vid2.mp4",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        //toute la hauteur
        height: double.infinity,
        //scroller verticalement
        scrollDirection: Axis.vertical,
        //100% de l'espace
        viewportFraction: 1.0,
      ),
      //pour chaque elt de la liste d'item(tiktokitems)
      items: tiktokitems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  VideoWidget(
                    //la video selectionner est attribué  video url dans video widget
                    videoUrl: item['video'],
                  ),
                  //appel de cette fonction pour afficher les inf du post
                  const PostContent()
                ],
              ),

            );
          },
        );
      }).toList(),
    );
  }
}

class VideoWidget extends StatefulWidget {
  // const VideoWidget({Key? key, required this.videoUrl}) : super(key: key);
// ce wid prens l video selctionner dans videoUrl
  const VideoWidget({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  State<VideoWidget> createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {
  //late pour dire quon va l'initialiser apres sinon ........
  late VideoPlayerController _controller;
  final String videoUrl;
  _VideoWidgetState(this.videoUrl);
//initialisation
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(videoUrl)
      ..initialize().then((_) {
        //pour lncer chacune des videos
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //une collonne avec 2 child
    return Column(
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Following',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'For you',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(

                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      //afficher horizontalment
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '@Orange digital center',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'innovation creativite centre de formation numérique',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                         SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.music_note,
                              color: Colors.white,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Original Sound - extremesports_95',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),

                          ],

                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        //stack por superposer des widgets
                        child: Stack(
                          //place licon + sur l'imge
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              //pcer le cor cle avatar dns un cont et lui donner une mrge
                              margin: EdgeInsets.only(bottom: 10),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                  'img/imagess/orange.jpeg',
                                ),
                              ),
                            ),
                            //cont pour le button add du profil
                            Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      //favoris icon et text
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '25.0K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '156k',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      ////////////////fav icon
                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '156k',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),

                      Container(
                        height: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '12k',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      AnimatedLogo(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    //intitialisation du controller pour effectuer la transition
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    //repeat l'animation pres l durée definis
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          //appliquer cette rotation
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: EdgeInsets.all(5),
        //boite contenant les 2 images
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage("img/imagess/disctiktok.jpeg"),
          ),
        ),
        child: Image.asset('img/imagess/logotiktok.png'),
      ),
    );
  }
}
