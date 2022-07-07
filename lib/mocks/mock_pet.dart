import '../core/constants/pets.dart';
import '../core/pet.dart';

var animalsList = [
  Pet(
    imagePath: PetsPath.image1,
    name: 'Sparky',
    breed: 'Golden Retriever',
    gender: 'Female',
    age: DateTime(2020, 8, 20),
    distance: 2.5,
    isLiked: true,
  ),
  Pet(
    imagePath: PetsPath.image2,
    name: 'Charlie',
    breed: 'Boston Terrier',
    gender: 'Male',
    age: DateTime(2021, 12, 20),
    distance: 0.6,
    isLiked: false,
  ),
  Pet(
    imagePath: PetsPath.image3,
    name: 'Max',
    breed: 'Siberian Husky',
    gender: 'Male',
    age: DateTime(2022, 02, 2),
    distance: 22,
    isLiked: false,
  ),
  Pet(
    imagePath: PetsPath.image4,
    name: 'Daisy',
    breed: 'Maltese',
    gender: 'Female',
    age: DateTime(2021, 04, 10),
    distance: 5.6,
    isLiked: true,
  ),
  Pet(
    imagePath: PetsPath.image5,
    name: 'Zoe',
    breed: 'Jack Russel Terrier',
    gender: 'Male',
    age: DateTime(2019, 8, 20),
    distance: 0.1,
    isLiked: false,
  ),
];

// const json = '''[
//   {
//     "imagePath": "assets/pets/pet1.png",
//     "name": "Sparky",
//     "breed": "Golden Retriever",
//     "gender": "Female",
//     "age": "2019-08-20 00:00:00.000",
//     "distance": 2.5,
//     "isLiked": true,
//   },
//   {
//     "imagePath": "assets/pets/pet2.png",
//     name: 'Charlie',
//     breed: 'Boston Terrier',
//     gender: 'Male',
//     age: DateTime(2021, 12, 20),
//     distance: 0.6,
//     isLiked: false,
//   },

// ]''';
