import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:project_dicoding/data/avatar_data.dart';
import 'package:project_dicoding/screens/avatar_detail.dart';

class AvatarList extends StatelessWidget {
  const AvatarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          'YouTube Bizonacci Characters',
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
        children: [
          Container(
            color: Colors.grey[800],
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: Text(
                'PICK YOUR CHARACTER',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 900) {
                  return ListView(
                    children: _cardAvatarRow(context),
                  );
                } else {
                  return GridView.count(
                    crossAxisCount: 2,
                    children: _cardAvatarColumn(context, constraints.maxHeight),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> _cardAvatarColumn(BuildContext context, double size) {
  return List<Widget>.generate(avatarChar.length, (index) {
    return SizedBox(
      height: size * 0.8,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AvatarCard(
                  name: avatarChar[index].name,
                  level: avatarChar[index].level,
                  email: avatarChar[index].email,
                  image: avatarChar[index].image,
                  desc: avatarChar[index].desc,
                );
              },
            ),
          );
        },
        child: Container(
          constraints: const BoxConstraints(
            maxHeight: 500,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent),
          ),
          height: size,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage(avatarChar[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                avatarChar[index].name,
                style: TextStyle(
                  color: Colors.grey[350],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  });
}

List<Widget> _cardAvatarRow(BuildContext context) {
  return List<Widget>.generate(avatarChar.length, (index) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AvatarCard(
                    name: avatarChar[index].name,
                    level: avatarChar[index].level,
                    email: avatarChar[index].email,
                    image: avatarChar[index].image,
                    desc: avatarChar[index].desc,
                  );
                },
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(avatarChar[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      avatarChar[index].name,
                      style: TextStyle(
                        color: Colors.grey[350],
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  });
}
