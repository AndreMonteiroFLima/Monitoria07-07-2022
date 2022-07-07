package dao;

import model.Produto;

import java.sql.Connection;

public class ProdutoDAO {

    //Recupera conexão

    public void insereProduto(Produto Produto){
        String Query = "INSERT INTO produtos(nome,descricao)VALUE(?,?)";
    }


}
