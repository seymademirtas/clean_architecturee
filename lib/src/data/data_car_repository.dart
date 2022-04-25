import 'dart:async';

import 'package:clean_architecture/src/domain/entities/car.dart';
import 'package:clean_architecture/src/domain/repositories/car_repository.dart';

class DataCarRepository implements CarRepository {
  StreamController<List<Car>> _streamController = StreamController();
List<Car> _cars = [Car("id", "marka", "modelYili")];

  @override
  Stream<List<Car>> getCars() {
    Future.delayed(Duration.zero).then((_) => _streamController.add(_cars));
  return _streamController.stream;

  }

}