package product.crudapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import product.crudapp.model.Product;
import product.crudapp.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/home")
    public String home(Model model){

        List<Product> products = productService.getAllProducts();
        model.addAttribute("products", products);
        return "home";
    }

    //show form to add product
    @RequestMapping("/add-product")
    public String addProduct(Model model){

        model.addAttribute("title", "Add product");
        return "add-product";
    }

    @RequestMapping(path="/update/{productId}")
    public String updateProduct(@PathVariable("productId") int productId,
                                      Model model){
        System.out.println("Updating product with Id: " + productId);
        Product product = this.productService.getProductById(productId);
        model.addAttribute("product", product);
        return "update-product";
    }


    //using this handle for both add and update product
    //for update sending id from update-product.jsp
    @RequestMapping(path = "/handle-product" , method = RequestMethod.POST)
    //handle add-product form
    public RedirectView handleProduct(@ModelAttribute("product")Product product) {

        System.out.println(product);

        productService.addProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl("home");
        return redirectView;
    }



    @RequestMapping("/delete/{productId}")
    public RedirectView handleDeleteProduct(@PathVariable("productId") int productId,
                                            HttpServletRequest request){

        System.out.println("In delete product handler");
        System.out.println("Deleting product with id: " + productId);
        this.productService.removeProduct(productId);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath() +"/home");
        return redirectView;
    }


}
