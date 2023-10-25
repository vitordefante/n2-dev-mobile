import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreService {
  // pegar a colecao de notas
  final CollectionReference notes = FirebaseFirestore.instance.collection('notes');

  // CREATE: Adicionar uma nova nota
  Future<void> addNote(String note) {
    return notes.add({
      'note': note,
      'timestamp': Timestamp.now(),
    });
  }

  // READ: Pegar notas da base de dados
  Stream<QuerySnapshot> getNotesStream() {
    return notes.orderBy('timestamp', descending: true).snapshots();
  }

  // UPDATE: Atualizar as notas pelo id
  Future<void> updateNote(String docID, String newNote) {
    return notes.doc(docID).update ({
      'note': newNote,
      'timestamp': Timestamp.now(),
    });
  }

  // DELETE: Deletar as notas pelo id
  Future<void> deleteNote(String docID) {
    return notes.doc(docID).delete();
  }
}