import 'package:fluffy/model/addition_parameters_model.dart';
import 'package:mobx/mobx.dart';

part 'my_page_store.g.dart';

class MyPageStore = MyPageStoreBase with _$MyPageStore;

abstract class MyPageStoreBase with Store {
  @observable
  AdditionParametersModel parameters;

  @action
  void setParameters(AdditionParametersModel _parameters) {
    parameters = _parameters;
  }

  @observable
  String messageContent = "Please add 2 numbers using button below.";

  @observable
  String status = "";

  @observable
  bool isBusy = false;

  @computed
  String get answerContent {
    if (parameters != null) {
      final sum = (parameters.secondNUmber + parameters.firstNumber).toString();
      return "The sum of parameters is $sum";
    }

    return "";
  }

  @action
  Future<void> refresh() async {
    messageContent = "Sum of ${parameters.firstNumber} + ${parameters.secondNUmber}";
  }

  @action
  Future<void> save() async {
    isBusy = true;
    status = "Starting save operation.";
    try {
      Future.delayed(Duration(milliseconds: 1000));
      // operation to save to file
    } catch(ex) {

    }
    finally {
      status = "Finished save operation.";
      isBusy = false;
    }
  }
}