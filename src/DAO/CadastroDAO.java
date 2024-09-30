/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Beans.Cadastro;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;

/**
 *
 * @author diegu
 */
public class CadastroDAO {
    private Conexao conexao;
    private Connection conn;
    
    public CadastroDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
  public void cadastrarUsuario(Cadastro cadastro){
        String sql = "INSERT INTO usuários (username, nome, sobrenome, idade, email, senha) VALUES (?,?,?,?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getUsername());
            stmt.setString(2, cadastro.getNome());
            stmt.setString(3,cadastro.getSobrenome());
            stmt.setInt(4, cadastro.getIdade());
            stmt.setString(5, cadastro.getEmail());
            stmt.setString(6, cadastro.getSenha());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao inserir cadastro: "+ e.getMessage());
        }
    }  
}
