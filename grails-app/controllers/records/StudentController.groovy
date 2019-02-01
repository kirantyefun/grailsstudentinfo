package records

import java.util.List
import grails.plugin.springsecurity.annotation.Secured


//by default '/' required authentication
@Secured('permitAll')
class StudentController {

  def StudentService


  def index () {



    //logic inside services
    def mylist = StudentService.index()
    [mylist:mylist]
  }


  def saveme = {
    StudentService.saveme(params)
    // def student = new Student(params)
    // student.save flush: true, failOnError: true
    redirect action: "index"
  }

  def show={
    def student = Student.get(params.id)
    [student:student]

  }


  @Secured('ROLE_ADMIN')
  def edit(){
    def student= Student.get(params.id)
    [student:student]
  }

  def update = {
    // def student = Student.get(params.id)
    // student.properties=params
    // student.save flush: true, failOnError:true
    // redirect action:"index"

    // try {
    //         StudentService.update(params.id, params)
    //     }
    //     catch (ValidationException e) {
    //         def student = Student.read(params.id)
    //         student.errors = e.errors
    //         render view: "edit", model: [student:student]
    //
    //     }
    //     redirect action:"index"
    StudentService.update(params)
    redirect action:"index"

  }

  @Secured('ROLE_ADMIN')
  def delete () {
    def student = Student.get(params.id)
    // student.delete flush:true, failOnError:true
    // def bindingmap=[name:student.name, roll:student.roll, email:student.email, address:student.address, deleted:"true"]
    // student.properties=bindingmap
    student.deleted = true
    student.save flush:true, failOnError:true
    redirect action:"index"
  }

  def list = {
    def students = Student.list()
    [students:students]
  }


  @Secured('ROLE_ADMIN')
  def deletedstudents () {
    List<Student>std_list = Student.list()
    def deletedlist = []
    for (Student student: std_list){
      if(student.deleted){
        deletedlist.add(student)
      }
    }
    [deletedlist:deletedlist]
  }



  def undodelete = {
    def student = Student.get(params.id)
    // def bindingmap=[name:student.name, roll:student.roll, email:student.email, address:student.address, deleted:"false"]
    // student.properties=bindingmap
    student.deleted = false
    student.save flush:true, failOnError:true
    redirect action:"deletedstudents"
  }
  def check={
    def student = Student.get(params.id)
    student.deleted = true
    student.save flush:true, failOnError:true
    render student.deleted

  }
  def listJson = {
    respond Student.list() //preferred way to return JSON data
  }

}
