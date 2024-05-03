package com.prj1.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Board {
    private Integer id;
    private String title;
    private String content;

    // 작성자 nickName 용으로 사용됨
    private String writer;
    private LocalDateTime inserted;
    private Integer memberId;
}
