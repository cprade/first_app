import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const BasicPage(),
    );
  }
}

class BasicPage extends StatelessWidget {
  const BasicPage({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("FaceLook"),
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        leading: const Icon(Icons.music_note, color: Colors.white),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    backgroundPicture(height: 200, width: size.width),
                    Padding(
                      padding: const EdgeInsets.only(top: 127),
                      child: circleWhite(radius: 63),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 130),
                      // circleWhite(radius: 62),
                      child: profilePicture(radius: 60),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      simpleTitle("Marie SPIRULINE"),
                      simpleText(
                          "Un jour les chats domineront le monde mais pas aujourd'hui. C'est l'heure de la sieste 🐱"),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: editProfile(),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 10, height: 10),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child: editIcon(),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                dividerGrey(),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      simpleTitle("A propos de moi"),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.home),
                    Text("Annecy, France"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.work),
                    Text("Développeuse web"),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.favorite),
                    Text("En couple"),
                  ],
                ),
                dividerGrey(),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      simpleTitle("Photos"),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/pexels-aleksandr.jpg",
                              fit: BoxFit.fill)),
                      const SizedBox(width: 10, height: 10),
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/pexels-quang.jpg",
                              fit: BoxFit.fill)),
                      const SizedBox(width: 10, height: 10),
                      Expanded(
                          flex: 1,
                          child: Image.asset("images/pexels-cottonbro2.jpg",
                              fit: BoxFit.fill)),
                    ],
                  ),
                ),
                dividerGrey(),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      simpleTitle("Amis:  74"),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(children: [
                            Image.asset("images/pexels-vinicius.jpg",
                                fit: BoxFit.fill),
                            const SizedBox(width: 5, height: 5),
                            const Text("Sophie",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                      const SizedBox(width: 10, height: 10),
                      Expanded(
                          flex: 1,
                          child: Column(children: [
                            Image.asset("images/pexels-eng.jpg",
                                fit: BoxFit.fill),
                            const SizedBox(width: 5, height: 5),
                            const Text("Nina",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                      const SizedBox(width: 10, height: 10),
                      Expanded(
                          flex: 1,
                          child: Column(children: [
                            Image.asset("images/pexels-c.jpg",
                                fit: BoxFit.fill),
                            const SizedBox(width: 5, height: 5),
                            const Text("Clément",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  color: const Color.fromARGB(255, 236, 232, 232),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          profilePicture(),
                          const SizedBox(width: 5, height: 5),
                          const Text(
                            "Marie SPIRULINE",
                            style: TextStyle(fontSize: 17),
                          ),
                          const Spacer(),
                          const Text("Il y a 5 heures"),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Column(children: [
                            Image.asset(
                              "images/pexels-e.jpg",
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 5, height: 5),
                            const Text(
                                "Le plus beau ciel étoilé que j'ai vu de toute ma vie !"),
                          ])),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.favorite),
                          Text("22 likes"),
                          Icon(Icons.comment),
                          Text("5 commentaires"),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  color: const Color.fromARGB(255, 236, 232, 232),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          profilePicture(),
                          const SizedBox(width: 5, height: 5),
                          const Text(
                            "Marie SPIRULINE",
                            style: TextStyle(fontSize: 17),
                          ),
                          const Spacer(),
                          const Text("Il y a  3 jours"),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Column(children: [
                            Image.asset(
                              "images/pexels-cat.jpg",
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 5, height: 5),
                            const Text(
                                "Voici Chouchou, récupéré ce matin à la spa. Il est pas du tout stréssé"),
                          ])),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.favorite),
                          Text("35 likes"),
                          Icon(Icons.comment),
                          Text("10 commentaires"),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  color: const Color.fromARGB(255, 236, 232, 232),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          profilePicture(),
                          const SizedBox(width: 5, height: 5),
                          const Text(
                            "Marie SPIRULINE",
                            style: TextStyle(fontSize: 17),
                          ),
                          const Spacer(),
                          const Text("Il y a 1 semaine"),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        children: [
                          Expanded(
                              child: Column(children: [
                            Image.asset(
                              "images/pexels-seb.jpg",
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(width: 5, height: 5),
                            const Text("SHAKAPONK FOREVER 🖤🤘"),
                          ])),
                        ],
                      ),
                      const SizedBox(width: 10, height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.favorite),
                          Text("27 likes"),
                          Icon(Icons.comment),
                          Text("8 commentaires"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  CircleAvatar circleWhite({double? radius}) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
    );
  }

  CircleAvatar profilePicture({double? radius}) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white10,
      foregroundImage: const AssetImage("images/pexels-cottonbro.jpg"),
    );
  }

  Image backgroundPicture({double? height, double? width}) {
    return Image.asset(
      "images/pexels-edward.jpg",
      fit: BoxFit.cover,
      height: height,
      width: width,
    );
  }

  Text simpleTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Text simpleText(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      textAlign: TextAlign.center,
    );
  }

  Divider dividerGrey() {
    return const Divider(
      color: Colors.grey,
      height: 10,
      thickness: 0.5,
    );
  }

  Text editProfile() {
    return const Text(
      "Modifier le profil",
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Icon editIcon() {
    return const Icon(
      Icons.edit,
      size: 20,
      color: Colors.white,
    );
  }
}
