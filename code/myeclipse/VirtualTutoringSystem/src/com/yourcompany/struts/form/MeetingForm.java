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
 * Creation date: 01-27-2009
 * 
 * XDoclet definition:
 * @struts.form name="meetingForm"
 */
public class MeetingForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** meetingId property */
	private int meetingId;

	/** meetingName property */
	private String meetingName;

	/** meetingVenue property */
	private String meetingVenue;

	/** time property */
	private String time;

	/** meetingDate property */
	private String meetingDate;

	/** conveynorId property */
	private int conveynorId;

	/** duration property */
	private String duration;

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
	 * Returns the meetingId.
	 * @return int
	 */
	public int getMeetingId() {
		return meetingId;
	}

	/** 
	 * Set the meetingId.
	 * @param meetingId The meetingId to set
	 */
	public void setMeetingId(int meetingId) {
		this.meetingId = meetingId;
	}

	/** 
	 * Returns the meetingName.
	 * @return String
	 */
	public String getMeetingName() {
		return meetingName;
	}

	/** 
	 * Set the meetingName.
	 * @param meetingName The meetingName to set
	 */
	public void setMeetingName(String meetingName) {
		this.meetingName = meetingName;
	}

	/** 
	 * Returns the meetingVenue.
	 * @return String
	 */
	public String getMeetingVenue() {
		return meetingVenue;
	}

	/** 
	 * Set the meetingVenue.
	 * @param meetingVenue The meetingVenue to set
	 */
	public void setMeetingVenue(String meetingVenue) {
		this.meetingVenue = meetingVenue;
	}

	/** 
	 * Returns the time.
	 * @return String
	 */
	public String getTime() {
		return time;
	}

	/** 
	 * Set the time.
	 * @param time The time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}

	/** 
	 * Returns the meetingDate.
	 * @return String
	 */
	public String getMeetingDate() {
		return meetingDate;
	}

	/** 
	 * Set the meetingDate.
	 * @param meetingDate The meetingDate to set
	 */
	public void setMeetingDate(String meetingDate) {
		this.meetingDate = meetingDate;
	}

	/** 
	 * Returns the conveynorId.
	 * @return int
	 */
	public int getConveynorId() {
		return conveynorId;
	}

	/** 
	 * Set the conveynorId.
	 * @param conveynorId The conveynorId to set
	 */
	public void setConveynorId(int conveynorId) {
		this.conveynorId = conveynorId;
	}

	/** 
	 * Returns the duration.
	 * @return String
	 */
	public String getDuration() {
		return duration;
	}

	/** 
	 * Set the duration.
	 * @param duration The duration to set
	 */
	public void setDuration(String duration) {
		this.duration = duration;
	}
}