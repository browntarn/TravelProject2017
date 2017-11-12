package egovframework.travel.schedule.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("scheduleService")
public class ScheduleServiceImpl extends EgovAbstractServiceImpl implements ScheduleService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ScheduleServiceImpl.class);

	/** SampleDAO */
	// TODO ibatis 사용
	/*
	@Resource(name = "sampleDAO")
	private SampleDAO sampleDAO;
	*/
	// TODO mybatis 사용
	//  @Resource(name="sampleMapper")
	//	private SampleMapper sampleDAO;
	/** ID Generation */
	/*
	@Resource(name = "egovIdGnrService")
	private EgovIdGnrService egovIdGnrService;
	 */

}
