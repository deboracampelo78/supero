/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author debora.campelo
 */
public class Tarefa {
    
    private int idtarefas;
    private String tarefas_descricao;
    private String tarefas_status;

    public int getIdtarefas() {
        return idtarefas;
    }

    public void setIdtarefas(int idtarefas) {
        this.idtarefas = idtarefas;
    }

    public String getTarefas_descricao() {
        return tarefas_descricao;
    }

    public void setTarefas_descricao(String tarefas_descricao) {
        this.tarefas_descricao = tarefas_descricao;
    }

    public String getTarefas_status() {
        return tarefas_status;
    }

    public void setTarefas_status(String tarefas_status) {
        this.tarefas_status = tarefas_status;
    }
   
}
