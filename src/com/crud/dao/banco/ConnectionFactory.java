package com.crud.dao.banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    public static final int MYSQL = 0;
    public static final int POSTGRES = 1;
    private static final String MySQLDriver = "com.mysql.jdbc.Driver";
    private static final String POSTGRESDriver = "org.postgresql.Driver";

    public static Connection conexao(String url, String nome, String senha,
            int banco) throws ClassNotFoundException, SQLException {
        switch (banco) {
            case MYSQL:
                Class.forName(MySQLDriver);
                break;
            case POSTGRES:
                Class.forName(POSTGRESDriver);
                break;
        }

        return DriverManager.getConnection(url, nome, senha);
    }

}
