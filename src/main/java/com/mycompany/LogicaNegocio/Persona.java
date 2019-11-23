/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.LogicaNegocio;

/**
 *
 * @author namuel.solorzano
 */
public class Persona {
    
    private String nombre;
    private String apellidos;
    private String areadelconocimiento;
    private String usuario;
    private String clave;
    private String correo;

    

    
    public Persona(){
        this.apellidos = "";
        this.nombre = "";
         this.areadelconocimiento = "";
        this.usuario = "";
         this.clave = "";
        this.correo = "";
      
        
    }

    public Persona(String nombre, String apellidos, String areadelconocimiento, String usuario, String contraseña, String correo) {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.areadelconocimiento = areadelconocimiento;
        this.usuario = usuario;
        this.clave = contraseña;
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getAreadelconocimiento() {
        return areadelconocimiento;
    }

    public void setAreadelconocimiento(String areadelconocimiento) {
        this.areadelconocimiento = areadelconocimiento;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String contraseña) {
        this.clave = contraseña;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
    
    
}
