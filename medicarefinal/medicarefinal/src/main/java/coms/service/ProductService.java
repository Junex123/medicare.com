package coms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.model.Product;
import coms.repository.ProductRepo;
import coms.repository.contactrepository;


@Service
public class ProductService {
	
	@Autowired
	private ProductRepo productRepo;
	
	@Autowired
	private contactrepository contactrepo;
	// add product
	public Product addProduct(Product product) {
		return this.productRepo.save(product);
	}
	
	//find product by id
	public Product findProduct(Long pid) {
		return this.productRepo.findById(pid).get();
	}
	
	//find all products
	public List<Product> findAllProducts(){
		return this.productRepo.findAll();
	}
	
	//find product by name or salt
	public List<Product> findByNameOrSalt(String name, String salt){
		List<Product> products = this.productRepo.findByNameContainingIgnoreCaseOrSaltContainingIgnoreCase(name, salt);
		return products;
	}
	
	//find product by category
	public List<Product> findProductByCategory(String category){
		List<Product> products = this.productRepo.findByCategory(category);
		return products;
	}
	
	//delete product by id
	public void deleteProductById(Long pid) {
		this.productRepo.deleteById(pid);
	}
	public void deletecontactusById(int id) {
		this.contactrepo.deleteById(id);
	}
	//find available products
	public List<Product> findTrueProduct(String name){
		List<Product> products = this.productRepo.findByNameAndIsAvailableTrue(name);
		return products;
	}
}
