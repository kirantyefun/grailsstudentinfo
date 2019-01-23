package records

class Student {

  String name
  Integer roll
  String email
  String address
  Boolean deleted = false
    static constraints = {
      name nullable : false
      roll nullable : false
      email nullable: true
      address nullable : true


    }


}
