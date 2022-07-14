/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Timetable;

/**
 *
 * @author Admin
 */
public class TimetableDBContext extends DBContext<Timetable> {
    
    @Override
    public ArrayList<Timetable> list(){
        ArrayList<Timetable> timetables = new ArrayList<>();
        try {
            String sql = "SELECT [Time]\n" 
                   + "      ,[Course]\n" 
                   + "      ,[Class]\n" 
                   + "      ,[Slot]\n" 
                   +"      ,[Room]\n" 
                   +"  FROM [dbo].[Timetable]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Timetable t = new Timetable();
                t.setTime(rs.getString("Time"));
                t.setCourse(rs.getString("Course"));
                t.setGroup(rs.getString("Class"));
                t.setSlot(rs.getInt("Slot"));
                t.setRoom(rs.getString("Room"));
                timetables.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TimetableDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return timetables;
    }
        @Override
    public Timetable get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Timetable model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Timetable model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Timetable model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
