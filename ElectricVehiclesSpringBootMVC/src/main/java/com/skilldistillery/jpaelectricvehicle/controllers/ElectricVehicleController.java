package com.skilldistillery.jpaelectricvehicle.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
		
		mv.addObject("allEV", dao.selectAllVehicles());
		mv.setViewName("results");
		
		return mv;
	}
	
	@RequestMapping(path="getEVByID.do", method=RequestMethod.GET)
	public ModelAndView getEVByID(int id) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("EVbyID", dao.selectVehicleByID(id));
		mv.setViewName("results");
		
		return mv;
	}
	
	@RequestMapping(path="getEVByMake.do", method=RequestMethod.GET)
	public ModelAndView getEVByMake(String make) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("EVbyMake", dao.selectVehicleByMake(make));
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
	public ModelAndView createVehicle(ElectricVehicle v) {
		ModelAndView mv = new ModelAndView();
		ElectricVehicle results = dao.createVehicle(v);
		if(results != null) {
			mv.addObject("EVbyID", dao.selectVehicleByID(results.getId()));
			mv.addObject("createStatus", true);
			mv.setViewName("results");
		}
		else {
			mv.addObject("createStatus", false);
			mv.setViewName("createVehicle");
		}
		
		return mv;
	}
	
	@RequestMapping(path = "vehicleUpdate.do", params = "id", method = RequestMethod.GET)
	public ModelAndView vehicleUpdate(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("eNew", dao.selectVehicleByID(id));
		mv.setViewName("updateVehicle");
		return mv;
	}
	
	@RequestMapping(path = "vehicleUpdate.do", method = RequestMethod.POST)
	public ModelAndView filmUpdateResult(ElectricVehicle ev) {
		ModelAndView mv = new ModelAndView();
		ElectricVehicle eNew = new ElectricVehicle();
		eNew = dao.updateVehicle(ev);
		if(eNew != null) {
			mv.addObject("eNew", eNew);
			mv.addObject("updateStatus", true);
			mv.setViewName("result");
		}
		else {
			mv.addObject("eNew", ev);
			mv.addObject("updateStatus", false);
			mv.setViewName("updateVehicle");
		}
		
		return mv;
	}
	
	@RequestMapping(path = "vehicleDelete.do")
	public ModelAndView vehicleDelete(int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("ev", dao.selectVehicleByID(id));
		mv.setViewName("deleteVehicle");
		return mv;
	}
	
	@RequestMapping(path="vehicleDelete.do", method=RequestMethod.POST)
	public ModelAndView deleteVehicle(int id) {
		ModelAndView mv = new ModelAndView();
		int results = dao.deleteVehicle(id);
		if(results > 0) {
			mv.addObject("deleteStatus", true);
			mv.setViewName("results");
		}
		else {
			mv.addObject("createStatus", false);
			mv.setViewName("deleteVehicle");
		}
		
		return mv;
	}
	
	
}
