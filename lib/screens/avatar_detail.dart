import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AvatarCard extends StatefulWidget {
  String name;
  String email;
  String image;
  String desc;
  int level;
  AvatarCard(
      {required this.name,
      required this.email,
      required this.image,
      required this.level,
      required this.desc,
      Key? key})
      : super(key: key);

  @override
  _AvatarCardState createState() => _AvatarCardState();
}

class _AvatarCardState extends State<AvatarCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: const Text('ID Card'),
        leading: IconButton(
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.level += 1;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.grey[700],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'NAME',
                      style: TextStyle(
                          color: Colors.grey[350], letterSpacing: 2.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      'CURRENT AVATAR LEVEL',
                      style: TextStyle(
                          color: Colors.grey[350], letterSpacing: 2.0),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      (widget.level).toString(),
                      style: TextStyle(
                        color: Colors.amberAccent[200],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 30.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.grey[400],
                        ),
                        Text(
                          widget.email,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 18.0,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Text(
                      'DESCRIPTION',
                      style: TextStyle(
                          color: Colors.grey[350], letterSpacing: 2.0),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        widget.desc,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: Colors.amberAccent[200],
                          letterSpacing: 2.0,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20.0),
                Flexible(
                  flex: 1,
                  child: ClipOval(
                    child: Image.asset(widget.image),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
