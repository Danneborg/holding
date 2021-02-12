package project.root.ldapcheck;

import javax.naming.AuthenticationException;
import javax.naming.AuthenticationNotSupportedException;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;
import java.util.Hashtable;
import java.util.Properties;

public class LdapCheck {

    public boolean checkUser(String name, String password) {
        String proxy = "10.0.16.240";
        String port = "3128";
        System.out.println("KSPD\\ks_dataport");
        Properties systemProperties = System.getProperties();
        systemProperties.setProperty("https.proxyHost", proxy);
        systemProperties.setProperty("https.proxyPort", port);

        Hashtable<String, String> environment = new Hashtable<String, String>();

        environment.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        environment.put(Context.PROVIDER_URL, "ldap://10.42.12.225:8423");
        environment.put(Context.SECURITY_AUTHENTICATION, "simple");
        environment.put(Context.SECURITY_PRINCIPAL, name);
        environment.put(Context.SECURITY_CREDENTIALS, password);
//
        //РАСКОМЕНТИТЬ ДЛЯ РАБОТЫ
//        environment.put(Context.SECURITY_PRINCIPAL, "ДОМЕННАЯ УЧЕТКА");
//        environment.put(Context.SECURITY_CREDENTIALS, "ВАШ ДОМЕННЫЙ ПАРОЛЬ");

        try {
            DirContext context = new InitialDirContext(environment);
            System.out.println("Connected..");
//            System.out.println(context.getEnvironment());
            context.close();
            return true;
        } catch (AuthenticationNotSupportedException exception) {
            System.out.println("The authentication is not supported by the server");
            return false;
        } catch (AuthenticationException exception) {
            System.out.println("Incorrect password or username");
            return false;
        } catch (NamingException exception) {
            System.out.println("Error when trying to create the context");
            exception.printStackTrace();
            return false;
        }
    }
}
