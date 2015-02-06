package com.project.web.view;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.web.servlet.view.document.AbstractExcelView;

import com.project.web.model.Person;

public class ExcelView extends AbstractExcelView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			HSSFWorkbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HSSFSheet sheet = workbook.createSheet("数据");
		HSSFCellStyle dateStyle = workbook.createCellStyle();
		dateStyle.setDataFormat(HSSFDataFormat
				.getBuiltinFormat("yyyy-MM-dd HH:mm:ss"));
		for (int i = 0; i < model.size(); i++) {
			Object obj = model.get(i + "");
			if (obj instanceof String[]) {
				String[] strs = (String[]) obj;
				for (int j = 0; j < strs.length; j++) {
					HSSFCell cell = getCell(sheet, i, j);
					setText(cell, strs[j]);
				}
			}
			if (obj instanceof Person) {
				Person person = (Person) obj;
				HSSFCell cell = getCell(sheet, i, 0);
				setText(cell, person.getNickname());
				cell = getCell(sheet, i, 1);
				setText(cell, person.getSex());
				cell = getCell(sheet, i, 2);
				setText(cell, person.getCred());
				cell = getCell(sheet, i, 3);
				setText(cell, person.getCredNo());
				cell = getCell(sheet, i, 4);
				setText(cell, person.getBirthday());
				cell = getCell(sheet, i, 5);
				setText(cell, person.getQq());
				cell = getCell(sheet, i, 6);
				setText(cell, person.getWechat());
				cell = getCell(sheet, i, 7);
				setText(cell, person.getMobile());
				cell = getCell(sheet, i, 8);
				setText(cell, person.getFamily());
				cell = getCell(sheet, i, 9);
				setText(cell, person.getEducation());
				cell = getCell(sheet, i, 10);
				setText(cell, person.getHeight());
				cell = getCell(sheet, i, 11);
				setText(cell, person.getBlood());
				cell = getCell(sheet, i, 12);
				setText(cell, person.getCensus());
				cell = getCell(sheet, i, 13);
				setText(cell, person.getAddress());
				cell = getCell(sheet, i, 14);
				setText(cell, person.getUrgent());
				cell = getCell(sheet, i, 15);
				setText(cell, person.getUrgentMobile());
				cell = getCell(sheet, i, 16);
				setText(cell, person.getExp());
				cell = getCell(sheet, i, 17);
				setText(cell, person.getVideo());
				cell = getCell(sheet, i, 18);
				setText(cell, person.getWhy());
				cell = getCell(sheet, i, 19);
				setText(cell, person.getSick());
				cell = getCell(sheet, i, 20);
				setText(cell, person.getPhoto());
				cell = getCell(sheet, i, 21);
				setText(cell, person.getLivePhoto());
				cell = getCell(sheet, i, 22);
				cell.setCellValue(person.getCreateTime());
				cell.setCellStyle(dateStyle);
				cell = getCell(sheet, i, 23);
				if (person.getUpdateTime() != null) {
					cell.setCellValue(person.getUpdateTime());
					cell.setCellStyle(dateStyle);
				}
				cell = getCell(sheet, i, 24);
				setText(cell, person.getStatus());
				cell = getCell(sheet, i, 25);
				setText(cell, person.getStatusMemo());
			}
		}
	}

}