/*
 * Created by IntelliJ IDEA.
 * User: 思凡
 * Date: 2022/5/31
 * Time: 11:52
 * Describe:
 */

package com.shentu.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {

    private int bookID;
    private String bookName;
    private int bookCounts;
    private String detail;

}