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

import com.skilldistillery.jpaelectricvehicle.data.ChargingStationDAO;
import com.skilldistillery.jpaelectricvehicle.entities.ChargingStation;
import com.skilldistillery.jpaelectricvehicle.entities.ElectricVehicle;

@Controller
public class ChargingStationController {
	@Autowired
	private ChargingStationDAO dao;
	
	@RequestMapping(path= {"CSindex.do"})
	public ModelAndView index(ModelAndView mv) {
		mv = new ModelAndView();
		mv.setViewName("CSindex");
		return mv; 
	}
	
	@RequestMapping(path = "createStation.do")
	public ModelAndView stationCreate() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("createStation");
		mv.addObject("createStatus", false);
		return mv;
	}
	
	@RequestMapping(path="createStation.do", method=RequestMethod.POST)
	public ModelAndView stationCreate (@Valid ChargingStation cs, Errors errors) {
		ModelAndView mv = new ModelAndView();
		//look for errors
		if(errors.hasErrors()) {
			mv.addObject("CS");
			mv.setViewName("createStation");
		}
		else {
			ChargingStation results = dao.createStation(cs);
			if(results != null) {
				List<ChargingStation> created = new ArrayList<>();
				created.add(results);
				mv.addObject("CS", created);
				mv.addObject("createStatus", true);
				mv.addObject("deleteStatus", false);
				mv.addObject("updateStatus", false);
				mv.setViewName("CSresults");
			}
			else {
				mv.addObject("CS", cs);
				mv.addObject("createStatus", true);
				mv.setViewName("createVehicle");
			}
		}
		
		return mv;
	}
	
	@RequestMapping(path="getStationByState.do", method=RequestMethod.GET)
	public ModelAndView getCSByState(@RequestParam("state")String state) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("CS", dao.selectStationByState(state));
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("CSresults");
		
		return mv;
	}
	
	@RequestMapping(path="getStationByCity.do", method=RequestMethod.GET)
	public ModelAndView getCSByCity(@RequestParam("city")String city) {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("CS", dao.selectStationByCity(city));
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		mv.setViewName("CSresults");
		
		return mv;
	}
	
	@RequestMapping(path = "stationUpdate.do", method = RequestMethod.GET)
	public ModelAndView stationUpdate(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		ChargingStation results = dao.selectStationByID(id);
		mv.addObject("CS", dao.selectStationByID(results.getId()));
		mv.setViewName("updateStation");
		mv.addObject("createStatus", false);
		mv.addObject("deleteStatus", false);
		mv.addObject("updateStatus", false);
		return mv;
	}
	
	@RequestMapping(path = "stationUpdate.do", method = RequestMethod.POST)
	public ModelAndView filmUpdateResult( ChargingStation c) {
		ModelAndView mv = new ModelAndView();
		ChargingStation results = dao.updateStation(c);
		if(results != null) {
			List<ChargingStation> updated = new ArrayList<>();
			updated.add(dao.selectStationByID(c.getId()));
			mv.addObject("CS", updated);
			mv.addObject("updateStatus", true);
			mv.addObject("createStatus", false);
			mv.addObject("deleteStatus", false);
			mv.setViewName("CSresults");
		}
		else {
			mv.addObject("CS", c);
			mv.addObject("updateStatus", false);
			mv.setViewName("updateStation");
		}
		
		return mv;
	}
	
	@RequestMapping(path = "stationDelete.do", method = RequestMethod.GET)
	public ModelAndView stationDelete(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("CS", dao.selectStationByID(id));
		mv.setViewName("deleteStation");
		return mv;
	}
	
	@RequestMapping(path="stationDelete.do", method=RequestMethod.POST)
	public ModelAndView deleteVehicle(ChargingStation c) {
		ModelAndView mv = new ModelAndView();
		if(dao.deleteStation(c)) {
			mv.addObject("deleteStatus", true);
			mv.addObject("updateStatus", false);
			mv.addObject("createStatus", false);
			mv.setViewName("CSresults");
		}
		else {
			mv.addObject("CS", c);
			mv.addObject("deleteStatus", true);
			mv.setViewName("deleteStation");
		}
		
		return mv;
	}

}
