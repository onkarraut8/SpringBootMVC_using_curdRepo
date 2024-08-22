package com.example.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.demo.dao.EmployeeDAO;
import com.example.demo.model.Employee;
@Service
public class EmployeeServiceImplement implements EmployeeService {

	@Autowired
	EmployeeDAO employeeDAO;
	
	@Override
	public Employee saveemployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeDAO.save(employee);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		employeeDAO.deleteById(id);
	}

	@Override
	public int update(Employee employee) {
		// TODO Auto-generated method stub
		employeeDAO.save(employee);
		return 0;
	}

	@Override
	public Employee getEmployee(int id) {
		// TODO Auto-generated method stub
		Optional<Employee> opt=employeeDAO.findById(id);
		return opt.get();
	}

	@Override
	public List<Employee> fetchAll() {
		// TODO Auto-generated method stub
		return (List<Employee>) employeeDAO.findAll();
	}

}
