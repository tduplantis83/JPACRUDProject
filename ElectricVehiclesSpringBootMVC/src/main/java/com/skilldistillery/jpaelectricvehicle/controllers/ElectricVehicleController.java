package com.skilldistillery.jpaelectricvehicle.controllers;

import java.util.*;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpaelectricvehicle.data.ElectricVehicleDAO;
import com.skilldistillery.jpaelectricvehicle.entities.ElectricVehicle;

@Controller
public class ElectricVehicleController {
	@Autowired
	private ElectricVehicleDAO dao;
	
	@RequestMapping(path= {"/", "index.do"})
	public ModelAndView index(ModelAndView mv) {
		mv = new ModelAndView();
		mv.setViewName("index");
		return mv; 
	}
	
	@RequestMapping(path="getAllEV.do", method=RequestMethod.GET)
	public ModelAndView getAllEV() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("updateStatus", false);
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("EV", dao.selectAllVehicles());
		mv.setViewName("results");
		
		return mv;
	}
	
	@RequestMapping(path="getEVByID.do", method=RequestMethod.GET)
	public ModelAndView getEVByID(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		List<ElectricVehicle> results = new ArrayList<>();
		ElectricVehicle returned = dao.selectVehicleByID(id);
		if(returned != null) {
			results.add(dao.selectVehicleByID(id));
		}
		mv.addObject("EV", results);
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("results");
		
		return mv;
	}
	
	@RequestMapping(path="getEVByMake.do", method=RequestMethod.GET)
	public ModelAndView getEVByMake(@RequestParam("make")String make) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("EV", dao.selectVehicleByMake(make));
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("results");
		
		return mv;
	}
	
	@RequestMapping(path = "vehicleCreate.do")
	public ModelAndView vehicleCreate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createVehicle");
		mv.addObject("createStatus", false);
		return mv;
	}
	
	@RequestMapping(path="vehicleCreate.do", method=RequestMethod.POST)
	public ModelAndView createVehicle (ElectricVehicle ev) {
		ModelAndView mv = new ModelAndView();
		ElectricVehicle results = dao.createVehicle(ev);
		if(results != null) {
			List<ElectricVehicle> created = new ArrayList<>();
			created.add(results);
			mv.addObject("EV", created);
			mv.addObject("createStatus", true);
			mv.addObject("deleteStatus", false);
			mv.addObject("updateStatus", false);
			mv.setViewName("results");
		}
		else {
			mv.addObject("EV", ev);
			mv.addObject("createStatus", true);
			mv.setViewName("createVehicle");
		}
		
		return mv;
	}
	
	@RequestMapping(path = "vehicleUpdate.do", method = RequestMethod.GET)
	public ModelAndView vehicleUpdate(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		ElectricVehicle results = dao.selectVehicleByID(id);
		mv.addObject("EV", dao.selectVehicleByID(results.getId()));
		mv.setViewName("updateVehicle");
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		return mv;
	}
	
	@RequestMapping(path = "vehicleUpdate.do", method = RequestMethod.POST)
	public ModelAndView filmUpdateResult( ElectricVehicle ev) {
		ModelAndView mv = new ModelAndView();
		ElectricVehicle results = dao.updateVehicle(ev);
		if(results != null) {
			List<ElectricVehicle> updated = new ArrayList<>();
			updated.add(dao.selectVehicleByID(ev.getId()));
			mv.addObject("EV", updated);
			mv.addObject("updateStatus", true);
			mv.addObject("createStatus", false);
			mv.addObject("deleteStatus", false);
			mv.setViewName("results");
		}
		else {
			mv.addObject("EV", ev);
			mv.addObject("updateStatus", false);
			mv.setViewName("updateVehicle");
		}
		
		return mv;
	}
	
	@RequestMapping(path = "vehicleDelete.do", method = RequestMethod.GET)
	public ModelAndView vehicleDelete(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("EV", dao.selectVehicleByID(id));
		mv.setViewName("deleteVehicle");
		return mv;
	}
	
	@RequestMapping(path="vehicleDelete.do", method=RequestMethod.POST)
	public ModelAndView deleteVehicle(ElectricVehicle ev) {
		ModelAndView mv = new ModelAndView();
		if(dao.deleteVehicle(ev)) {
			mv.addObject("deleteStatus", true);
			mv.addObject("updateStatus", false);
			mv.addObject("createStatus", false);
			mv.setViewName("results");
		}
		else {
			mv.addObject("EV", ev);
			mv.addObject("deleteStatus", true);
			mv.setViewName("deleteVehicle");
		}
		
		return mv;
	}
	
	
}
