/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.Persistencia;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import com.mycompany.LogicaNegocio.Persona;

/**
 *
 * @author namuel.solorzano
 */
public class Conexion {
    private Connection con;
    private Statement stm;
    
    public Conexion(){
        try{
            
            //Class.forName("com.mysql.jdbc.Driver").newInstance();
            //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/personas", "root","");
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            con = DriverManager.getConnection("jdbc:derby://localhost:1527/bdPersona", "root","root");
            stm = con.createStatement();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public boolean ingresoDatos(Persona persona){
        boolean registrado = false;
        try{
            System.out.println(persona.getNombre());
            int i = stm.executeUpdate("INSERT INTO ROOT.DOCENTE (NOMBRE, APELLIDO, AREACONOCIMIENTO, USUARIO,clave, CORREO) VALUES ('"+persona.getNombre()+"', '"+persona.getApellidos()+"', '"+persona.getAreadelconocimiento()+"', '"+persona.getUsuario()+"', '"+persona.getClave()+"', '"+persona.getCorreo()+"')");
            if(i > 0){
                registrado = true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return registrado;
    }
    
    public boolean eliminarRegistro(String usuario){
        boolean eliminado = false;
        try{
            
            int i = stm.executeUpdate("DELETE FROM docente WHERE usuario = '" + usuario+"'");
            if(i > 0){
                eliminado = true;
            }
        }
        catch(Exception e){
            
        }
        return eliminado;
    }
    
     public boolean actualizarRegistro(Persona persona){
        boolean actualizado = false;
        try{
           
            int i = stm.executeUpdate("UPDATE docente SET nombre = '"+ persona.getNombre()+ "', apellido = '"+persona.getApellidos()+"', AREACONOCIMIENTO = '"+persona.getAreadelconocimiento()+"' WHERE USUARIO = '"+ persona.getUsuario()+"'");
            if(i > 0){
                actualizado = true;
            }
        }
        catch(Exception e){
            
        }
        return actualizado;
    }
     
         
     public Persona buscar(String usuario) {
             Persona persona = new Persona();
             ResultSet rs = null;
            
             try{ 
                    
                    rs = stm.executeQuery("SELECT * FROM docente WHERE usuario='"+usuario+"'");
                    rs.next();
                   
                    persona.setNombre(rs.getString("nombre"));
                    persona.setApellidos(rs.getString("apellido"));
                    persona.setAreadelconocimiento(rs.getString("areaconocimiento"));
                    persona.setUsuario(rs.getString("usuario")); 
                    persona.setClave(rs.getString("clave")); 
                    persona.setCorreo(rs.getString("correo")); 
                    
                    
             }
             catch(Exception e){
                 e.printStackTrace();
             }
             return persona;
     }
     
     public ArrayList<Persona> listar() {
            ArrayList <Persona> personas = new ArrayList();
            try{ 
                    
                    ResultSet rs = stm.executeQuery("SELECT * FROM docente");
                    while(rs.next()){
                        Persona persona = new Persona();
                    persona.setNombre(rs.getString("nombre"));
                    persona.setApellidos(rs.getString("apellido"));
                    persona.setAreadelconocimiento(rs.getString("areaconocimiento"));
                    persona.setUsuario(rs.getString("usuario")); 
                    persona.setClave(rs.getString("clave")); 
                    persona.setCorreo(rs.getString("correo"));   
                        personas.add(persona);
                    }
             }
             catch(Exception e){
                 e.printStackTrace();
             }
        
          return personas;
     }
    
    
}
