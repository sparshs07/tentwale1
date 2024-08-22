package models;

import java.sql.*;

public class InvoiceItem {
    private Integer invoiceItemId;
    private Invoice invoice;
    private TentwalaItem tentwalaItem;
    

    private Integer bookedQuantity;

     //Constructors
    public InvoiceItem(){

    }

    //Other Methods

    //Getter/Setter
    

    public Integer getInvoiceItemId() {
        return invoiceItemId;
    }

    public void setInvoiceItemId(Integer invoiceItemId) {
        this.invoiceItemId = invoiceItemId;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public TentwalaItem getTentwalaItem() {
        return tentwalaItem;
    }

    public void setTentwalaItem(TentwalaItem tentwalaItem) {
        this.tentwalaItem = tentwalaItem;
    }
    

    public Integer getBookedQuantity() {
        return bookedQuantity;
    }

    public void setBookedQuantity(Integer bookedQuantity) {
        this.bookedQuantity = bookedQuantity;
    }

   
}
 