/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.yourcompany.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 12-11-2008
 * 
 * XDoclet definition:
 * @struts.form name="studentExaminationMasterForm"
 */
public class StudentExaminationMasterForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** studentId property */
	private int studentId;

	/** examAggregade property */
	private float examAggregade;
	private String StudentName;
private String examinatiodate;
	/** examAttendedDateTime property */
	private String examAttendedDateTime;

	/** examResult property */
	private String examResult;

	/** studentExamId property */
	private int studentExamId;

	/** examinationId property */
	private int examinationId;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the studentId.
	 * @return int
	 */
	public int getStudentId() {
		return studentId;
	}

	/** 
	 * Set the studentId.
	 * @param studentId The studentId to set
	 */
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	/** 
	 * Returns the examAggregade.
	 * @return int
	 */
	public float getExamAggregade() {
		return examAggregade;
	}

	/** 
	 * Set the examAggregade.
	 * @param examAggregade The examAggregade to set
	 */
	public void setExamAggregade(float examAggregade) {
		this.examAggregade = examAggregade;
	}

	/** 
	 * Returns the examAttendedDateTime.
	 * @return String
	 */
	public String getExamAttendedDateTime() {
		return examAttendedDateTime;
	}

	/** 
	 * Set the examAttendedDateTime.
	 * @param examAttendedDateTime The examAttendedDateTime to set
	 */
	public void setExamAttendedDateTime(String examAttendedDateTime) {
		this.examAttendedDateTime = examAttendedDateTime;
	}

	/** 
	 * Returns the examResult.
	 * @return String
	 */
	public String getExamResult() {
		return examResult;
	}

	/** 
	 * Set the examResult.
	 * @param examResult The examResult to set
	 */
	public void setExamResult(String examResult) {
		this.examResult = examResult;
	}

	/** 
	 * Returns the studentExamId.
	 * @return int
	 */
	public int getStudentExamId() {
		return studentExamId;
	}

	/** 
	 * Set the studentExamId.
	 * @param studentExamId The studentExamId to set
	 */
	public void setStudentExamId(int studentExamId) {
		this.studentExamId = studentExamId;
	}

	/** 
	 * Returns the examinationId.
	 * @return int
	 */
	public int getExaminationId() {
		return examinationId;
	}

	/** 
	 * Set the examinationId.
	 * @param examinationId The examinationId to set
	 */
	public void setExaminationId(int examinationId) {
		this.examinationId = examinationId;
	}

	public String getExaminatiodate() {
		return examinatiodate;
	}

	public void setExaminatiodate(String examinatiodate) {
		this.examinatiodate = examinatiodate;
	}

	public String getStudentName() {
		return StudentName;
	}

	public void setStudentName(String studentName) {
		StudentName = studentName;
	}
}