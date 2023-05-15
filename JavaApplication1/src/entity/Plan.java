
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 *
 * @author 20092
 */
@Entity
@Table(name="plan"
    ,catalog="gr"
      
)
public class Plan implements java.io.Serializable{
     
   
     private int KodPlana;
     private String kod;
     private Date date;
     private String speciality;
     private List<Gruppyi> gruppyi;

   
     public Plan() {
    }
     
    public Plan(String kod, int KodPlana, Date date, String speciality) {
        this.kod = kod;
        this.KodPlana = KodPlana;
        this.date = date;
        this.speciality = speciality;
    }

     public Plan(String kod, int KodPlana) {
         this.date = new Date();
        this.kod = kod;
        this.KodPlana = KodPlana;
    }

         @Column(name="Kod", nullable=false, length=50)
    public String getKod() {
        return kod;
    }

    public void setKod(String kod) {
        this.kod = kod;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="KodPlana")
    public int getKodPlana() {
        return KodPlana;
    }

    public void setKodPlana(int KodPlana) {
        this.KodPlana = KodPlana;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="Data")
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Column(name="Speciality", length=50)
    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }
    
    @OneToMany(fetch=FetchType.LAZY, mappedBy="kodPlana")
     public List<Gruppyi> getGruppyi() {
        return gruppyi;
    }

    public void setGruppyi(List<Gruppyi> gruppyi) {
        this.gruppyi = gruppyi;
    }
     
    
        @Override
    public String toString() {
        return "Plan{" + "kod=" + kod + ", KodPlana=" + KodPlana + ", date=" + date + ", speciality=" + speciality + '}';
    }
}
