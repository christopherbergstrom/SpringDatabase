package controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SpringDataBaseController
{
	@Autowired 
	SpringDataBaseDAO SpringDataBaseDAO;

	@RequestMapping(path = "query.do", params = "select")
	public ModelAndView sqlQuery(@RequestParam("select") String select) throws ClassNotFoundException, SQLException
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("result", SpringDataBaseDAO.getQuery(select));
		return mv;
	}
	@RequestMapping(path = "update.do", params = "select")
	public ModelAndView sqlUpdate(@RequestParam("select") String select) throws ClassNotFoundException, SQLException
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("result", SpringDataBaseDAO.getUpdate(select));
		return mv;
	}
	@RequestMapping(path = "select.do", params = "select")
	public ModelAndView sqlSelect(@RequestParam("select") String select) throws ClassNotFoundException, SQLException
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result.jsp");
		mv.addObject("result", SpringDataBaseDAO.getQuery(select));
		return mv;
	}
}