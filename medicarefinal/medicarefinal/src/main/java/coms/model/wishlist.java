package coms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class wishlist {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
	@OneToOne
	private Product product;


public wishlist(int id, Product product) {
		super();
		this.id = id;
		this.product = product;
	}

public wishlist() {
	super();
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}

}
