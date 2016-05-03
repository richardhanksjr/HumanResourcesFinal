package data;

import javax.validation.constraints.NotNull;

public class Employee {
	private int id;
	public int getId() {
		return id;
	}
	@NotNull(message = "First Name must not be blank")
	private String firstName;
	@NotNull(message = "Last Name must not be blank")
	private String lastName;
	private String middleName;
	private char gender = 'M';
	//Date currentDate = GregorianCalendar.getInstance().getTime();
	@NotNull(message="Not a valid date")
	private String hireDate = "2016-01-01";
	private String email;
	@NotNull
	private int salary;
	@NotNull
	private int department_id;
	@NotNull
	private int job_id;
	private String city;
	private String address;
	private String state;
	private String zip;
	
	

	public void setId(int id) {
		this.id = id;
	}
	public String getHireDate() {
		return hireDate;
	}
	public void setHireDate(String hireDate) {
		System.out.println(hireDate);
		this.hireDate = hireDate;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	private String location_id;
	private String commission_pct;
	public String getCommission_pct() {
		return commission_pct;
	}
	public void setCommission_pct(String commission_pct) {
		this.commission_pct = commission_pct;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
//	public String getHireDate() {
//		return hireDate;
//	}
//	public void setHireDate(String hireDate) {
//		this.hireDate = hireDate;
//	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public String getLocation_id() {
		return location_id;
	}
	public void setLocation_id(String location_id) {
		this.location_id = location_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Employee [firstName=" + firstName + ", lastName=" + lastName + "]";
	}
	public Employee(){
		
	}
	public Employee(String firstName, String lastName) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
}
