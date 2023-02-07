// CECI EST LE COURS / EXO UDEMY PAS ENCORE FINI !!!

class PostUdemy {
  String name;
  String imagePath;
  String desc;
  int likes;
  int comments;

  PostUdemy({
    required this.name,
    required this.imagePath,
    required this.desc,
    this.likes = 0,
    this.comments = 0,
  });

  String setLikes() {
    return "$likes j'aime";
  }

  String setComments() {
    if (comments > 1) {
      return "$comments commentaires";
    } else {
      return "$comments commentaire";
    }
  }
}
