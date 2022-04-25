import 'package:clean_architecture/src/domain/entities/car.dart';
import 'package:clean_architecture/src/domain/repositories/car_repository.dart';
import 'package:clean_architecture/src/domain/usecases/get_cars.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomePresenter extends Presenter{

late Function getCarsOnNext;
late Function getCarsOnError;
final GetCars _getCars;

HomePresenter(CarRepository _carRepository) : _getCars = GetCars(_carRepository);

void dispose() {
  _getCars.dispose();
}


}
class _GetCarsObserver extends Observer<List<Car>>{
  final HomePresenter _presenter;

  _GetCarsObserver(this._presenter);

  @override
  void onComplete() {
   
  }

  @override
  void onError(e) {
    _presenter.getCarsOnError(e);
  
  }

  @override
  void onNext(List<Car>? response) {
    _presenter.getCarsOnNext(response);
 
  }
}