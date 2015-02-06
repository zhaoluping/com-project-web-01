package com.project.web.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.web.model.Person;
import com.project.web.service.PersonService;
import com.project.web.view.ExcelView;

@Controller
@RequestMapping("/manage/ext")
public class ManageExtController {

	@Autowired
	private PersonService personService = null;

	@ResponseBody
	@RequestMapping("/excel")
	public ExcelView excel(HttpServletRequest request,
			HttpServletResponse response) {
		ExcelView excelView = new ExcelView();
		Map<String, Object> dataMap = new HashMap<String, Object>();
		String[] titleArray = { "昵称", "性别", "证件", "证件号", "生日", "QQ", "微信",
				"手机", "民族", "教育", "身高", "血型", "户籍", "地址", "紧急联系人", "紧急联系人电话",
				"经历", "视频", "原因", "重大疾病", "近期照片", "生活照", "创建时间", "更新时间", "状态",
				"状态说明" };
		dataMap.put("0", titleArray);
		List<Person> list = personService.listPerson();
		for (int i = 0; i < list.size(); i++) {
			int index = i + 1;
			dataMap.put(index + "", list.get(i));
		}
		try {
			excelView.render(dataMap, request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return excelView;
	}
}