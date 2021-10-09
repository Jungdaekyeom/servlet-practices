package com.douzone.guestbook.vo;

public class GuestBookVo {
	private Long no;
	private String name;
	private String password;
	private String message;
	private String reg_date;

	/**
	 * @return the no
	 */
	public Long getNo() {
		return no;
	}

	/**
	 * @param no the no to set
	 */
	public void setNo(Long no) {
		this.no = no;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the reg_date
	 */
	public String getReg_date() {
		return reg_date;
	}

	/**
	 * @param reg_date the reg_date to set
	 */
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	@Override
	public String toString() {
		return "GuestBookVo [no=" + no + ", name=" + name + ", password=" + password + ", message=" + message
				+ ", reg_date=" + reg_date + "]";
	}

}
