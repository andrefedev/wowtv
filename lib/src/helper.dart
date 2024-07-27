import 'dart:async';

import 'package:equatable/equatable.dart';

enum CrudStatus { loaded, created, updated, deleted, upserted }

class CrudResult<T> extends Equatable {
  final T result;
  final CrudStatus status;

  const CrudResult({
    required this.result,
    required this.status,
  });

  bool get isLoaded => status == CrudStatus.loaded;

  bool get isCreated => status == CrudStatus.created;

  bool get isUpdated => status == CrudStatus.updated;

  bool get isDeleted => status == CrudStatus.deleted;

  bool get isUpserted => status == CrudStatus.upserted;

  @override
  List<Object?> get props => [result, status];
}

/// CrudService: class
/// clase que permite...
class EventCrudResult {
  final _value = StreamController.broadcast();

  Stream get value => _value.stream.asBroadcastStream();

  Stream<T> on<T>() {
    return _value.stream.where((event) => event is T).cast<T>();
  }

  void load<T>(T item) {
    _value.sink.add(
      CrudResult(
        result: item,
        status: CrudStatus.loaded,
      ),
    );
  }

  void create<T>(T item) async {
    _value.add(
      CrudResult(
        result: item,
        status: CrudStatus.created,
      ),
    );
  }

  void update<T>(T item) async {
    _value.add(
      CrudResult(
        result: item,
        status: CrudStatus.updated,
      ),
    );
  }

  void delete<T>(T item) async {
    _value.add(
      CrudResult(
        result: item,
        status: CrudStatus.deleted,
      ),
    );
  }

  void destroy() {
    _value.close();
  }
}