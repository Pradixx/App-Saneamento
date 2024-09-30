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
//import java.util.ArrayList;
//import java.util.List;
import java.sql.SQLException;

/**
 *
 * @author diegu
 */
public class AgentesDAO {
    private Conexao conexao;
    private Connection conn;
    
    public AgentesDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    // Autenticando o usuário
    public Agentes autenticar(String username, String senha) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Agentes agentes = null;

        try {
            // SQL para consultar o usuário na tabela 'usuarios'
            String sql = "SELECT * FROM agentes WHERE username = ? AND senha = ?";
           

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, senha);

            rs = stmt.executeQuery();

            // Verifica se a consulta encontrou um resultado
            if (rs.next()) {
                // Usuário encontrado, cria uma instância do objeto Login
                agentes = new Agentes();
                agentes.setUsername(rs.getString("username"));
                agentes.setSenha(rs.getString("senha")); 
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao autenticar usuário: " + ex.getMessage());
        } finally {

            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar recursos: " + e.getMessage());
            }
        }


        return agentes;
    }
}
