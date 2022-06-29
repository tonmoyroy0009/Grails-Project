package demo

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    String email

    boolean enabled = true

    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    Boolean isActive = true

    /* Date dateCreated
     Date lastUpdated*/

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        email(email: true, nullable: false, unique: true, blank: false)
    }

    static mapping = {
	    password column: '`password`'
    }
}
