package com.ssm.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private int user_id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String address;
    private String rolename;
    private String img_path;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created_time;
}
