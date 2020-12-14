package entity;

public class Users {
    
	private int id;
	private String first_name;
	private String last_name;
	private String email;
	private String gender;
	private String dob;
	private String username;
	private String password1;
	private String password2;
	private String dateOfJoin;
	private String country;
	private String state;
	
	////// Rest of ask update table after login
//	UG
//	private String ug;
//	 private String ugYearOfPassing;
//	 private String ugMarks;
////	 PG
//    private String pg;
//    private String pgYearOfPassing;
//    private String pgMarks;
    
    
    /////// Deafult constructor
    public Users() {
    	
    }

	public Users(Integer id, String first_name, String last_name, String email, String gender, String dob,
			String username, String password1, String password2, String dateOfJoin, String country, String state) {
		super();
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email = email;
		this.gender = gender;
		this.dob = dob;
		this.username = username;
		this.password1 = password1;
		this.password2 = password2;
		this.dateOfJoin = dateOfJoin;
		this.country = country;
		this.state = state;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getDateOfJoin() {
		return dateOfJoin;
	}

	public void setDateOfJoin(String dateOfJoin) {
		this.dateOfJoin = dateOfJoin;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
    
}