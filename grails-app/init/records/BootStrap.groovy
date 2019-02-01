package records

import records.*
class BootStrap {

    def init = { servletContext ->

        // def adminRole= Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        // def userRole = Role.findOrSaveWhere(authority: 'ROLE_USER')
        //
        //
        // def admin = User.findOrSaveWhere(username:'asis',password:'asis',firstname:'aashish', lastname:'manandhar',email:'kirantyefun@gmail.com', accountExpired:false,accountLocked: false,passwordExpired:false)
        // def user = User.findOrSaveWhere(username:'aalu',password:'aalu',firstname:'aalukumari', lastname:'manandhar',email:'aalukumari@gmail.com', accountExpired:false,accountLocked: false,passwordExpired:false)
        //
        // if(!admin.authorities.contains(adminRole)){
        //     UserRole.create(admin,adminRole,true)
        // }
        //
        // if(!user.authorities.contains(adminRole)){
        //     UserRole.create(user, userRole,true)
        // }
        def adminRole = Role.findOrSaveWhere(authority: 'ROLE_ADMIN')
        def userRole = Role.findOrSaveWhere(authority:'ROLE_USER')
        def superAdminRole = Role.findOrSaveWhere(authority: 'ROLE_SUPER_ADMIN')

        def admin = User.findOrSaveWhere(username:"aashish", password:"aashish")
        def user = User.findOrSaveWhere(username:"asis", password:"asis")
        def superAdmin = User.findOrSaveWhere(username:"kirantyefun", password:"kirantyefun")

        if(!admin.authorities.contains(adminRole)){
            UserRole.create(admin,adminRole, true)
        }
        if(!user.authorities.contains(userRole)){
          UserRole.create(user,userRole,true)
        }

        if(!superAdmin.authorities.contains(superAdminRole)){
            UserRole.create(superAdmin,superAdminRole,true)
        }



    }
    def destroy = {
    }
}
