package egovframework.travel.schedule.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
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

	@RequestMapping(value = "schedule/scheduleList.do")
	public String selectSampleList(ModelMap model) throws Exception {

		return "schedule/scheduleList";
	}

}
