package com.crud.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.crud.dao.banco.ConnectionFactory;
import com.crud.model.Usuario;

public class UsuarioDAO {

    private final String URL = "jdbc:postgresql://127.0.0.1:5433/crawler";
    private final String NOME = "plus";
    private final String SENHA = "plus";

    private Connection con;
    private Statement comando;

    public void conectar() {
        try {
            con = ConnectionFactory.conexao(URL, NOME, SENHA,
                    ConnectionFactory.POSTGRES);
            comando = con.createStatement();
            System.out.println("Conectado");
        } catch (ClassNotFoundException e) {
            System.out.println("Erro ao carregar o driver: " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Erro ao conectar: " + e.getMessage());
        }
    }

    public void fechar() {
        try {
            comando.close();
            con.close();
            System.out.println("Desconectado");
        } catch (SQLException e) {
            System.err.println("Erro ao conectar: " + e.getMessage());
        }
    }

    public void create(Usuario user) {
        conectar();
        try {
            String sql = "INSERT INTO usuario(id, nome,cpf,telefone,email,login,senha) VALUES(nextval('usuario_id_seq'),'"
                    + user.getNome()
                    + "', '"
                    + user.getCpf()
                    + "', '"
                    + user.getTelefone() + "', '" + user.getEmail() + "','" + user.getLogin() + "','" + user.getSenha() + "')";
            comando.execute(sql);
        } catch (SQLException e) {
            System.err.println("Erro ao inserir usuário: " + e.getMessage());
        } finally {
            fechar();
        }
    }

    public Usuario read(int id) {
        conectar();
        ResultSet rs;
        Usuario temp = null;
        try {
            rs = comando.executeQuery("SELECT * FROM usuario WHERE id = " + id);
            while (rs.next()) {
                temp = new Usuario(rs.getInt("id"), rs.getString("nome"),
                        rs.getString("cpf"), rs.getString("telefone"),
                        rs.getString("email"), rs.getString("login"), rs.getString("senha"));
            }
            return temp;

        } catch (SQLException e) {
            System.err.println("Erro ao buscar usuário: " + e.getMessage());
        } finally {
            fechar();
        }
        return null;
    }

    public List<Usuario> readAll() {
        conectar();
        List<Usuario> lista = new ArrayList<Usuario>();
        ResultSet rs;
        Usuario temp = null;
        try {
            rs = comando.executeQuery("SELECT * FROM usuario");
            while (rs.next()) {
                temp = new Usuario(rs.getInt("id"), rs.getString("nome"),
                        rs.getString("cpf"), rs.getString("telefone"),
                        rs.getString("email"), rs.getString("login"), rs.getString("senha"));
                lista.add(temp);
            }
            return lista;
        } catch (SQLException e) {
            System.err.println("Erro ao buscar usuários: " + e.getMessage());
            return null;
        } finally {
            fechar();
        }
    }

    public void update(Usuario user) {
        conectar();
        try {
            comando.executeUpdate("UPDATE usuario SET nome = '"
                    + user.getNome() + "', cpf ='" + user.getCpf()
                    + "', telefone = '" + user.getTelefone() + "', email ='"
                    + user.getEmail() + "',login ='" + user.getLogin() + "', senha='" + user.getSenha() + "' WHERE  id = " + user.getId() + ";");
        } catch (SQLException e) {
            System.err.println("Erro ao atualizar usuário: " + e.getMessage());
        } finally {
            fechar();
        }

    }

    public void delete(int id) {
        conectar();
        try {
            comando.execute("DELETE FROM usuario WHERE id = '" + id + "';");
        } catch (SQLException e) {
            System.err.println("Erro ao apagar usuário: " + e.getMessage());
        } finally {
            fechar();
        }
    }

    public Usuario login(Usuario bean) {

        conectar();
        ResultSet rs;
        Usuario temp = null;
        try {
            rs = comando.executeQuery("select id, login, senha, nome, telefone, email, cpf from usuario where login = '"
                    + bean.getLogin() + "' and senha = '" + bean.getSenha() + "'");
            while (rs.next()) {
                temp = new Usuario(rs.getInt("id"),rs.getString("nome"),
                        rs.getString("cpf"), rs.getString("telefone"),
                        rs.getString("email"), rs.getString("login"), rs.getString("senha"));

                temp.setUsuarioValido(true);
            }
            return temp;

        } catch (SQLException e) {
            System.err.println("Erro ao buscar usuário: " + e.getMessage());
        } finally {
            fechar();
        }

        return null;
    }

}
