import 'package:flutter/material.dart';

class PopularDestination {
  String name;
  Image image;
  String des;
  PopularDestination({
    this.name,
    this.image,
    this.des,
  });
}

List<PopularDestination> getPopularDestination = [
  PopularDestination(
    name: "Krabi",
    des:
        "Krabi, on southern Thailand’s west coast, is a province characterized by craggy, sheer limestone cliffs, dense mangrove forests, and more than a hundred offshore islands",
    image: Image.network(
      "https://images.unsplash.com/photo-1578788139866-aa5680009a29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=784&q=80",
      filterQuality: FilterQuality.high,
      fit: BoxFit.cover,
    ),
  ),
  PopularDestination(
    name: "Venice",
    des:
        "The Rialto Bridge consists of a single stone-arch span that supports a broad rectangular deck carrying two arcades of shops fronting on three roadways.",
    image: Image.network(
      "https://images.unsplash.com/photo-1519112232436-9923c6ba3d26?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
  ),
  PopularDestination(
    name: "Halistatt",
    des:
        "Hallstatt is a village on Lake Hallstatt's western shore in Austria's mountainous Salzkammergut region. Its 16th-century Alpine houses and alleyways are home to cafes and shops",
    image: Image.network(
      "https://images.unsplash.com/photo-1619029812356-2dd7cab62629?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
  ),
  PopularDestination(
    des:
        "The Maiden's Tower (Turkish: Kız Kulesi), also known as Leander's Tower (Tower of Leandros) since the medieval Byzantine period, is a tower on a small islet at the southern entrance of the Bosphorus strait 200 m (220 yd) from the coast of Üsküdar in Istanbul, Turkey.",
    name: "Kiz Kulesi",
    image: Image.network(
      "https://images.unsplash.com/photo-1613504235980-ca0c10bd5838?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=889&q=80",
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    ),
  ),
];
