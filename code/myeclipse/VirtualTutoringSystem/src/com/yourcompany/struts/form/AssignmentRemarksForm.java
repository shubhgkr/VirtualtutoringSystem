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
 * @struts.form name="assignmentRemarksForm"
 */
public class AssignmentRemarksForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** facultyId property */
	private int facultyId;
private String submissionDate;
private String fname;
	/** remarksToStudent property */
	private String remarksToStudent;

	/** assignmentId property */
	private int assignmentId;

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
	 * Returns the facultyId.
	 * @return int
	 */
	public int getFacultyId() {
		return facultyId;
	}

	/** 
	 * Set the facultyId.
	 * @param facultyId The facultyId to set
	 */
	public void setFacultyId(int facultyId) {
		this.facultyId = facultyId;
	}

	/** 
	 * Returns the remarksToStudent.
	 * @return String
	 */
	public String getRemarksToStudent() {
		return remarksToStudent;
	}

	/** 
	 * Set the remarksToStudent.
	 * @param remarksToStudent The remarksToStudent to set
	 */
	public void setRemarksToStudent(String remarksToStudent) {
		this.remarksToStudent = remarksToStudent;
	}

	/** 
	 * Returns the assignmentId.
	 * @return int
	 */
	public int getAssignmentId() {
		return assignmentId;
	}

	/** 
	 * Set the assignmentId.
	 * @param assignmentId The assignmentId to set
	 */
	public void setAssignmentId(int assignmentId) {
		this.assignmentId = assignmentId;
	}

	public String getSubmissionDate() {
		return submissionDate;
	}

	public void setSubmissionDate(String submissionDate) {
		this.submissionDate = submissionDate;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}
}