package com.prj1.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Member {
    private int id;
    private String email;
    private String password;
    private String nickName;
    private LocalDateTime inserted;
}
