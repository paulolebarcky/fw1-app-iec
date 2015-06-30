package com.crud.model;

public class Usuario {

    private int id;
    private String nome;
    private String cpf;
    private String telefone;
    private String email;
    private String login;
    private String senha;
    public boolean usuarioValido;

    public Usuario(int id, String nome, String cpf, String telefone,
            String email, String login, String senha) {
        this.id = id;
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.login = login;
        this.senha = senha;
    }

    public Usuario(String nome, String cpf, String telefone, String email, String login, String senha) {
        this.nome = nome;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
        this.login = login;
        this.senha = senha;
    }

    @Override
    public String toString() {
        return "Usuario [id=" + id + ", nome=" + nome + ", cpf=" + cpf
                + ", telefone=" + telefone + ", email=" + email + ", login=" + login + "]";
    }

    public Usuario() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public boolean isUsuarioValido() {
        return usuarioValido;
    }

    public void setUsuarioValido(boolean ativo) {
        this.usuarioValido = ativo;
    }

}
