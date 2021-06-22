#include <iostream>
using namespace std;
/*
Classe que cria usuarios, incluindo seus atributos nome, email e telefone.
Os métodos da classe permitem a criacao de usuarios, a recuparação de senhas, a postagem no feed de atividades, a avalicao de estabelecimento e a exclusao de uma conta.
*/
class Usuario {    
  public:          
    string nome;   
    string email;  
    int telefone;  
    Usuario(string nome, string email, int telefone) { s
      nome = nome;
      email = email;
      telefone = telefone;
    }
    void cadastraUsuario();
    void recuperarSenha();
    void postarFeed();
    void avaliar();
    void excluirUsuario();
};
/*
Classe que cria estabelecimentos, incluindo seus atributos nome, email, cnpj e telefone.
Os métodos da classe permitem a criacao de usuarios de estabelecimento, a recuparação de senhas, a criacao de eventos por estes estabelecimentos, a resposta a avalicoes feitas por usuarios e a exclusao de uma conta de estabelecimento.
*/
class Estabelecimento {
  public:
    string nome;
    string email;
    int cnpj;
    int telefone;
    Estabelecimento(string nome, string email, int cnpj, int telefone) {
      nome = nome;
      email = email;
      cnpj = cnpj;
      telefone = telefone;
    }
    void cadastraEstabelecimento();
    void recuperarSenha();
    void criarEvento();
    void responderAvaliacao();
    void excluirEstabelecimento();
};
/*
Classe que cria avaliacoes de eventos e estabelecimentos, incluindo, como atributos os identificadores do usuario que realizou a avaliacao, o respectivo estabelecimento, a nota dada pelo usuario, um comentario em texto e a resposta a esse comentario pelo estabelecimento.
Os métodos da classe permitem a notificacao do estabelecimento quanto um usuario realiza uma avaliacao, a edicao de uma avaliacao feita e a exclusao da avaliacao pelo usuario.
*/
class Avaliacao {
  public:
    int id_usuario;
    int id_estabelecimento;
    int nota;
    string comentario_usuario;
    string resposta_estabelecimento;
    Avaliacao(int id_usuario, int id_estabelecimento, int nota, string comentario_usuario, string resposta_estabelecimento) {
      id_usuario = id_usuario;
      id_estabelecimento = id_estabelecimento;
      nota = nota;
      comentario_usuario = comentario_usuario;
      resposta_estabelecimento = resposta_estabelecimento;
    }
    void notificarEstabelecimento();
    void editarAvaliacao();
    void excluirAvaliacao();
};

int main() {
  
}