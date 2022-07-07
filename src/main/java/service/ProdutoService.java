package service;

import dao.ProdutoDAO;
import model.Produto;

public class ProdutoService {

    ProdutoDAO produtoDAO = new ProdutoDAO();

    public void insereProduto(String nome, String descricao){
        System.out.println("JAX-RS"+nome+" "+descricao);
        if(!nome.isEmpty() && !descricao.isEmpty()) {
            Produto produto = new Produto(nome, descricao);
            produtoDAO.insereProduto(produto);
        }else{
            throw new RuntimeException("Os campos estão vazios");
        }
    }

}
