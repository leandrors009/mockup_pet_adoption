import '../core/components/filter_pet.dart';
import '../core/constants/pets.dart';
import '../core/pet.dart';

var filterPetList = [
  FilterPet(
    typeFilter: filter.dog,
    selected: true,
  ),
  FilterPet(
    typeFilter: filter.cat,
  ),
  FilterPet(
    typeFilter: filter.bird,
  ),
];
