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
 * @struts.form name="facultyNoticesMasterForm"
 */
public class FacultyNoticesMasterForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** facultyId property */
	private int facultyId;

	/** noticeId property */
	private int noticeId;
private String fname;
	/** noticeDate property */
	private String noticeDate;

	/** noticeFile property */
	private String noticeFile;

	/** noticeText property */
	private String noticeText;

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
	 * Returns the noticeId.
	 * @return int
	 */
	public int getNoticeId() {
		return noticeId;
	}

	/** 
	 * Set the noticeId.
	 * @param noticeId The noticeId to set
	 */
	public void setNoticeId(int noticeId) {
		this.noticeId = noticeId;
	}

	/** 
	 * Returns the noticeDate.
	 * @return String
	 */
	public String getNoticeDate() {
		return noticeDate;
	}

	/** 
	 * Set the noticeDate.
	 * @param noticeDate The noticeDate to set
	 */
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}

	/** 
	 * Returns the noticeFile.
	 * @return String
	 */
	public String getNoticeFile() {
		return noticeFile;
	}

	/** 
	 * Set the noticeFile.
	 * @param noticeFile The noticeFile to set
	 */
	public void setNoticeFile(String noticeFile) {
		this.noticeFile = noticeFile;
	}

	/** 
	 * Returns the noticeText.
	 * @return String
	 */
	public String getNoticeText() {
		return noticeText;
	}

	/** 
	 * Set the noticeText.
	 * @param noticeText The noticeText to set
	 */
	public void setNoticeText(String noticeText) {
		this.noticeText = noticeText;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}
}