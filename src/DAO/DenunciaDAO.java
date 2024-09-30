/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import Beans.Denuncia;
import Beans.Login;
import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author diegu
 */
public class DenunciaDAO {
    private Conexao conexao;
    private Connection conn;
    
    public DenunciaDAO(){
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
    
  public void cadastrarDenuncia(Denuncia denuncias){
        String sql = "INSERT INTO denuncias (username, descricao, local, cep) VALUES (?,?,?,?) ";
        
        try{
            PreparedStatement stmt = this.conn.prepareStatement(sql);
            stmt.setString(1, denuncias.getUsername());
            stmt.setString(2, denuncias.getDescricao());
            stmt.setString(3,denuncias.getLocal());
            stmt.setInt(4, denuncias.getCep());
            stmt.execute();
        }catch(Exception e){
            System.out.println("Erro ao Cadastrar denuncia: "+ e.getMessage());
        }
    }
  
  public List<Denuncia> getDenuncia(){
        String sql = "SELECT * FROM denuncias";
        try{
          PreparedStatement stmt = this.conn.prepareStatement(sql);
          ResultSet rs = stmt.executeQuery();
          List<Denuncia> listaDenuncia = new ArrayList<>();
          while(rs.next()){
              Denuncia p = new Denuncia();
              p.setUsername(rs.getString("username"));
              p.setDescricao(rs.getString("descricao"));
              p.setLocal(rs.getString("local"));
              p.setCep(rs.getInt("cep"));
              listaDenuncia.add(p);
          }
          return listaDenuncia;
        }catch(Exception e){
            return null;
        }
    }
  
}
