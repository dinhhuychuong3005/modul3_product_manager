package service;

import model.Product;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone12 pro max", 30000000, "cellphone", "Apple", "../image/imageIphone.jpg"));
        products.put(2, new Product(2, "Oppo reno5", 7000000, "cellphone", "Oppo", "../image/imageOppo.jpg"));
        products.put(3, new Product(3, "S20", 12000000, "cellphone", "Sam Sung", "../image/imageSamsung.jpg"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        Set<Integer> keySet = products.keySet();
        for (Integer key : keySet) {
            if (products.get(key).getName().toLowerCase().contains(name.toLowerCase())) {
                productList.add(products.get(key));
            }
        }
        return productList;
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void delete(int id) {
        products.remove(id);
    }
}
