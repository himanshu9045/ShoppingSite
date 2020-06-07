/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

/**
 *
 * @author Arpit
 */
import java.io.File;
import java.sql.*;
import org.apache.commons.io.FileUtils;
public class Save {
    String brand,model,ram,processer,display,camera,battery,warranty,memory,sim,pic, error;
    int price,id;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getProcesser() {
        return processer;
    }

    public void setProcesser(String processer) {
        this.processer = processer;
    }

    public String getDisplay() {
        return display;
    }

    public void setDisplay(String display) {
        this.display = display;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getBattery() {
        return battery;
    }

    public void setBattery(String battery) {
        this.battery = battery;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }

    public String getMemory() {
        return memory;
    }

    public void setMemory(String memory) {
        this.memory = memory;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    

   

    public boolean createTable()
    {
        try
        {
            File a = new File("F:/pic/"+pic);
            File b = new File("C:\\Users\\ARPIT SHARMA\\Documents\\NetBeansProjects\\shoping site\\web\\pic");
            FileUtils.copyFileToDirectory(a, b);
            Connection con = mypack.Mycon.getCon();
            PreparedStatement st = con.prepareStatement("insert into product(brand,model,ram,processer,display,camera,memory,sim,battery,warranty,price,pic) values(?,?,?,?,?,?,?,?,?,?,?,?)");
            st.setString(1,brand);
            st.setString(2,model);
            st.setString(3, ram);
            st.setString(4,processer);
            st.setString(5, display);
            st.setString(6, camera);
            st.setString(7, memory);
            st.setString(8,sim);
            st.setString(9,battery);
            st.setString(10,warranty);
            st.setInt(11,price);
            st.setString(12,pic);
          
            st.executeUpdate();
            return true;
        }
        catch(Exception ex)
        {
            error = ex.toString();
            return false;
        }
    }
    public boolean delete()
    {
        try
        {
            Connection con = mypack.Mycon.getCon();
            PreparedStatement st = con.prepareStatement("delete from product where id=?");
            st.setInt(1, id);
            st.executeUpdate();
            return true;
        }
        catch(Exception ex)
        {
            error = ex.toString();
            return false;
        }
    }
    public boolean dataUpdate()
    {
        try
        {
            Connection con = mypack.Mycon.getCon();
            PreparedStatement st = con.prepareStatement("update product set brand=?,model=?,ram=?,processer=?,display=?,battery=?,camera=?,sim=?,memory=?,price=?,warrenty=? where id=?");
           st.setString(1,brand);
            st.setString(2,model);
            st.setString(3, ram);
            st.setString(4,processer);
            st.setString(5, display);
            st.setString(6, camera);
            st.setString(7, memory);
            st.setString(8,sim);
            st.setString(9,battery);
            st.setString(10,warranty);
            st.setInt(11,price);
           
            st.setInt(12, id);
            st.executeUpdate();
            return true;
        }
        catch(Exception ex)
        {
            error = ex.toString();
            return false;
        }
    }
    public boolean  picUpdate()
    {
        try
        {
             File a = new File("F:/pic/"+pic);
            File b = new File("C:\\Users\\ARPIT SHARMA\\Documents\\NetBeansProjects\\shoping site\\web\\pic");
            FileUtils.copyFileToDirectory(a, b);
            Connection con = mypack.Mycon.getCon();
            PreparedStatement st = con.prepareStatement("update product set pic=? where id=?");
            st.setString(1, pic);
            st.setInt(2, id);
            st.executeUpdate();
            return true;
        }
        catch(Exception ex)
        {
            error = ex.toString();
            return false;
        }
    }
}
