// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyPageStore on MyPageStoreBase, Store {
  Computed<String> _$answerContentComputed;

  @override
  String get answerContent =>
      (_$answerContentComputed ??= Computed<String>(() => super.answerContent))
          .value;

  final _$parametersAtom = Atom(name: 'MyPageStoreBase.parameters');

  @override
  AdditionParametersModel get parameters {
    _$parametersAtom.context.enforceReadPolicy(_$parametersAtom);
    _$parametersAtom.reportObserved();
    return super.parameters;
  }

  @override
  set parameters(AdditionParametersModel value) {
    _$parametersAtom.context.conditionallyRunInAction(() {
      super.parameters = value;
      _$parametersAtom.reportChanged();
    }, _$parametersAtom, name: '${_$parametersAtom.name}_set');
  }

  final _$messageContentAtom = Atom(name: 'MyPageStoreBase.messageContent');

  @override
  String get messageContent {
    _$messageContentAtom.context.enforceReadPolicy(_$messageContentAtom);
    _$messageContentAtom.reportObserved();
    return super.messageContent;
  }

  @override
  set messageContent(String value) {
    _$messageContentAtom.context.conditionallyRunInAction(() {
      super.messageContent = value;
      _$messageContentAtom.reportChanged();
    }, _$messageContentAtom, name: '${_$messageContentAtom.name}_set');
  }

  final _$statusAtom = Atom(name: 'MyPageStoreBase.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$isBusyAtom = Atom(name: 'MyPageStoreBase.isBusy');

  @override
  bool get isBusy {
    _$isBusyAtom.context.enforceReadPolicy(_$isBusyAtom);
    _$isBusyAtom.reportObserved();
    return super.isBusy;
  }

  @override
  set isBusy(bool value) {
    _$isBusyAtom.context.conditionallyRunInAction(() {
      super.isBusy = value;
      _$isBusyAtom.reportChanged();
    }, _$isBusyAtom, name: '${_$isBusyAtom.name}_set');
  }

  final _$saveAsyncAction = AsyncAction('save');

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  @override
  String toString() {
    final string =
        'parameters: ${parameters.toString()},messageContent: ${messageContent.toString()},status: ${status.toString()},isBusy: ${isBusy.toString()},answerContent: ${answerContent.toString()}';
    return '{$string}';
  }
}
