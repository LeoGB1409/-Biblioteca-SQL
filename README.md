# PT-BR

# 📚 Biblioteca SQL

Projeto desenvolvido para praticar modelagem de banco de dados e consultas SQL através da organização da minha biblioteca pessoal.

A ideia foi transformar minha coleção física de livros, histórias em quadrinhos e mangás em um banco de dados estruturado, permitindo consultas, organização e acompanhamento do progresso de leitura.

---

## 🎯 Objetivo

Aplicar conceitos fundamentais de SQL em um projeto baseado em um cenário real.

O sistema registra diferentes tipos de mídia presentes na minha coleção e permite visualizar todos os itens em uma única consulta, independentemente do formato.

---

## 🛠 Tecnologias Utilizadas

* SQL
* Banco de Dados Relacional
* Constraints (`CHECK`)
* `UNION ALL`
* `ROW_NUMBER()`

---

## 📂 Estrutura do Banco de Dados

O projeto foi dividido em três tabelas principais:

### 📖 BibliotecaSQL

Armazena livros.

### 🦸 HQSBibliotecaSQL

Armazena histórias em quadrinhos.

### 🎴 MangasBibliotecaSQL

Armazena mangás.

Cada tabela contém informações como:

* Título
* Autor / Artista / Mangaká
* Gênero
* Ano de publicação
* Editora
* Número de páginas
* Status de leitura

---

## ✅ Controle de Integridade

Foi utilizada uma `CHECK CONSTRAINT` para garantir que apenas valores válidos possam ser inseridos no campo de status de leitura:

* Lido
* Lendo
* Não Lido

Isso ajuda a manter a consistência dos dados armazenados.

---

## 🧠 Desafio do Projeto

Como os dados estavam distribuídos em três tabelas diferentes, foi necessário criar uma consulta capaz de unificar todas as mídias em uma única visualização.

Para isso foram utilizados:

* `UNION ALL` para combinar os registros
* Campo adicional `Tipo` para identificar a origem do registro
* `ROW_NUMBER()` para gerar um identificador único na consulta final

Exemplo da estrutura retornada:

| ID | Tipo  | Título         | Autor         | Status |
| -- | ----- | -------------- | ------------- | ------ |
| 1  | Livro | Drácula        | Bram Stoker   | Lido   |
| 2  | HQ    | Batman: Ano Um | Frank Miller  | Lido   |
| 3  | Mangá | Berserk        | Kentaro Miura | Lendo  |

---

## 📊 Funcionalidades

* Visualizar toda a biblioteca em uma única consulta
* Organizar diferentes tipos de mídia
* Acompanhar o progresso de leitura
* Consultar livros, HQs e mangás de forma centralizada
* Praticar conceitos avançados de SQL

---

## 📚 Exemplos de Obras Cadastradas

### Livros

* Drácula — Bram Stoker
* 1984 — George Orwell
* O Silêncio dos Inocentes — Thomas Harris

### Mangás

* Berserk
* Tokyo Ghoul
* Monster

### HQs

* Diversas obras da coleção pessoal

---

## 📖 Conceitos Praticados

* Criação de tabelas
* Modelagem de banco de dados
* Inserção de registros
* Constraints
* Consultas SQL
* UNION ALL
* ROW_NUMBER()
* Organização de dados relacionais

---

## 🚀 Próximos Passos

Possíveis melhorias futuras:

* Normalização das tabelas
* Criação de tabela de autores
* Criação de categorias/gêneros relacionais
* Implementação de Views
* Procedures e Triggers
* Dashboard para visualização dos dados
* Interface Web utilizando HTML, CSS e JavaScript

---

## 👨‍💻 Autor

Projeto desenvolvido por mim como prática de SQL e modelagem de dados, utilizando minha própria coleção de livros, HQs e mangás como base para o banco de dados.

# EN

# 📚 SQL Library Database

A personal SQL project created to practice database modeling, data organization, and query development using my own physical collection of books, comics, and manga.

Instead of working with fictional data, I built this database around items I actually own, making the project both practical and meaningful.

---

## 🎯 Project Goal

The purpose of this project is to apply fundamental SQL concepts in a real-world scenario.

The database stores different types of media and provides a unified way to view and manage an entire personal library.

---

## 🛠 Technologies Used

* SQL
* Relational Database Design
* CHECK Constraints
* UNION ALL
* ROW_NUMBER()

---

## 📂 Database Structure

The project is divided into three main tables:

### 📖 BibliotecaSQL

Stores books.

### 🦸 HQSBibliotecaSQL

Stores comic books and graphic novels.

### 🎴 MangasBibliotecaSQL

Stores manga volumes.

Each table contains information such as:

* Title
* Author / Artist / Mangaka
* Genre
* Publication Year
* Publisher
* Number of Pages
* Reading Status

---

## ✅ Data Validation

A `CHECK CONSTRAINT` was implemented to ensure that only valid reading statuses can be inserted into the database:

* Read
* Reading
* Not Read

This helps maintain data consistency and integrity.

---

## 🧠 Technical Challenge

Since each media type is stored in a separate table, I needed a way to display the entire collection through a single query.

To achieve this, I used:

* `UNION ALL` to combine records from all tables
* An additional `Type` field to identify the media category
* `ROW_NUMBER()` to generate a unique global ID for the final result set

Example output:

| ID | Type  | Title            | Author        | Status  |
| -- | ----- | ---------------- | ------------- | ------- |
| 1  | Book  | Dracula          | Bram Stoker   | Read    |
| 2  | Comic | Batman: Year One | Frank Miller  | Read    |
| 3  | Manga | Berserk          | Kentaro Miura | Reading |

---

## 📊 Features

* View the entire library through a single query
* Organize different media formats
* Track reading progress
* Centralize books, comics, and manga in one database
* Practice intermediate SQL concepts

---

## 📚 Sample Entries

### Books

* Dracula — Bram Stoker
* 1984 — George Orwell
* The Silence of the Lambs — Thomas Harris

### Manga

* Berserk
* Tokyo Ghoul
* Monster

### Comics

* Various titles from my personal collection

---

## 📖 Concepts Practiced

* Table Creation
* Database Modeling
* Data Insertion
* Constraints
* SQL Queries
* UNION ALL
* ROW_NUMBER()
* Relational Data Organization

---

## 🚀 Future Improvements

Possible next steps for the project:

* Database normalization
* Dedicated Authors table
* Relational Genre system
* SQL Views
* Stored Procedures and Triggers
* Analytics Dashboard
* Web Interface using HTML, CSS, and JavaScript

---

## 👨‍💻 Author

Developed as a hands-on SQL learning project using my personal collection of books, comics, and manga as the database source.


