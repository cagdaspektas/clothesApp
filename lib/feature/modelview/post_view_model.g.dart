// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postsAtom = Atom(name: '_PostViewModelBase.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$isServiceRequestLoadingAtom =
      Atom(name: '_PostViewModelBase.isServiceRequestLoading');

  @override
  bool get isServiceRequestLoading {
    _$isServiceRequestLoadingAtom.reportRead();
    return super.isServiceRequestLoading;
  }

  @override
  set isServiceRequestLoading(bool value) {
    _$isServiceRequestLoadingAtom
        .reportWrite(value, super.isServiceRequestLoading, () {
      super.isServiceRequestLoading = value;
    });
  }

  final _$itemAtom = Atom(name: '_PostViewModelBase.item');

  @override
  int get item {
    _$itemAtom.reportRead();
    return super.item;
  }

  @override
  set item(int value) {
    _$itemAtom.reportWrite(value, super.item, () {
      super.item = value;
    });
  }

  final _$fetchDataAsyncAction = AsyncAction('_PostViewModelBase.fetchData');

  @override
  Future<void> fetchData() {
    return _$fetchDataAsyncAction.run(() => super.fetchData());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  dynamic increment() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.increment');
    try {
      return super.increment();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrement() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.decrement');
    try {
      return super.decrement();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic dataChanged() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.dataChanged');
    try {
      return super.dataChanged();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
isServiceRequestLoading: ${isServiceRequestLoading},
item: ${item}
    ''';
  }
}
