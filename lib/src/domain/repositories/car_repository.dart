import 'package:clean_architecture/src/domain/entities/car.dart';

abstract class CarRepository {
  Stream<List<Car>> getCars();
}