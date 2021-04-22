// To parse this JSON data, do
//
//     final post = postFromMap(jsonString);

import 'dart:convert';

Post postFromMap(String str) => Post.fromMap(json.decode(str));

String postToMap(Post data) => json.encode(data.toMap());


class Post {
  //isntance of sort geliyordu görmek için title'ı alt satıra yazıldı
   @override toString() => 'title:$title,id:$id,price:$price,description:$description,category:$category,image:$image';
    Post({
        this.id,
        this.title,
        this.price,
        this.description,
        this.category,
        this.image,
    });

    int? id;
    String? title;
    double? price;
    String? description;
    String? category;
    String? image;

    factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "image": image,
    };
}
