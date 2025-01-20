# ToDo List Application

## **Descrição**
Este projeto é um aplicativo de lista de tarefas (ToDo List) desenvolvido em Flutter, seguindo a arquitetura **MVC** (Model-View-Controller). Ele utiliza **setState** como método de gerenciamento de estado e implementa armazenamento persistente com **SharedPreferences**, permitindo que as tarefas sejam salvas e recuperadas mesmo após o aplicativo ser fechado.



## **Telas**

- em breve, após modificar o design


## **Estrutura do Projeto**

```
lib/
├── main.dart                # Ponto de entrada do aplicativo
├── models/
│   └── todo_model.dart      # Model da tarefa
├── controllers/
│   └── todo_controller.dart # Controller para gerenciar lógica de negócios
├── views/
│   └── home.dart            # Interface de usuário principal
└── styles/
    └── styles.dart          # Estilos e cores do aplicativo
```




## **Funcionalidades**
1. **Adicionar Tarefas**:
   - Clique no botão flutuante para abrir a caixa de diálogo.
   - Digite o título da tarefa e clique em "Salvar".

2. **Marcar Como Concluído**:
   - Use a caixa de seleção ao lado de cada tarefa para alternar o status.

3. **Remover Tarefas**:
   - Clique no ícone de lixeira para excluir uma tarefa.

4. **Armazenamento Persistente**:
   - As tarefas são salvas localmente e restauradas ao reabrir o aplicativo.



## **Instalação e Execução**

1. **Pré-requisitos**:
   - Flutter SDK instalado.
   - Dispositivo físico ou emulador configurado.

2. **Clone o repositório**:
   ```bash
   git clone https://github.com/CamilaFernandesdev/todolist_application.git
   cd lista_de_tarefas
   ```

3. **Instale as dependências**:
   ```bash
   flutter pub get
   ```

4. **Execute o aplicativo**:
   ```bash
   flutter run
   ```



## **Pacotes Utilizados**
- `shared_preferences`: Para armazenamento persistente das tarefas.

---

## **Futuras Melhorias**
1. Implementar gerenciamento de estado com `Provider` ou `Riverpod`.
2. Adicionar suporte a categorias para as tarefas.
3. Melhorar o design com animações e transições.
4. Adicionar suporte para sincronização de tarefas em nuvem.


---

Desenvolvido com 💙 usando Flutter!

