package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {
    private int book_id;
    private String book_title;
    private String author;
    private String publisher;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String publication_date;
    private String isbn;
    private String book_description;
    private String book_cover;
    private String category_name;
    private int book_quantity;
    private double book_price;

    private Date created_time;
}
