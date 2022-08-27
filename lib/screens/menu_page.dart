import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_dicoding/screens/avatar_list.dart';
import 'package:project_dicoding/screens/videos_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: AutoSizeText(
          'YouTube Bizonacci Tribute App',
          style: TextStyle(
            color: Colors.grey[350],
            letterSpacing: 2.0,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          minFontSize: 15,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'MENU',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 50.0,
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 500,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const VideosPage();
                    },
                  ),
                );
              },
              child: Text(
                'VIDEOS',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 35.0,
                  letterSpacing: 1.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[350],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 500,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const AvatarList();
                    },
                  ),
                );
              },
              child: Text(
                'CHARACTERS',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 35.0,
                  letterSpacing: 1.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[350],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 500,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              onPressed: () {
                //Hanya berfungsi pada android
                SystemNavigator.pop();
              },
              child: Text(
                'EXIT',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 35.0,
                  letterSpacing: 1.0,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.grey[350],
            ),
          ),
        ],
      ),
    );
  }
}
