import 'package:flutter/material.dart';
import 'package:login_practica_01/pages/init4_page.dart';
import 'package:video_player/video_player.dart';

class Init3Page extends StatefulWidget {
  const Init3Page({Key? key}) : super(key: key);

  @override
  State<Init3Page> createState() => _Init3PageState();
}

class _Init3PageState extends State<Init3Page> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = VideoPlayerController.asset('assets/media/video.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://images.pexels.com/photos/2499802/pexels-photo-2499802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300.0,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  child: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 14.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black45,
                      ),
                      filled: true,
                      fillColor: const Color(0xffF5F5F5),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 14.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black45,
                      ),
                      filled: true,
                      fillColor: const Color(0xffF5F5F5),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 14.0),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                  SizedBox(
                    height: 54.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Init4Page()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                      child: Text(
                        "Sign in",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
