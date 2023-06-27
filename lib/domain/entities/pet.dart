// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:pet_adoption_app/core/const/media_const.dart';
import 'package:pet_adoption_app/domain/entities/pet_type.dart';
import 'package:pet_adoption_app/presentation/pages/home_screen.dart';

class Pet {
  String id;
  final String name;
  final String breed;
  final double age;
  final String imageUrl;
  final double price;
  bool isAdopted;
  final int? weight;
  Color? backgroundColor;
  final String? scientificName;
  final bool? isFemale;
  final String? distanceToUser;
  PetType? type;
  Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.age,
    required this.imageUrl,
    required this.price,
    required this.isAdopted,
    required this.weight,
    this.backgroundColor,
    this.scientificName,
    this.isFemale,
    this.distanceToUser,
    this.type,
  });

  Pet copyWith({
    String? id,
    String? name,
    String? breed,
    double? age,
    String? imageUrl,
    double? price,
    bool? isAdopted,
    int? weight,
    Color? backgroundColor,
    String? scientificName,
    bool? isFemale,
    String? distanceToUser,
    PetType? type,
  }) {
    return Pet(
      id: id ?? this.id,
      name: name ?? this.name,
      breed: breed ?? this.breed,
      age: age ?? this.age,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      isAdopted: isAdopted ?? this.isAdopted,
      weight: weight ?? this.weight,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      scientificName: scientificName ?? this.scientificName,
      isFemale: isFemale ?? this.isFemale,
      distanceToUser: distanceToUser ?? this.distanceToUser,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'breed': breed,
      'age': age,
      'imageUrl': imageUrl,
      'price': price,
      'isAdopted': isAdopted,
      'weight': weight,
      'backgroundColor': backgroundColor?.value,
      'scientificName': scientificName,
      'isFemale': isFemale,
      'distanceToUser': distanceToUser,
      'type': type.toString(),
    };
  }

  factory Pet.fromMap(Map<String, dynamic> map) {
    return Pet(
      id: map['id'] as String,
      name: map['name'] as String,
      breed: map['breed'] as String,
      age: map['age'] as double,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as double,
      isAdopted: map['isAdopted'] as bool,
      weight: map['weight'] != null ? map['weight'] as int : null,
      backgroundColor: map['backgroundColor'] != null
          ? Color(map['backgroundColor'] as int)
          : null,
      scientificName: map['scientificName'] != null
          ? map['scientificName'] as String
          : null,
      isFemale: map['isFemale'] != null ? map['isFemale'] as bool : null,
      distanceToUser: map['distanceToUser'] != null
          ? map['distanceToUser'] as String
          : null,
      type: PetType.values.first,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pet.fromJson(String source) =>
      Pet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Pet(id: $id, name: $name, breed: $breed, age: $age, imageUrl: $imageUrl, price: $price, isAdopted: $isAdopted, weight: $weight, backgroundColor: $backgroundColor, scientificName: $scientificName, isFemale: $isFemale, distanceToUser: $distanceToUser, type: $type)';
  }

  @override
  bool operator ==(covariant Pet other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.breed == breed &&
        other.age == age &&
        other.imageUrl == imageUrl &&
        other.price == price &&
        other.isAdopted == isAdopted &&
        other.weight == weight &&
        other.backgroundColor == backgroundColor &&
        other.scientificName == scientificName &&
        other.isFemale == isFemale &&
        other.distanceToUser == distanceToUser &&
        other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        breed.hashCode ^
        age.hashCode ^
        imageUrl.hashCode ^
        price.hashCode ^
        isAdopted.hashCode ^
        weight.hashCode ^
        backgroundColor.hashCode ^
        scientificName.hashCode ^
        isFemale.hashCode ^
        distanceToUser.hashCode ^
        type.hashCode;
  }
}

//Dummay data
List<Pet> getPetList() {
  final petList = [
    Pet(
      name: 'Sola',
      scientificName: 'Abyssinian cat',
      age: 2.0,
      distanceToUser: '3.6 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(203, 213, 216, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Orion',
      scientificName: 'Abyssinian cat',
      age: 1.5,
      distanceToUser: '7.8 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(237, 214, 180, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Luna',
      scientificName: 'American Shorthair',
      age: 3.0,
      distanceToUser: '6.5 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(214, 218, 234, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Milo',
      scientificName: 'Siamese',
      age: 2.0,
      distanceToUser: '3.3 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(243, 218, 203, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Charlie',
      scientificName: 'Maine Coon',
      age: 4.5,
      distanceToUser: '2.7 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(213, 230, 221, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lucy',
      scientificName: 'Persian',
      age: 2.5,
      distanceToUser: '5.1 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(249, 216, 215, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Oliver',
      scientificName: 'Scottish Fold',
      age: 3.0,
      distanceToUser: '4.2 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(226, 220, 230, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Chloe',
      scientificName: 'Ragdoll',
      age: 1.8,
      distanceToUser: '6.3 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(220, 224, 238, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Max',
      scientificName: 'Bengal',
      age: 2.2,
      distanceToUser: '3.9 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(244, 222, 205, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lola',
      scientificName: 'Sphynx',
      age: 1.5,
      distanceToUser: '7.1 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(222, 236, 215, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Leo',
      scientificName: 'Russian Blue',
      age: 2.8,
      distanceToUser: '4.8 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(232, 221, 237, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Mia',
      scientificName: 'British Shorthair',
      age: 3.2,
      distanceToUser: '5.9 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(246, 214, 209, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Oscar',
      scientificName: 'Devon Rex',
      age: 1.9,
      distanceToUser: '7.4 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(214, 232, 224, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Bella',
      scientificName: 'Balinese',
      age: 2.5,
      distanceToUser: '4.5 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(252, 211, 207, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Tiger',
      scientificName: 'Toyger',
      age: 2.3,
      distanceToUser: '4.1 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(228, 218, 236, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Sophie',
      scientificName: 'Himalayan',
      age: 3.5,
      distanceToUser: '6.9 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(217, 225, 239, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Rocky',
      scientificName: 'Norwegian Forest Cat',
      age: 4.2,
      distanceToUser: '2.5 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(235, 219, 231, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lily',
      scientificName: 'Tonkinese',
      age: 2.7,
      distanceToUser: '5.4 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(251, 209, 203, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Simba',
      scientificName: 'Egyptian Mau',
      age: 1.7,
      distanceToUser: '8.2 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(210, 238, 221, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lucky',
      scientificName: 'Singapura',
      age: 2.1,
      distanceToUser: '4.8 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(230, 215, 236, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Coco',
      scientificName: 'Chartreux',
      age: 3.8,
      distanceToUser: '6.2 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(208, 228, 235, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Teddy',
      scientificName: 'Turkish Van',
      age: 1.6,
      distanceToUser: '7.7 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(225, 233, 241, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Misty',
      scientificName: 'Burmese',
      age: 2.9,
      distanceToUser: '3.2 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(242, 212, 202, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Jack',
      scientificName: 'Manx',
      age: 2.4,
      distanceToUser: '5.6 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(246, 206, 201, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Daisy',
      scientificName: 'Oriental',
      age: 3.3,
      distanceToUser: '4.7 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(222, 227, 243, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Buddy',
      scientificName: 'Somali',
      age: 2.2,
      distanceToUser: '4.3 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(249, 202, 197, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Misty',
      scientificName: 'Burmilla',
      age: 1.9,
      distanceToUser: '7.9 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(220, 234, 229, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Rocky',
      scientificName: 'Japanese Bobtail',
      age: 4.7,
      distanceToUser: '3.1 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(238, 199, 195, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Coco',
      scientificName: 'LaPerm',
      age: 3.1,
      distanceToUser: '6.1 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(213, 223, 232, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Max',
      scientificName: 'Havana Brown',
      age: 2.6,
      distanceToUser: '5.2 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(229, 196, 192, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lola',
      scientificName: 'Munchkin',
      age: 1.8,
      distanceToUser: '7.2 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(244, 190, 186, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Leo',
      scientificName: 'Siberian',
      age: 3.6,
      distanceToUser: '2.9 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(225, 219, 230, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Sophie',
      scientificName: 'Bombay',
      age: 2.3,
      distanceToUser: '4.4 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(241, 186, 182, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Charlie',
      scientificName: 'Cornish Rex',
      age: 2.7,
      distanceToUser: '5.3 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(218, 216, 235, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lily',
      scientificName: 'Aegean',
      age: 1.7,
      distanceToUser: '8.1 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(236, 182, 178, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Oscar',
      scientificName: 'Singapura',
      age: 2.1,
      distanceToUser: '4.9 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(212, 226, 220, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Bella',
      scientificName: 'Mekong Bobtail',
      age: 3.9,
      distanceToUser: '6.0 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(228, 178, 175, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Simba',
      scientificName: 'Peterbald',
      age: 2.4,
      distanceToUser: '5.5 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(232, 212, 207, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Lucy',
      scientificName: 'Egyptian Mau',
      age: 1.6,
      distanceToUser: '7.6 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(208, 220, 214, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Teddy',
      scientificName: 'Korat',
      age: 2.9,
      distanceToUser: '3.3 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(253, 174, 171, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Molly',
      scientificName: 'American Bobtail',
      age: 3.3,
      distanceToUser: '4.6 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(202, 214, 229, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Rocky',
      scientificName: 'Selkirk Rex',
      age: 2.2,
      distanceToUser: '4.2 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(244, 169, 166, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Daisy',
      scientificName: 'Sphynx',
      age: 1.9,
      distanceToUser: '8.0 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(215, 206, 231, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Max',
      scientificName: 'Birman',
      age: 4.7,
      distanceToUser: '3.0 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(233, 164, 161, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Chloe',
      scientificName: 'Kurilian Bobtail',
      age: 3.1,
      distanceToUser: '6.0 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(191, 202, 220, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Oliver',
      scientificName: 'Ocicat',
      age: 2.6,
      distanceToUser: '5.4 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(255, 160, 157, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Mia',
      scientificName: 'Pixie-bob',
      age: 2.3,
      distanceToUser: '4.5 km',
      isFemale: true,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(209, 198, 232, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
    Pet(
      name: 'Toby',
      scientificName: 'Norwegian Forest Cat',
      age: 1.7,
      distanceToUser: '7.5 km',
      isFemale: false,
      imageUrl: ImageConst.transparentCat,
      backgroundColor: const Color.fromRGBO(240, 155, 152, 1.0),
      breed: '',
      id: '',
      isAdopted: false,
      price: 120,
      weight: 24,
    ),
  ];

  //Generate Id
  for (int i = 0; i < petList.length; i++) {
    petList[i].id = i.toString();
    petList[i].type = PetType.values[i % PetType.values.length];
  }

  return petList;
}
