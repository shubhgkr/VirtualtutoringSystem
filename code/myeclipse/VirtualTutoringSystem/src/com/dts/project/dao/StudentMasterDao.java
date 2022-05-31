package com.dts.project.dao;
	import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.*; 

	import com.dts.core.dao.AbstractDataAccessObject;
	import com.dts.core.util.CoreList;
	import com.dts.core.util.DateWrapper;
	import com.dts.core.util.LoggerManager;
import com.yourcompany.struts.form.StudentMasterForm;

	public class StudentMasterDao extends AbstractDataAccessObject 
	{
		public boolean insertStudentMaster(StudentMasterForm smform)
		{
			java.sql.Connection con=null;
			StringBuffer sql1=null;
			PreparedStatement ps1=null;
			boolean flag=false;
			try
			{
			int n=getSequenceID("StudentMaster","StudentId");
			con=getConnection();
			//con.setAutoCommit(false);
			PreparedStatement ps=con.prepareStatement("insert into StudentMaster values(?,?,?,?,?,?,?,?,?,?)");
			ps.setInt(1,n);
			ps.setString(2,smform.getStudentfirstname());
			ps.setString(3,smform.getStudentmiddlename());
			ps.setString(4,smform.getStudentlastname());
			ps.setString(5,DateWrapper.parseDate(smform.getDob()));
			ps.setString(6,DateWrapper.parseDate(smform.getDor()));
			ps.setString(7,smform.getAddress());
			ps.setString(8,smform.getEmail());
			ps.setString(9,smform.getPhone());
			File afile=new File(smform.getImage());
	        FileInputStream fs=new FileInputStream(afile);
	        ps.setBinaryStream(10,fs,(int)afile.length());			
			 
			int i=ps.executeUpdate();
			if(i>0) {
				flag=true;
			}
							 
				
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try{
				con.close();
			}
		catch(Exception e)
		{
			LoggerManager.writeLogInfo(e);
		}
		}
		return flag;
		
		
			}

	public CoreList ViewStudentMaster(String storepath)
	{   CoreList v=new CoreList();
		java.sql.Connection con=null;
		StudentMasterForm smform=null;
		try
		{
			con=getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from StudentMaster");
			 
			while(rs.next())
			{
				smform=new StudentMasterForm();
				int id=rs.getInt(1);
				smform.setStudentid(rs.getInt(1));
				smform.setStudentfirstname(rs.getString(2));
				smform.setStudentmiddlename(rs.getString(3));
				smform.setStudentlastname(rs.getString(4));
				smform.setDob(DateWrapper.parseDate(rs.getDate(5)));
				smform.setDor(DateWrapper.parseDate(rs.getDate(6)));
				smform.setAddress(rs.getString(7));
				smform.setEmail(rs.getString(8));
				smform.setPhone(rs.getString(9));
				Blob b=rs.getBlob(10);
				byte b1[]=b.getBytes(1,(int)b.length()); 
				OutputStream fout=new FileOutputStream(storepath+"/"+id+".gif");
				fout.write(b1);
				smform.setImage(id+".gif");		
				v.add(smform);
			}

			 
		}
			catch(Exception e)
		{
			e.printStackTrace();
		}
			finally
			{
				try{
					con.close();
				}
			catch(Exception e)
			{
				LoggerManager.writeLogInfo(e);
			}
			}
			return v;
			
		
	}
	public StudentMasterForm ViewStudentMasterById(String storepath,int StudentId)
	{   StudentMasterForm smform=new StudentMasterForm();
		java.sql.Connection con=null;
		 
		try
		{
			 
			con=getConnection();
			 
			PreparedStatement ps=con.prepareStatement("select * from StudentMaster where StudentId = ? ");
			ps.setInt(1,StudentId);
			ResultSet rs=ps.executeQuery();
			 
			if(rs.next())
			{
				smform=new StudentMasterForm();
				int id=rs.getInt(1);
				smform.setStudentid(rs.getInt(1));
				smform.setStudentfirstname(rs.getString(2));
				smform.setStudentmiddlename(rs.getString(3));
				smform.setStudentlastname(rs.getString(4));
				smform.setDob(DateWrapper.parseDate(rs.getDate(5)));
				smform.setDor(DateWrapper.parseDate(rs.getDate(6)));
				smform.setAddress(rs.getString(7));
				smform.setEmail(rs.getString(8));
				smform.setPhone(rs.getString(9));
				Blob b=rs.getBlob(10);
				byte b1[]=b.getBytes(1,(int)b.length()); 
				OutputStream fout=new FileOutputStream(storepath+"/"+id+".gif");
				fout.write(b1);
				smform.setImage(id+".gif");
				 
				 
			}

			 
		}
			catch(Exception e)
		{
		e.printStackTrace();	
		}finally
		{
			try{
				con.close();
			}
		catch(Exception e)
		{
			LoggerManager.writeLogInfo(e);
		}
		}
		return smform;
		
		
	}

	public boolean deleteStudentMaster(int StudentId)
		{
			java.sql.Connection con=null;
			boolean flag=false;
			try
			{
				 
				con=getConnection();
				 
				PreparedStatement ps=con.prepareStatement("delete from StudentMaster where StudentId = ? ");
				ps.setInt(1,StudentId);
				int i=ps.executeUpdate();
				if(i>0)
					flag=true;
				
				          
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			finally
			{
				try{
					con.close();
				}
			catch(Exception e)
			{
				LoggerManager.writeLogInfo(e);
			}
			}
			return flag;
			
			}

	public boolean UpdateStudentMaster(StudentMasterForm smform)
	{
		java.sql.Connection con=null;
		boolean flag=false;
		try
		{
		 
		con=getConnection();
		PreparedStatement ps=con.prepareStatement("update StudentMaster set STUDENTFIRSTNAME = ?,STUDENTMIDDLENAME = ?, STUDENTLASTNAME = ?,dob = ?,dor = ?,address = ?,email = ?,phone = ?,image = ? where StudentId = ? ");
		ps.setInt(10,smform.getStudentid());
		ps.setString(1,smform.getStudentfirstname());
		ps.setString(2,smform.getStudentmiddlename());
		ps.setString(3,smform.getStudentlastname());
		ps.setString(4,DateWrapper.parseDate(smform.getDob()));
		ps.setString(5,DateWrapper.parseDate(smform.getDor()));
		ps.setString(6,smform.getAddress());
		ps.setString(7,smform.getEmail());
		ps.setString(8,smform.getPhone());
		File afile=new File(smform.getImage());
        FileInputStream fs=new FileInputStream(afile);
        ps.setBinaryStream(9,fs,(int)afile.length());		
		int i=ps.executeUpdate();
		if(i>0)
			flag=true;
		 
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
	}finally
	{
		try{
			con.close();
		}
	catch(Exception e)
	{
		LoggerManager.writeLogInfo(e);
	}
	}
	return flag;


		}
	}






	 


	 





	 


	  

	

 