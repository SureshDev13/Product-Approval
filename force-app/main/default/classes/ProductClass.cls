public class ProductClass {
    // Private class-level variables
    private String code;
    private String name;
    private Decimal price;
    private Decimal discountPercentage;
    private Integer stock;

    // Constructor
    public ProductClass(String code, String name, Decimal price, Decimal discountPercentage, Integer stock) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.discountPercentage = discountPercentage;
        this.stock = stock;
    }

    // Billing function - updates stock and displays bill
    public void billProduct(Integer quantity) {
        if (quantity >= stock) {
            System.debug('Insufficient stock.');
            return;
        }
        Decimal total = quantity * price;
        Decimal discount = (total * discountPercentage) / 100;
        Decimal finalAmount = total - discount;
        
        displayProduct(quantity,  total, discount, finalAmount);
            
        stock -= quantity; // Update stock
    }

    // Search by code
    public void searchByCode(String searchCode) {  
        if (this.code == searchCode) {
            System.debug('Product Found: ' + name);
            System.debug('Stock Available: ' + stock);
        } else {
            System.debug('Product not found.');
        }
    }

    // Display reorder products (stock < 20)
    public void checkReorder() {
        if (stock < 20) {
            System.debug('Reorder needed for: ' + name + ' | Current Stock: ' + stock);
        }
        else 
            system.debug('Stock is upto date');
    }
    
        //Display the product
        Public void displayProduct(integer quantity,  Decimal total, Decimal discount, Decimal finalAmount){
        System.debug('----- BILL DETAILS -----');
        System.debug('Product: ' + name);
        System.debug('Quantity: ' + quantity);
        System.debug('Total: ' + total);
        System.debug('Discount: ' + discount);
        System.debug('Final Amount: ' + finalAmount);
        System.debug('Remaining Stock: ' + stock);
    }
}

/**
ProductClass p1 = new ProductClass('P001', 'Mouse', 500, 10, 20);
p1.billProduct(19);
p1.searchByCode('P001');
p1.checkReorder();

ProductClass p2 = new ProductClass('P002', 'Keyboard', 500, 05, 20);
p2.billProduct(15);
p2.searchByCode('P002');
p2.checkReorder();
**/