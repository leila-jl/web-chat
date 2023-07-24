package com.cyly.xslt.auth.controller;

import com.cyly.xslt.auth.model.Oath2TokenDto;
import com.cyly.xslt.common.api.CommonResult;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.endpoint.TokenEndpoint;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/oauth")
public class AuthController {

    @Autowired
    private TokenEndpoint tokenEndpoint;

    @ApiOperation("Oauth2获取token")
    @RequestMapping(value = "/token", method = RequestMethod.POST)
    public CommonResult<Oath2TokenDto> postAccessToken(HttpServletRequest request,
                                                       @ApiParam("授权模式") @RequestParam String grant_type,
                                                       @ApiParam("Oauth2客户端ID") @RequestParam String client_id,
                                                       @ApiParam("Oauth2客户端秘钥") @RequestParam String client_secret,
                                                       @ApiParam("刷新token") @RequestParam(required = false) String refresh_token,
                                                       @ApiParam("登录用户名") @RequestParam(required = false) String username,
                                                       @ApiParam("登录密码") @RequestParam(required = false) String password) throws HttpRequestMethodNotSupportedException {
        Map<String, String> parameters = new HashMap<>();
        parameters.put("grant_type",grant_type);
        parameters.put("client_id",client_id);
        parameters.put("client_secret",client_secret);
        parameters.putIfAbsent("refresh_token",refresh_token);
        parameters.putIfAbsent("username",username);
        parameters.putIfAbsent("password",password);
        OAuth2AccessToken oAuth2AccessToken = tokenEndpoint.postAccessToken(request.getUserPrincipal(), parameters).getBody();
        Oath2TokenDto oauth2TokenDto = Oath2TokenDto.builder()
                .token(oAuth2AccessToken.getValue())
                .refreshToken(oAuth2AccessToken.getRefreshToken().getValue())
                .expiresIn(oAuth2AccessToken.getExpiresIn())
                .tokenHead("Bearer").build();

        return CommonResult.success(oauth2TokenDto);
    }
}
