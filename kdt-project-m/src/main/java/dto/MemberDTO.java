package dto;

import org.springframework.stereotype.Component;

@Component
public class MemberDTO {
	int seq;
	String memberid, membername;
	String memberpw;
	String phone, email, regtime;

	MemberDTO(String memberid, String memberpw) {
		this.memberid = memberid;
		this.memberpw = memberpw;
	}

	public MemberDTO() {
	}

	public MemberDTO(int seq, String memberid, String membername, String memberpw, String phone, String email, String regtime) {
		super();
		this.seq = seq;
		this.memberid = memberid;
		this.membername = membername;
		this.memberpw = memberpw;
		this.phone = phone;
		this.email = email;
		this.regtime = regtime;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMemberpw() {
		return memberpw;
	}

	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegtime() {
		return regtime;
	}

	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}

	public String toString() {
		return seq + ":" + memberid + ":" + memberpw + ":" + membername + ":" + phone + ":" + email + ":" + regtime;
	}


}
