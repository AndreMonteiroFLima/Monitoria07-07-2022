package resources;


import dao.ProdutoDAO;
import model.Produto;
import service.ProdutoService;

import javax.ws.rs.*;

@Path("/produtoTeste")
public class ProdutoResource {

    ProdutoService produtoService = new ProdutoService();

    @Path("/")
    @POST
    public void colocaIdProduto(@FormParam("nome") String nome, @FormParam("descricao") String descricao){
        produtoService.insereProduto(nome,descricao);
        //ExceptionMappers

        //System.out.println("JAX-RS"+id);
    }

    @Path("/{id}")
    @GET
    public void pegaProdutoId(@PathParam("id") String id){
        produtoService.pegaProduto();
        return produto;
    }



}
