package com.cyly.xslt.auth.model;

import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
@Builder
public class Oath2TokenDto {

    /**
     * 访问令牌
     */
    private String token;

    /**
     * 刷新令牌
     */
    private String refreshToken;

    /**
     * 访问令牌前缀
     */
    private String tokenHead;

    /**
     * 有效时间（秒）
     */
    private int expiresIn;
}
