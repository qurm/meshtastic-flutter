// Abstraction layer for meshtastic device repository
// Deals with protobufs etc
//  see also https://bloclibrary.dev/#/flutterbloccoreconcepts?id=repositoryprovider
// but this is not very directive - only that the Bloc instantiates the repository
import 'dart:async';
import 'dart:core';

//import 'todo_entity.dart';

/// A class that provides Rx and Tx data as Streams to/from the device. The data layer of the app.
///
/// How and where it stores the entities should defined in a concrete
/// implementation, such as ...
///
/// The domain layer should depend on this abstract class, and each app can
/// inject the correct implementation depending on the environment, such as
/// web or Flutter.

// To Do - is there a need for an Abstract class here - there is only one implmentation common to all Meshtastic devices
// abstract class MeshMessageRepository {
//   /// Loads messages first from connect Device . If they don't exist or encounter an
//   /// error, it attempts to ...  do what?.
//   //Future<List<TodoEntity>> loadTodos();

//   Stream<List<MeshMessage>> rx_message();

//   Stream<List<MeshMessage>> tx_message();

//   //To do - some control & configuration

//   // Persists todos to local disk and the web
//   //Future saveTodos(List<TodoEntity> todos);
// }

//AF Todo - create 2 STreamcontrollers as local and expose the listen as a Stream
// The internal type is Stream<MeshMessage> and the incoming stream is a byte stream from the ble_api

/// A class that glues together the Meshtastic device and domain layer.
///
///
///

// class MeshMessageDeviceRepository implements MeshMessageRepository {
//   final
//   final TodosRepository _repository;
//   final BehaviorSubject<List<TodoEntity>> _subject;
//   bool _loaded = false;

//   // rx Stream
//   final _rx_controller = StreamController<MeshMessage>();
//   Stream<MeshMessage> get stream => _rx_controller.stream;

//   //todo get a call back function that will recv message fro ble, transform it, and then add to the sink.
//   _rx_controller.sink.add ;

//   MeshMessageDeviceRepository({
//     @required TodosRepository repository,
//     List<TodoEntity> seedValue,
//   })  : _repository = repository,
//         _subject = seedValue != null
//             ? BehaviorSubject<List<TodoEntity>>.seeded(seedValue)
//             : BehaviorSubject<List<TodoEntity>>();

// @override
// Future<void> addNewTodo(TodoEntity todo) async {
//   _subject.add([..._subject.value, todo]);

//   await _repository.saveTodos(_subject.value);
// }

// @override
// Future<void> deleteTodo(List<String> idList) async {
//   _subject.add(
//     List<TodoEntity>.unmodifiable(_subject.value.fold<List<TodoEntity>>(
//       <TodoEntity>[],
//       (prev, entity) {
//         return idList.contains(entity.id) ? prev : (prev..add(entity));
//       },
//     )),
//   );

//   await _repository.saveTodos(_subject.value);
// }

// @override
// Stream<List<TodoEntity>> todos() {
//   return firestore.collection(path).snapshots().map((snapshot) {
//     return snapshot.documents.map((doc) {
//       return TodoEntity(
//         doc['task'],
//         doc.documentID,
//         doc['note'] ?? '',
//         doc['complete'] ?? false,
//       );
//     }).toList();
//   });
// }

// @override
// Stream<List<MeshMessage>> rx_message() {
//   if (!_loaded) _loadTodos(); //todo check here that ble data is enabled.

//   return _subject.stream;
// }

// void _loadTodos() {
//   _loaded = true;

//   _repository.loadTodos().then((entities) {
//     _subject.add(List<TodoEntity>.unmodifiable(
//       [if (_subject.value != null) ..._subject.value, ...entities],
//     ));
//   });
// }

// @override
// Future<void> updateTodo(TodoEntity update) async {
//   _subject.add(
//     List<TodoEntity>.unmodifiable(_subject.value.fold<List<TodoEntity>>(
//       <TodoEntity>[],
//       (prev, entity) => prev..add(entity.id == update.id ? update : entity),
//     )),
//   );

//   await _repository.saveTodos(_subject.value);
// }
//}
