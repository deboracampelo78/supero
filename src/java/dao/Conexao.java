/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author debora.campelo
 */
public class Conexao {

    public Connection getConexao() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://127.0.0.1/db_tasklist?autoReconnect=true&useSSL=false", "root", "root");
        } catch (Exception e) {
            throw new RuntimeException("Erro1: " + e);
        }
    }
}
