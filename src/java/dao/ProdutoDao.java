package dao;

import java.util.ArrayList;
import model.Produto;

public interface ProdutoDao {
    
    public void create(Produto produto);
    public void update (Produto produto);
    public void delete(int valor);
    public ArrayList <Produto> listarTodos();
    public ArrayList<Produto> listarTodosDescricao(String valor);   
}