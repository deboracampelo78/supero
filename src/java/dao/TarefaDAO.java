/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Tarefa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author debora.campelo
 */
public class TarefaDAO {

    private Connection conn;
    private PreparedStatement stmp;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Tarefa> lista = new ArrayList<>();

    public TarefaDAO() {
        conn = new Conexao().getConexao();
        System.out.println("Conectado");
    }

    public void inserir(Tarefa tarefa) {
        String sql = "INSERT INTO tarefas (tarefas_descricao, tarefas_status) VALUES (?,?) ";
        try {
            stmp = conn.prepareStatement(sql);
            stmp.setString(1, tarefa.getTarefas_descricao());
            stmp.setString(2, tarefa.getTarefas_status());
            stmp.execute();
            stmp.close();
        } catch (Exception e) {
            throw new RuntimeException("Falha ao inserir tarefa: " + e);
        }
    }

    public void alterar(Tarefa tarefa) {
        String sql = "UPDATE tarefas SET tarefas_descricao = ?, tarefas_status = ? WHERE idtarefas = ?";
        try {
            stmp = conn.prepareStatement(sql);
            stmp.setString(1, tarefa.getTarefas_descricao());
            stmp.setString(2, tarefa.getTarefas_status());
            stmp.setInt(3, tarefa.getIdtarefas());
            stmp.execute();
            stmp.close();
        } catch (Exception e) {
            throw new RuntimeException("Falha ao alterar tarefa: " + e);
        }
    }

    public void excluir(int valor) {
        String sql = "DELETE FROM tarefas WHERE idtarefas = " + valor;
        try {
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Falha ao excluir tarefa: " + e);
        }
    }

    public ArrayList<Tarefa> listar() {
        String sql = "SELECT * FROM tarefas";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Tarefa tarefa = new Tarefa();
                tarefa.setIdtarefas(rs.getInt("idtarefas"));
                tarefa.setTarefas_descricao(rs.getString("tarefas_descricao"));
                tarefa.setTarefas_status(rs.getString("tarefas_status"));
                lista.add(tarefa);
            }
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Falha ao listar tarefa pelo id: " + e);
        }
        return lista;
    }

    public ArrayList<Tarefa> listarDescricao(String valor) {
        String sql = "SELECT * FROM tarefas WHERE tarefas_descricao LIKE '%" + valor + "%'";
        try {
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                Tarefa tarefa = new Tarefa();
                tarefa.setIdtarefas(rs.getInt("idtarefas"));
                tarefa.setTarefas_descricao(rs.getString("tarefas_descricao"));
                tarefa.setTarefas_status(rs.getString("tarefas_status"));
                lista.add(tarefa);
            }
            st.close();
        } catch (Exception e) {
            throw new RuntimeException("Falha ao listar tarefa pela descrição: " + e);
        }
        return lista;
    }
}
