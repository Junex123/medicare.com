package coms.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import coms.model.wishlist;
import coms.repository.wishlistrepository;

@RestController
@CrossOrigin(origins = "*")
public class wishlistcontroller {
	@Autowired
	private wishlistrepository cartRepository;
	
	
	@PostMapping("/wishlist")
	public wishlist addTowishlist(@RequestBody wishlist wishlist) {
		List<wishlist> Wishlist = cartRepository.findAll();
		
	
		return cartRepository.save(wishlist);
	}

	@GetMapping("/wishlist")
	public List<wishlist> getWishlistItems() {
		return cartRepository.findAll();
	}
	

	
	@DeleteMapping("/wishlist/{id}")
	public ResponseEntity<?> deletewishlist(@PathVariable("id") int id)
	{
		cartRepository.deleteById(id); 
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
}
