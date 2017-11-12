package egovframework.travel.schedule.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.rte.fdl.property.EgovPropertyService;
import egovframework.travel.schedule.service.ScheduleService;


@Controller
public class ScheduleController {

	/** EgovSampleService */
	@Resource(name = "scheduleService")
	private ScheduleService scheduleService;

	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService propertiesService;

	/** Validator */
	@Resource(name = "beanValidator")
	protected DefaultBeanValidator beanValidator;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "schedule/scheduleList.do")
	public ModelAndView selectSampleList(ModelMap model) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<Map<String, Object>> schList = scheduleService.getScheduleList();
		model.addAttribute("resultList", schList);
		mv.setViewName("schedule/scheduleList");
		return mv;
	}

}
