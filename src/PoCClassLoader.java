import java.nio.ByteBuffer;
import java.security.AllPermission;
import java.security.Permissions;
import java.security.ProtectionDomain;

/**
 *
 * @author Ieu Eauvidoum
 * @author disk noise
 *
 */
public class PoCClassLoader extends ClassLoader {

  // This method will be changed 
  // in the bytecode representation of 
  // the class by ClassModifierBypassSuper
  public PoCClassLoader() {
    throw new RuntimeException();
  }
  
}
