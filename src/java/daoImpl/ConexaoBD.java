package daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ConexaoBD {
    
    protected static final String DRIVER = "com.mysql.jdbc.Driver";
    protected static final String URL = "jdbc:mysql://localhost:3306/mercado";
    protected static final String usuario = "root";
    protected static final String senha = "123456789";
    
    protected static Connection conn;
    
    //metodo para conectar com o banco
    public Connection conectandoBanco(){
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL,usuario,senha);
            
        } catch ( ClassNotFoundException | SQLException ex) {
            throw new RuntimeException("Erro na conexao:", ex);
        } 
        return conn;
    }
    
    //metodo para fechar as propriedades do banco
    protected void fechaBanco(Connection con, PreparedStatement pst, ResultSet rs){
        
        try{
            if(con != null){
                con.close();
            }
            
            if(pst != null){
                pst.close();
            }
            
            if(rs != null){
                rs.close();
            }
                
            } catch (SQLException ex) {
                throw new RuntimeException("Erro ao fechar conexao banco: ", ex);
        }
    }
}