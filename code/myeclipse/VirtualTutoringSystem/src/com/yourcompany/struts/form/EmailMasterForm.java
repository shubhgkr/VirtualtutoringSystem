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
 * @struts.form name="emailMasterForm"
 */
public class EmailMasterForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** emailText property */
	private String emailText;

	/** dateAndTime property */
	private String dateAndTime;

	/** emailId property */
	private int emailId;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	private int fromstudentid;
	private int tostudentid;
	public int getFromstudentid() {
		return fromstudentid;
	}

	public void setFromstudentid(int fromstudentid) {
		this.fromstudentid = fromstudentid;
	}

	public int getTostudentid() {
		return tostudentid;
	}

	public void setTostudentid(int tostudentid) {
		this.tostudentid = tostudentid;
	}

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
	 * Returns the emailText.
	 * @return String
	 */
	public String getEmailText() {
		return emailText;
	}

	/** 
	 * Set the emailText.
	 * @param emailText The emailText to set
	 */
	public void setEmailText(String emailText) {
		this.emailText = emailText;
	}

	/** 
	 * Returns the dateAndTime.
	 * @return String
	 */
	public String getDateAndTime() {
		return dateAndTime;
	}

	/** 
	 * Set the dateAndTime.
	 * @param dateAndTime The dateAndTime to set
	 */
	public void setDateAndTime(String dateAndTime) {
		this.dateAndTime = dateAndTime;
	}

	/** 
	 * Returns the emailId.
	 * @return int
	 */
	public int getEmailId() {
		return emailId;
	}

	/** 
	 * Set the emailId.
	 * @param emailId The emailId to set
	 */
	public void setEmailId(int emailId) {
		this.emailId = emailId;
	}
}