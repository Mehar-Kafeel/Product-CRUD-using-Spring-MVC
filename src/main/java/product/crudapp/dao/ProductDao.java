package product.crudapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import product.crudapp.model.Product;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

//    create product
    @Transactional
    public void insertProduct(Product product) {
         this.hibernateTemplate.saveOrUpdate(product);
    }

    @Transactional
    public void deleteProductById(int id) {
        Product product = this.getProductById(id);
        this.hibernateTemplate.delete(product);
    }

    //get all products
    public List<Product> loadAllProducts(){
        return this.hibernateTemplate.loadAll(Product.class);
    }

    //delete a product using id
    public Product getProductById(int id) {
        //can use get method also
        return this.hibernateTemplate.get(Product.class, id);
    }
}
