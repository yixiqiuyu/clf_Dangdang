package clf.dangdang.entity;

public class ShoppingAddress {
	private Integer id;
	private String name;
	private String address;
	private String addressCode;
	private String telphone;
	private String phone;
	private String defaultAddress;
	private String addressStatus;
	private User user;

	public ShoppingAddress() {
		super();
	}

	public ShoppingAddress(String name, String address, String addressCode, String telphone, String phone,
			String defaultAddress, String addressStatus) {
		super();
		this.name = name;
		this.address = address;
		this.addressCode = addressCode;
		this.telphone = telphone;
		this.phone = phone;
		this.defaultAddress = defaultAddress;
		this.addressStatus = addressStatus;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressCode() {
		return addressCode;
	}

	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDefaultAddress() {
		return defaultAddress;
	}

	public void setDefaultAddress(String defaultAddress) {
		this.defaultAddress = defaultAddress;
	}

	public String getAddressStatus() {
		return addressStatus;
	}

	public void setAddressStatus(String addressStatus) {
		this.addressStatus = addressStatus;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
