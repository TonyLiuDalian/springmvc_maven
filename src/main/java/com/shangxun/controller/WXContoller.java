package com.shangxun.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * --01、公众账号
 * 用于相应微信公众平台发起的请求
 * https://mp.weixin.qq.com
 * beijing2008lxd@hotmail.com
 * http://beijing2008lxd.ngrok.com/springMybatisMaven/indexWeinxin.do
 * 
 * --02、开启反向代理
 * https://ngrok.com/ 
 * TonyLiu
 * beijing2008lxd@hotmail.com
 * boy.lzj
 * Your auth token:3XnHGGFGz+RyTd59ZZxX
 * --创建映射到本机80端口的，安全通道（cmd）
 * D:\>ngrok>ngrok -authtoken 3XnHGGFGz+RyTd59ZZxX 8088
 * --
 * D:\>ngrok>ngrok -subdomain=beijing2008lxd 8088
 * 
 * http://beijing2008lxd.ngrok.com/springMybatisMaven/
 * ---
 * https://beijing2008lxd.ngrok.com/springMybatisMaven/
 * https://beijing2008lxd.ngrok.com:8088/springMybatisMaven/
 * -----
 * ---03、测试个人微信公众号开发
 * 01、signature：990049cbcbf83344620fbdfd7e3f7b0cd2a40ff0
 * 02、timestamp：1421921625
 * 03、nonce：2051124355
 * 04、token：dalianshiwojiadalian2015
 * 05、和 signature 比较的字符串：990049CBCBF83344620FBDFD7E3F7B0CD2A40FF0
 * 06、EncodingAESKey：aLDIN9cc6Y2kwXDUEmuTPM3ZAlsZrjsBJIjpy3woarb
 * 08、echostr：6012800816923279357
 * 07、数据体：org.apache.catalina.connector.CoyoteReader@1f6e926
 * 
 * */
@Controller
public class WXContoller {

	/**/
	@RequestMapping("indexWeinxin")
	public ModelAndView indexWeinxin(HttpServletRequest request,
			HttpServletResponse response) throws NoSuchAlgorithmException,
			IOException {
		String signature = request.getParameter("signature");
		String timestamp = request.getParameter("timestamp");
		String nonce = request.getParameter("nonce");
		// 第一次
		String echostr = request.getParameter("echostr");
		// 获取微信发回来的消息体
		System.out.println("01、signature：" + signature);
		System.out.println("02、timestamp：" + timestamp);
		System.out.println("03、nonce：" + nonce);
		System.out.println("08、echostr：" + echostr);
		Reader reader = request.getReader();
		String r = reader.toString();
		System.out.println("07、数据体：" + r);

		check_signature(signature, timestamp, nonce);
		// if(check_signature( signature, timestamp, nonce)&&echostr!=null){
		PrintWriter out = response.getWriter();
		// out.print("echostr");
		// out.flush();
		// out.close();
		return null;
		// }else{
		// return null;
		// }
	}

	// 检查是否是微信端发送过来的信息
	public static boolean check_signature(String signature, String timestamp,
			String nonce) throws NoSuchAlgorithmException,
			UnsupportedEncodingException {
		String token = "dalianshiwojiadalian2015";
		System.out.println("04、token：" + token);
		String[] arr = new String[] { timestamp, nonce, token };
		Arrays.sort(arr);
		String s = arr[0] + arr[1] + arr[2];
		MessageDigest md = MessageDigest.getInstance("SHA-1");
		byte[] digest = md.digest(s.getBytes("utf-8"));
		System.out.println("05、和 signature 比较的字符串：" + bytes2HexString(digest));
		System.out.println("06、EncodingAESKey："
				+ "aLDIN9cc6Y2kwXDUEmuTPM3ZAlsZrjsBJIjpy3woarb");
		return signature == bytes2HexString(digest);

	}

	// 把二进制数组转换成String
	public static String bytes2HexString(byte buf[]) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < buf.length; i++) {
			String hex = Integer.toHexString(buf[i] & 0xFF);
			if (hex.length() == 1) {
				hex = '0' + hex;
			}
			sb.append(hex.toUpperCase());
		}
		return sb.toString().toLowerCase();// 转换成小写
	}

}
