/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

import entity.Gruppyi;
import entity.Plan;
import entity.Studentyi;
import java.util.Date;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author 19613
 */
public class JavaApplication1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        SessionFactory sf = NewHibernateUtil.getSessionFactory();
        Session s = sf.openSession();
        findMax(s);
        createPlan(s);
//        Transaction t1 = s.beginTransaction();
//        List<Studentyi> q = s.createQuery("from Studentyi").list();
//
//        for (Studentyi u : q) {
//            System.out.println(u.getFamiliya());
//            s.saveOrUpdate(u);
//        }
//        s.flush();
//        t1.commit();
//
//        Transaction t2 = s.beginTransaction();
//
//        List<Gruppyi> query1 = s.createQuery("from Gruppyi").list();
//        Gruppyi gruppyi = query1.get(1);
//
//        Studentyi studenty = new Studentyi(gruppyi, "Ku", "Eveli", "Arv", "Vit", "Lud 17", "+375333175285");
//        s.saveOrUpdate(studenty);
//
//        s.flush();
//        t2.commit();
//
//        Transaction t3 = s.beginTransaction();
//
//        List<Studentyi> query = s.createQuery("from Studentyi").list();
//        for (Studentyi u : query) {
//            if ("Kugng".equals(u.getFamiliya())) {
//                s.delete(u);
//            }
//            System.out.println(u.getFamiliya());
//            s.saveOrUpdate(u);
//        }
//        t3.commit();
//        s.flush();
        s.close();
        sf.close();
    }

    public static void findMax(Session s) {
        Transaction t1 = s.beginTransaction();

        List<Studentyi> qs = s.createQuery("from Studentyi e where nomerZachetki =(select min(ee.nomerZachetki) from Studentyi ee)").list();

        System.out.println("Вот " + qs.get(0).getFamiliya());

        s.flush();
        t1.commit();

    }

    public static void createPlan(Session s) {
        Transaction tp = s.beginTransaction();
        Plan plan = new Plan("23h38d8", 123456);
        s.save(plan);

        //s.flush();
        tp.commit();

    }
}
