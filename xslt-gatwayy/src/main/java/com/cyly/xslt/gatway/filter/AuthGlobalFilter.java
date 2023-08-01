package com.cyly.xslt.gatway.filter;

import com.alibaba.nacos.common.utils.StringUtils;
import com.cyly.xslt.common.constant.AuthConstant;
import com.nimbusds.jose.JWSObject;
import org.springframework.cloud.gateway.filter.GatewayFilterChain;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.core.Ordered;
import org.springframework.http.server.reactive.ServerHttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

/**
 * 全局过滤器（处理所有路由）
 */
@Component
public class AuthGlobalFilter implements GlobalFilter, Ordered {
    @Override
    public Mono<Void> filter(ServerWebExchange exchange, GatewayFilterChain chain) {
        String token = exchange.getRequest().getHeaders().getFirst(AuthConstant.AUTHORITY_CLAIM_NAME);
        if (StringUtils.isEmpty(token)) {
            chain.filter(exchange);
        }
        try {
            // 将token戒心信息添加到请求头中
            String realToken = token.replace(AuthConstant.JWT_TOKEN_PREFIX, "");
            JWSObject jwsObject = JWSObject.parse(realToken);
            String userStr = jwsObject.getPayload().toString();
            ServerHttpRequest request = exchange.getRequest().mutate().header(AuthConstant.AUTHORITY_CLAIM_NAME, userStr).build();
            // 替换掉request
            exchange = exchange.mutate().request(request).build();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return chain.filter(exchange);
    }

    @Override
    public int getOrder() {
        return 0;
    }
}
