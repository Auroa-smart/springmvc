package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Orders {
    private int order_id;
    private String customer_name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created_time;
    private double order_total;
    private String order_address;
    private String  order_status;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date delivery_time;
    private String book_title;
    private double book_price;
    private int order_quantity;
}
