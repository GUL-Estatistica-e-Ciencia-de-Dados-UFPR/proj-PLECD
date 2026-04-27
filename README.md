# 📘 Pequeno Livro de Linux para Estudantes de Estatística e Ciência de Dados

## 🎯 Sobre o projeto

Este repositório contém o desenvolvimento colaborativo do livro:

> **“Pequeno Livro de Linux para Estudantes de Estatística e Ciência de Dados”**

O objetivo do projeto é criar um material didático moderno, técnico e aplicado, que introduza o sistema operacional Linux sob a perspectiva de seu uso em **ciência de dados, estatística e pesquisa científica**.

Diferente de livros tradicionais, este projeto busca:

- 🔬 Integrar Linux com práticas reais de análise de dados  
- ⚙️ Ensinar conceitos fundamentais de sistemas operacionais de forma aplicada  
- 🔁 Promover reprodutibilidade científica  
- 🧠 Desenvolver pensamento computacional e sistêmico  
- 🚀 Preparar estudantes para ambientes reais (HPC, pipelines, automação)

O livro será inicialmente distribuído em formato eletrônico (PDF), com a ambição futura de publicação formal (por exemplo, pela Editora UFPR).

---

## 🛠️ Tecnologias utilizadas

- 📄 **LaTeX** como linguagem principal de escrita  
- 📚 **BibTeX** para gerenciamento de referências  
- 🌿 **Git** para controle de versão  
- 🧩 Organização modular de conteúdo (capítulos, figuras, tabelas)

---

## 👥 Contribuição

Este é um projeto colaborativo aberto a membros do **GULECD/UFPR** e colaboradores externos.

### 📌 Regras gerais de contribuição

1. 🌿 **Trabalhe sempre em um branch próprio**
   - Nome sugerido: `feature/<descricao>` ou `chapter/<nome>`

2. 🔁 **Submeta um Pull Request (PR) para o branch `main`**
   - PRs devem ser claros e bem descritos

3. 📝 **Abra uma Issue junto com o PR**
   - Descreva brevemente:
     - o que foi adicionado/modificado
     - qual capítulo ou seção foi afetada
   - 🔗 Linke a Issue ao PR correspondente

4. 👤 **Adicione seu nome à lista de autores**
   - Se você contribuiu com conteúdo relevante, adicione seu nome no arquivo principal:
     - `main.tex`

---

## 🧱 Organização do conteúdo

### 📄 Documento principal

- O livro é orquestrado a partir de:
  - `main.tex`

---

### 🖼️ Figuras

- Devem ser colocadas em arquivos `.tex` separados  
- Nomeação obrigatória:

    fig_<nome>.tex

- Exemplo:

    fig_pipeline_dados.tex

- Devem ser incluídas no `main.tex` ou em capítulos via `\input{}` ou `\include{}`

---

### 📊 Tabelas

- Devem seguir o mesmo padrão das figuras  
- Nomeação:

    tab_<nome>.tex

- Exemplo:

    tab_comparacao_distros.tex

---

### 📚 Referências (BibTeX)

- Sempre que possível, **utilize referências científicas ou técnicas confiáveis**

- Cada autor deve manter seu próprio arquivo `.bib`:

    ref_<author>.bib

- Exemplo:

    ref_marcos.bib

- A referência a esses arquivos devem ser adicionados no início do `main.tex` e os arquivos .bib mantidos no repositório

✔️ Vantagens dessa abordagem:
- evita conflitos entre contribuições  
- permite integração com ferramentas como BetterBibTeX (Zotero)  
- facilita atualização automática das referências  

---

## 🧠 Diretrizes de escrita

- 🎯 Priorizar exemplos aplicados à Estatística e Ciência de Dados  
- 🔬 Sempre que possível, conectar com problemas reais  
- ⚙️ Evitar explicações puramente teóricas sem aplicação  
- 🧩 Manter modularidade (capítulos independentes, mas integráveis)  
- 📖 Escrever com clareza, precisão técnica e consistência  

---

## ⚖️ Licença

Este projeto está licenciado sob a:

> **GNU General Public License v3.0 (GPL-3.0)**

### 📚 O que isso significa no contexto de um livro?

- ✅ O conteúdo pode ser:
  - utilizado  
  - modificado  
  - redistribuído  

- ⚠️ Desde que:
  - qualquer versão derivada **mantenha a mesma licença (GPL-3.0)**  
  - o código-fonte (neste caso, o LaTeX do livro) seja disponibilizado  
  - os autores originais sejam devidamente creditados  

- 🔁 Isso garante que o livro permaneça:
  - aberto  
  - colaborativo  
  - livre  

---

## 🚀 Roadmap do projeto

- [ ] Estruturação completa dos capítulos  
- [ ] Escrita colaborativa inicial  
- [ ] Revisão técnica  
- [ ] Geração de versão PDF estável  
- [ ] Distribuição pública  
- [ ] Submissão para editora

---

## 💡 Como começar

1. Faça um fork do repositório  
    1.1 Se você é membro do GULECD-UFPR, solicite adição à organização no GitHub e ao repositório do projeto para realizar um clone 
2. Crie um branch para sua contribuição  
3. Implemente sua seção/capítulo  
4. Abra uma Issue descrevendo a contribuição  
5. Submeta um Pull Request  

---

## 🤝 Comunidade

Este projeto está associado ao:

- 🐧 GULECD/UFPR  
  (Grupo de Usuários Linux e Software Livre do Curso de Estatística e Ciência de Dados - UFPR)

---

## 📬 Contato

- 💬 Grupo de WhatsApp - https://chat.whatsapp.com/I2ARC7MtsPqH6RQhUqS06n

---

## 🧭 Filosofia do projeto

Este livro não é apenas um manual de Linux.

Ele é concebido como:

> 🧠 Um instrumento de formação técnica  
> 🔬 Um guia de prática científica  
> ⚙️ Uma oportunidade de trabalho conjunto entre membros do GULECD-UFPR e colaboradores externos  

---