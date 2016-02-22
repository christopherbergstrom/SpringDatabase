package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SpringDataBaseDAO
{
	private static String url = "jdbc:mysql://localhost:3306/companydb";
	private static String username = "student";
	private static String password = "student";
	private static Connection conn;

	public List<String> getQuery(String select) throws ClassNotFoundException, SQLException
	{
		List<String> table = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);
		Statement stmt = conn.createStatement();
		ResultSet rs;
		try 
		{
			if (select != "")
			{				
				String[] words = select.split(" ");
				int i = words.length;
				String word = words[i-1];
				i = word.length();
				String wor = word.substring(0, i-1);
				String wo = wor.toUpperCase();
				table.add("<div>"+ wo + "</div>");
			}
			String sqlText = select;
			rs = stmt.executeQuery(sqlText);
			ResultSetMetaData rsmd = rs.getMetaData();
			int colCount = rsmd.getColumnCount();
			table.add("<table><tr>");
			for (int c  = 1; c <= colCount; c++)
			{
				String colName = rsmd.getColumnName(c);
				table.add("<th>"+ colName + "</th>");
			}
			table.add("</tr>");
			while (rs.next())
			{
				table.add("<tr>");
				for (int c  = 1; c <= colCount; c++)
				{
					table.add("<td>"+rs.getString(c) + "</td>");
				}
				table.add("</tr>");
			}
			table.add("</table>");
			rs.close();
		}
		catch (SQLException e)
		{
			table.clear();
			table.add("<div>Error</div>");
			return table;
		}
		finally
		{			
			stmt.close();
			conn.close();
		}
		return table;
	}
	public List<String> getUpdate(String select) throws SQLException, ClassNotFoundException
	{
		List<String> table = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, username, password);
		Statement stmt = conn.createStatement();
		try
		{			
			String sqlText = select;
			stmt.executeUpdate(sqlText);
			table.clear();
			table.add("<div>Update Complete</div>");
		}
		catch (SQLException e)
		{
			table.add("<div>Error</div>");
			return table;
		}
		finally
		{			
			stmt.close();
			conn.close();
		}
		return table;
	}
}