package controllers;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.EmployeDao;
import data.Employee;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeDao employeeDao;
	
	@RequestMapping("GetEmployeeById.do")
	public ModelAndView getEmployeeById(int id){
		ArrayList<Employee> emp = employeeDao.getEmpById(id);
		ModelAndView mv = new ModelAndView();
		String firstNameHeader = "First Name";
		String lastNameHeader = "Last Name";
		String _id = "ID";
		String depart_ID = "Department ID";
		String job_ID = "Job ID";
		mv.setViewName("index.jsp");
		mv.addObject("employeeList", emp);
		mv.addObject("firstNameHeader", firstNameHeader);
		mv.addObject("lastNameHeader", lastNameHeader);
		mv.addObject("id", _id);
		mv.addObject("depart_ID", depart_ID);
		mv.addObject("job_ID", job_ID);
		
		
		mv.addObject("employeeList", emp);
		
		return mv;
	}
	
	@RequestMapping("loadDeletePage.do")
	public ModelAndView loadDeletePage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deleteEmployee.jsp");
		ArrayList<Integer> ids = employeeDao.getIds();
		System.out.println(ids);
		mv.addObject("ids", ids);
		return mv;
	}
	
	@RequestMapping("UpdateEmployee.do")
	public String updateEmployee(@RequestParam("id") int id,
								@RequestParam("FirstName") String firstName){
		employeeDao.updateEmployee(id, firstName);
		return ("index.jsp");
	}
	@RequestMapping("DeleteEmployee.do")
	public String deleteEmployee(int id){
		System.out.println("inside delete employee");
		employeeDao.deleteEmployee(id);
		return "index.jsp";
	}
	@RequestMapping("GetEmployeeByLastName.do")
	public ModelAndView getEmployeeByLastName(String id){
		ArrayList<Employee> emp = employeeDao.getEmpByLastName(id);
		ModelAndView mv = new ModelAndView();
		String firstNameHeader = "First Name";
		String lastNameHeader = "Last Name";
		String _id = "ID";
		String depart_ID = "Department ID";
		String job_ID = "Job ID";
		mv.setViewName("index.jsp");
		mv.addObject("employeeList", emp);
		mv.addObject("firstNameHeader", firstNameHeader);
		mv.addObject("lastNameHeader", lastNameHeader);
		mv.addObject("ID", _id);
		mv.addObject("depart_ID", depart_ID);
		mv.addObject("job_ID", job_ID);
		return mv;
	}
	
	@RequestMapping("loadUpdatePage.do")
	public ModelAndView loadUpdatePage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updateEmployee.jsp");
		ArrayList<Integer> ids = employeeDao.getIds();
		mv.addObject("ids", ids);
		return mv;
	}
	@RequestMapping(path = "AddEmployee.do", method= RequestMethod.GET)
	public ModelAndView addEmployee(){
		System.out.println("here");
		Employee e = employeeDao.getEmployee();
		return new ModelAndView("addEmployee.jsp", "employee", e);
	}
	@RequestMapping(path = "AddEmployee.do", method = RequestMethod.POST)
	public String addEmployee(@Valid Employee employee, Errors errors){
		
		ModelAndView mv = new ModelAndView();
		//System.out.println(employee.getHireDate());
		if (errors.getErrorCount() != 0){
			return "addEmployee.jsp";
		}
		employeeDao.addEmployee(employee);
		return "index.jsp";
	}
}
