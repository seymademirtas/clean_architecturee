import 'package:clean_architecture/src/app/pages/home/home_presenter.dart';
import 'package:clean_architecture/src/domain/entities/car.dart';
import 'package:clean_architecture/src/domain/repositories/car_repository.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller{

  final HomePresenter _presenter;

  HomeController(CarRepository _carRepository)
  : _presenter = HomePresenter(_carRepository);

List<Car>? cars;
  @override
  void initListeners() {
  _presenter.getCarsOnNext = (List<Car>? response){

    cars=response;
    refreshUI();
  };

  _presenter.getCarsOnError =(error) {};
  }

   @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
}