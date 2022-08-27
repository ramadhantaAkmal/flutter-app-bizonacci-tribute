import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideosPage extends StatelessWidget {
  const VideosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url1 = Uri.parse('https://www.youtube.com/watch?v=KV5QlSgq7lg');
    final Uri _url2 = Uri.parse('https://www.youtube.com/watch?v=-5OeVSiisLU');
    final Uri _url3 = Uri.parse('https://www.youtube.com/watch?v=y28Diszaoo4');

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        leading: IconButton(
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: AutoSizeText(
          'Bizonacci Videos',
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
          const Center(),
          Container(
            height: 70,
            width: 500,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: MaterialButton(
              onPressed: () {
                _launchUrl(_url1);
              },
              child: Text(
                'VIDEO 1',
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
                _launchUrl(_url2);
              },
              child: Text(
                'VIDEO 2',
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
                _launchUrl(_url3);
              },
              child: Text(
                'VIDEO 3',
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

Future<void> _launchUrl(url) async {
  try {
    //untuk membuka video di App youtube
    !await launchUrl(url, mode: LaunchMode.externalApplication);
    return;
  } catch (e) {
    //untuk membuka video di web
    if (!await launchUrl(url)) throw 'Could not launch $url';
    return;
  }
}
