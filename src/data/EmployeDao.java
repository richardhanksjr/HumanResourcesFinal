package data;

import java.util.ArrayList;

public interface EmployeDao {
	public ArrayList<Employee> getEmpById(int id);
	public ArrayList<Employee> getEmpByLastName(String lastName);
	public void addEmployee(Employee employee);
	public void deleteEmployee(int id);
	public ArrayList<Integer> getIds();
	public void updateEmployee(int id, String firstName);
	public Employee getEmployee();
	//public Employee getEmpByID(int id);
}
