import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category, location;
  final int price, id, number;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.price,
    required this.color,
    required this.description,
    required this.location,
    required this.title,
    required this.number,
    required this.category,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "UpDown Farm",
      price: 450,
      location: "Mandeville, Manchester",
      description:
          "rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/Avocado.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.blue),
  Product(
      id: 2,
      title: " Cold Farm",
      price: 550,
      location: "Port Maria, St. Mary",
      description:
          "rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/a1.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.green),
  Product(
      id: 3,
      title: "Town Farm",
      price: 300,
      location: "Falmouth Trelawny",
      description:
          "rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/a2.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.orange),
  Product(
      id: 4,
      title: "Backyard Farm",
      price: 150,
      location: "Christiana, Manchester",
      description:
          "rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/a3.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.red),
  Product(
      id: 5,
      title: "Country Farm",
      price: 700,
      location: " Lucea, Hanover",
      description:
          " rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/a4.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.purple),
  Product(
      id: 6,
      title: "Fresh Farm",
      price: 9000,
      location: " Ocho Rios, St. Ann",
      description:
          "  rich in vitamins, proteins, carbohydrates and many other energetic compounds",
      image: "assets/images/a1.jpg",
      category: "per pound",
      number: 876555555,
      color: Colors.amber),
];
