package records

import records.*
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_SUPER_ADMIN')
class SecurityController {

    def index() {

     }

     def save(){
       def newAdmin = new User(params)
       def role_admin = Role.findByAuthority('ROLE_ADMIN')
              // UserRole.create(newAdmin,adminRole, true)
       def u_role = new UserRole(user:newAdmin, role:role_admin)
       newAdmin.save flush:true, failOnError:true

       u_role.save flush:true,failOnError:true

       redirect action: 'show', id:newAdmin.id
     }

     def show(){
       def newAdmin = User.get(params.id)
       [newAdmin:newAdmin]
     }

     def listAllAdmins(){
       def role_admin= Role.findByAuthority('ROLE_ADMIN')
       def userroles = UserRole.findAllByRole(role_admin)
       [userroles:userroles]
     }
}
