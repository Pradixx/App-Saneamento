/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Beans.Agentes;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author diegu
 */
public class CadastroAgDAO {
    private Conexao conexao;
    private Connection conn;
    
    public CadastroAgDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
  public void cadastrarAgente(Agentes cadastro){
        String sql = "INSERT INTO agentes (username, nome, sobrenome, email, senha) VALUES (?,?,?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getUsername());
            stmt.setString(2, cadastro.getNome());
            stmt.setString(3,cadastro.getSobrenome());
            stmt.setString(4, cadastro.getEmail());
            stmt.setString(5, cadastro.getSenha());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir cadastro: "+ e.getMessage());
        }
    }  
}
