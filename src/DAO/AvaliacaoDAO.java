/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Beans.Avaliacao;
import Beans.Login;
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
public class AvaliacaoDAO {
    private Conexao conexao;
    private Connection conn;
    
    public AvaliacaoDAO(){
        this.conexao = new Conexao();
        this.conn = this.conexao.getConexao();
    }
    
    public Login autenticar(String username, String senha) {
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Login cadastro = null;

        try {
            // SQL para consultar o usuário na tabela 'usuarios'
            String sql = "SELECT * FROM usuários WHERE username = ? AND senha = ?"; //basicamente Vai 
            //pesquisar o email e senha na tabela através de um inpunt ou get.

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, senha);

            rs = stmt.executeQuery();

            // Verifica se a consulta encontrou um resultado
            if (rs.next()) {
                // Usuário encontrado, cria uma instância do objeto Login
                cadastro = new Login();
                cadastro.setUsername(rs.getString("username"));
                cadastro.setSenha(rs.getString("senha")); 
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


        return cadastro;
    }
    
  public void cadastrarAvaliacao(Avaliacao avaliacao){
        String sql = "INSERT INTO avaliacao (username, critica, melhorar, nota) VALUES (?,?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, avaliacao.getUsername());
            stmt.setString(2, avaliacao.getCritica());
            stmt.setString(3,avaliacao.getMelhorar());
            stmt.setInt(4, avaliacao.getNota());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao Cadastrar avaliacao: "+ e.getMessage());
        }
    } 
}
