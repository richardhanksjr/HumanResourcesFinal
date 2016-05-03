package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class EmployeeDBDao implements EmployeDao{
	private static final String DRIVER_CLASS_NAME = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/companydb";
    
    public Employee getEmployee(){
    	return new Employee();
    }
   
    public ArrayList<Integer> getIds(){
    	ArrayList<Integer> ids = new ArrayList<>();
    	String sql = "select id from employees group by id";
		try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
				while(rs.next()){
					Integer intHolder = Integer.parseInt(rs.getString(1));
					ids.add(intHolder);
				}
			rs.close();
			statement.close();
			conn.close();	
		} catch (Exception e) {
			System.err.println(e);
		}
    	return ids;
    }
    
    public void updateEmployee(int id, String firstName){
     	PreparedStatement pst;
		try {
		Class.forName(DRIVER_CLASS_NAME);
		Connection conn = DriverManager.getConnection(URL, "student", "student");
		pst = conn.prepareStatement("update employees set firstname = ? where id = ?");
		pst.setString(1,  firstName);
		pst.setInt(2, id);	
		int uc = pst.executeUpdate();
		System.out.println(uc);			
		pst.close();
		conn.close();
		
		
		} catch (Exception e) {
		System.err.println(e);
}
    }
    public void deleteEmployee(int id){
    	String sql = "delete from employees where id = " + id;
    	try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			int rs = statement.executeUpdate(sql);
			System.out.println(rs);			
			statement.close();
			conn.close();
			
			
		} catch (Exception e) {
			System.err.println(e);
		}
    }
    public void addEmployee(Employee employee){
    	

    	
		
    	String sql = "insert into employees(firstname, lastname, state, department_id, job_id, middlename, gender, email, salary, city, address, zipcode, hiredate) values ('" + employee.getFirstName() + "', '" + employee.getLastName() + "','" + employee.getState() + "', "+
    										"' " + employee.getDepartment_id() + "', '" + employee.getJob_id() + "', '" + employee.getMiddleName() + "' , '" + employee.getGender() +
    										"', '" + employee.getEmail() +"', '" + employee.getSalary() + "', '" + employee.getCity() + "', '" + employee.getAddress() + "', '" + employee.getZip() + "', '" + employee.getHireDate() + "')";

		try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			
			Statement statement = conn.createStatement();
			int rs = statement.executeUpdate(sql);
			System.out.println(rs);			
			statement.close();
			conn.close();
			
			
		} catch (Exception e) {
			System.err.println(e);
		}
    }
	
	@Override
	public ArrayList<Employee> getEmpById(int id) {
		String sql = "select firstname, lastname, id, department_id, job_id from employees where id = " + id;
		ArrayList<Employee> emp = new ArrayList<>();
		try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if(rs.next()){
				Employee employee = new Employee();
				employee.setFirstName(rs.getString(1));
				employee.setLastName(rs.getString(2));
				employee.setId(rs.getInt(3));
				employee.setDepartment_id(rs.getInt(4));
				employee.setJob_id(rs.getInt(5));
				emp.add(employee);
			}
			rs.close();
			statement.close();
			conn.close();
			
			
		} catch (Exception e) {
			System.err.println(e);
		}
		return emp;	
		
	}

	@Override
	public ArrayList<Employee> getEmpByLastName(String lastname) {
		String sql = "select firstname, lastname, id, department_id, job_id from employees where lastname = '" + lastname+"'";
		Employee emp = null;
		ArrayList<Employee>  employeeList = new ArrayList<>();
		try {
			Class.forName(DRIVER_CLASS_NAME);
			Connection conn = DriverManager.getConnection(URL, "student", "student");
			Statement statement = conn.createStatement();
			ResultSet rs = statement.executeQuery(sql);
				while(rs.next()){
					
					emp = new Employee();
					emp.setFirstName(rs.getString(1));
					emp.setLastName(rs.getString(2));
					emp.setId(rs.getInt(3));
					emp.setDepartment_id(rs.getInt(4));
					emp.setJob_id(rs.getInt(5));
					employeeList.add(emp);
				}
			rs.close();
			statement.close();
			conn.close();	
		} catch (Exception e) {
			System.err.println(e);
		}
		return employeeList;	
	}
	

}

