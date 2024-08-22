package com.example.demo.service;

	import java.util.List;
	import com.example.demo.model.Employee;

	public interface EmployeeService {
		public Employee saveemployee(Employee employee);
		public void delete(int id);
		public int update(Employee employee);
		public Employee getEmployee(int id);
		public List<Employee> fetchAll();
	}


