package com.keeggo.demo_rest.steps;

import org.springframework.beans.factory.annotation.Autowired;

import com.keeggo.demo_rest.controllers.AccountServiceController;
import com.keeggo.demo_rest.model.CustomerCarrinho;
import com.keeggo.demo_rest.model.CustomerShoppingLogin;
import com.keeggo.rest_assured_connector.driver.RequestHTTPManager;

import cucumber.api.java.pt.E;

public class CarrinhoStepDefinition {
	
	private AccountServiceController accountServiceController;

	@Autowired
	public CarrinhoStepDefinition(RequestHTTPManager httpManager) {
		this.accountServiceController = new AccountServiceController(httpManager);
	}
	
	@E("adicionar um produto ao carrinho {string} {string} {string} {string} {string} {string} {string}")
	public void adicionarUmProdutoAoCarrinho(String string, String string2, String string3, String color, String productId, String quantidade, String UserId) throws Throwable {
		accountServiceController.adicionarProdutoNoCarrinho(new CustomerShoppingLogin(string, string2, string3), new CustomerCarrinho(color, productId, quantidade, UserId));
		
	}
	
	@E("excluir produto do carrinho {string} {string} {string} {string}")
	public void excluirProdutoDoCarrinho(String email, String password, String loginName, String UserId) throws Throwable {
		accountServiceController.exclirProdutoNoCarrinho(new CustomerShoppingLogin(email, password, loginName), UserId);
		
	}
	
	@E("excluir um produto do carrinho {string} {string} {string} {string} {string} {string}")
	public void excluirumProdutoDoCarrinho(String email, String password, String loginName, String color, String productId, String UserId) throws Throwable {
		accountServiceController.exclirUmProdutoNoCarrinho(new CustomerShoppingLogin(email, password, loginName),color, productId, UserId);
		
	}

}
