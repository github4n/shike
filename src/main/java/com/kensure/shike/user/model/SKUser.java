/*
 * 文件名称: SKUser.java
 * 版权信息: Copyright 2001-2017 hangzhou jingshu technology Co., LTD. All right reserved.
 * ----------------------------------------------------------------------------------------------
 * 修改历史:
 * ----------------------------------------------------------------------------------------------
 * 修改原因: 新增
 * 修改人员: fankd
 * 修改日期: 2018-9-2
 * 修改内容: 
 */
package com.kensure.shike.user.model;

import co.kensure.frame.BaseInfo;;

/**
 * 用户表对象类
 * @author fankd created on 2018-9-2
 * @since
 */
public class SKUser extends BaseInfo{

	private static final long serialVersionUID = 3545276994084105527L;
	
	/***/		
	private Long id;

	/**手机号*/		
	private String phone; 

	/**密码*/		
	private String password; 

	/**推荐人ID*/		
	private Long refereeId; 

	/**等级*/		
	private Integer level; 

	/**等级编码*/		
	private String levelCode; 

	/**状态,0正常，-1停用*/		
	private Integer status; 

	/**用户姓名*/		
	private String name; 

	/**支付宝账号*/		
	private String noAlipay; 

	/**taobao账号*/		
	private String noTaobao; 

	/**qq账号*/		
	private String noQq; 

	/**微信账号*/		
	private String noWeixin; 

	/**淘趣分*/		
	private Long noTaoqufen; 

	/**类型，1是试客，2是商家，3是管理员*/		
	private Integer type; 
	
	/**余额*/		
	private Double yue; 

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public Long getRefereeId() {
		return refereeId;
	}

	public void setRefereeId(Long refereeId) {
		this.refereeId = refereeId;
	}
	public Integer getLevel() {
		return level;
	}

	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getLevelCode() {
		return levelCode;
	}

	public void setLevelCode(String levelCode) {
		this.levelCode = levelCode;
	}
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getNoAlipay() {
		return noAlipay;
	}

	public void setNoAlipay(String noAlipay) {
		this.noAlipay = noAlipay;
	}
	public String getNoTaobao() {
		return noTaobao;
	}

	public void setNoTaobao(String noTaobao) {
		this.noTaobao = noTaobao;
	}
	public String getNoQq() {
		return noQq;
	}

	public void setNoQq(String noQq) {
		this.noQq = noQq;
	}
	public String getNoWeixin() {
		return noWeixin;
	}

	public void setNoWeixin(String noWeixin) {
		this.noWeixin = noWeixin;
	}
	public Long getNoTaoqufen() {
		return noTaoqufen;
	}

	public void setNoTaoqufen(Long noTaoqufen) {
		this.noTaoqufen = noTaoqufen;
	}
	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Double getYue() {
		return yue;
	}

	public void setYue(Double yue) {
		this.yue = yue;
	}

}
