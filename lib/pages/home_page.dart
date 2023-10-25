import "package:cloud_firestore/cloud_firestore.dart";
import "package:crud_n2_mobile/services/firestore.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // firestore
  final FireStoreService firestoreService = FireStoreService();

  //text controller
  final TextEditingController textController = TextEditingController();



  // Abre caixa de dialogo para adicionar uma nota.
  void openNoteBox({String? docID}) {
    showDialog(context: context, builder:(context) => AlertDialog(
      content: TextField(
        controller: textController,
      ),
      actions: [
        // botao de salvar
        ElevatedButton(
          onPressed: () {
            // adicionar nota ao banco de dados.
            if (docID == null) {
              firestoreService.addNote(textController.text);
            }

            else {
              firestoreService.updateNote(docID, textController.text,);
                }
            // limpar campo de texto
            textController.clear();

            // fechar campo de texto
            Navigator.pop(context);
          },
          child: Text("Adicionar")
          )
      ],

    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notes")),
      floatingActionButton: FloatingActionButton(
        onPressed:openNoteBox,
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestoreService.getNotesStream(),
        builder: (context, snapshot) {
          // se houverem dados no snapshot, retornar as notas

          if (snapshot.hasData) {
            List notesList = snapshot.data!.docs;

            // renderiza as notas como lista
            return ListView.builder(
              itemCount: notesList.length,
              itemBuilder: (context, index) {
                // pega cada nota indivualmente
                DocumentSnapshot document = notesList[index];
                String docID = document.id;

                // pega uma nota de cada doc
                Map<String, dynamic> data =
                  document.data() as Map<String, dynamic>;
                String noteText = data['note'];

                // display list as tile
                return ListTile(
                  title: Text(noteText),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                    // botao de atualizar
                    IconButton(
                      onPressed: () => openNoteBox(docID: docID),
                      icon: const Icon(Icons.settings),
                  ),

                  // botao de deletar
                  IconButton(
                    onPressed: () => firestoreService.deleteNote(docID),
                    icon: const Icon(Icons.delete),
                    )
                    ],
                    ),
                );

              }
            );
          } else {
            return const Text("Sem notas...");
          }
        },
      ),
    );
  }
}