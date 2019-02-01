package records

class Student {

  String name
  Integer roll
  String email
  String address
  Boolean deleted = false
    static constraints = {
//      name nullable : false
      name (blank:false, nullable:false, size:3..30)
      roll nullable : false
//      email nullable: true
      email (email:true)
      address nullable : true




    }


}
