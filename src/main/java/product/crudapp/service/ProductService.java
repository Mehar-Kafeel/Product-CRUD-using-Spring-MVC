package product.crudapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import product.crudapp.dao.ProductDao;
import product.crudapp.model.Product;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public void addProduct(Product product) {
        this.productDao.insertProduct(product);
    }

    public List<Product> getAllProducts() {
        return this.productDao.loadAllProducts();
    }

    public Product getProductById(int id) {
        return this.productDao.getProductById(id);
    }

    public void updateProduct(Product product) {
         this.productDao.insertProduct(product);
    }

    public void removeProduct(int id) {
        this.productDao.deleteProductById(id);
    }
}
