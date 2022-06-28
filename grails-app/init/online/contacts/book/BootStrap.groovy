package online.contacts.book

import com.bitmascot.ocb.UserService
import demo.Role
import demo.User

/*import com.bitmascot.security.Role
import com.bitmascot.security.User*/

class BootStrap {

    /*def init = { servletContext ->
    }
    def destroy = {
    }*/
    //UserService userService
    def init = { servletContext ->
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def user = User.findOrSaveWhere(username: 'tonmoy@gmail.com', password: '123')
        userService.createUserRole(user, adminRole)
    }
    def destroy = {
    }
}
