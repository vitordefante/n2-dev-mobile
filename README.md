![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/a280e642-6e7f-40ae-ac9f-19a69f688917)# n2-dev-mobile
# Aplicativo Flutter de CRUD com Firebase

Este é um aplicativo Flutter simples de CRUD (Create, Read, Update, Delete) que se conecta ao Firebase para realizar operações de banco de dados. Ele é projetado para fins de aprendizado e demonstração.

<div style="display: flex; flex-wrap: wrap; justify-content: center;">
  <img src="assets/screenshot.png" style="width: 180px; margin-right: 20px; margin-bottom: 20px;">
</div>

## Recursos

- Cadastro de itens.
- Leitura de itens existentes.
- Atualização de itens.
- Exclusão de itens.
- Integração com o Firebase Firestore.

## Pré-requisitos

- Flutter SDK instalado e configurado.
- Dependências Firebase adicionadas ao arquivo `pubspec.yaml`.

## Como Executar o Aplicativo

1. Clone este repositório: `git clone https://github.com/vitordefante/n2-dev-mobile.git`
2. Na pasta raiz do projeto, instale as dependencias.
`flutter pub get`
3. Crie um novo projeto no seu console do firebase.

![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/fcfb56da-eb9f-44d6-891a-9e57a1996d2b)

4. Na pasta raiz do projeto, instale o firebase tools. `npm install -g firebase tools`
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/4d5df9c9-4769-47b3-b700-555529a301d8)

5. Faça o login na sua conta do firebase. `firebase login`
   
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/32f6563a-86eb-4794-adce-e7858a3a737f)

6. Ative o flutterfire cli (Lembre-se de adicionar o Flutter ao PATH) `pub global activate flutterfire_cli`

7. Conecte ao projeto do Firebase criado posteriormente. `flutterfire configure`

![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/2f160ab2-fc27-4ca6-b7e6-57d762d38a23)

8. Adicione o Firebase Core. `flutter pub add firebase_core`

9. Crie uma base de dados. Vá até o seu projeto no Firebase, no menu lateral vá em Criação > Firestore Database
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/9055d63b-846a-489e-9ad0-cf7ac547e85e)

Create database.

![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/25a6a38f-16c4-49d2-a77a-bb8312a76847)

Mantenha as configurações padrão.
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/92aa228d-1da9-4dfa-ad75-1ea28940845a)

Mantenha a localização padrão.
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/3003ab61-c7e6-456d-b782-12462df16b47)

10. Altere as regras da base de dados.
Vá no menu superior > regras. Então altere o write de `false` para `true`
![image](https://github.com/vitordefante/n2-dev-mobile/assets/93745213/0b0f1e88-3b80-4ecc-9c62-d3a2804551a6)

Para salvar, clique em desenvolver e testar. Pronto, o projeto está pronto para rodar.

   
