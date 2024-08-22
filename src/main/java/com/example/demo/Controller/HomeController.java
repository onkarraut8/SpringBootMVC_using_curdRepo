package com.example.demo.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Employee;
import com.example.demo.service.EmployeeService;

@Controller
public class HomeController {
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/home")
	public String gethome()
	{
		return "home";
	}

	@RequestMapping("/form")
	public ModelAndView getform()
	{
		return new ModelAndView("stuform","command",new Employee());
	}
	
	@RequestMapping(value= "/processform" , method=RequestMethod.POST)
	public String getregister(@ModelAttribute Employee employee)
	{
		employeeService.saveemployee(employee);
		return "home";
	}
	
	@RequestMapping("/list")
	public ModelAndView getlist()
	{
		List<Employee> list=employeeService.fetchAll();
		return new ModelAndView("studetails", "stulist",list);
	}
	
	@RequestMapping("/deleteuser/{id}")
	public String deletestudent(@PathVariable("id") int id)
	{
		employeeService.delete(id);
		return "redirect:/list";
	}
	
	@RequestMapping("/searchuser/{id}")
	public ModelAndView editstudent(@PathVariable("id") int id)
	{
		Employee employee=employeeService.getEmployee(id);
		return new ModelAndView("update", "command",employee);
	}
	
	 @RequestMapping(value="/updateemployee", method=RequestMethod.POST)
	 public String update(@ModelAttribute Employee employee)
	 {
		 
		 employeeService.update(employee);
		 return "redirect:/list";
	 }
}
