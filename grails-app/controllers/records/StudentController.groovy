package records

import java.util.List

class StudentController {

  //static defaultAction = "index"

  def index = {
    //adding and listing students in index.gsp
    //def students = Student.list()
    //List<Student> list = new List<Student>()

    List<Student>std_list = Student.list()
    def mylist = []
    for (Student student: std_list){
      if(!student.deleted){
        mylist.add(student)
      }
    }
    //[students:students]
  
    [mylist:mylist]



  }


  def save = {
    def student = new Student(params)
    student.save flush: true, failOnError: true
    redirect action: "index"
  }

  def show={
    def student = Student.get(params.id)
    [student:student]

  }

  def edit ={
    def student= Student.get(params.id)
    [student:student]
  }

  def update = {
    def student = Student.get(params.id)
    student.properties=params
    student.save flush: true, failOnError:true
    redirect action:"index"
  }

  def delete = {
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

  def undodelete = {
    def student = Student.get(params.id)
    // def bindingmap=[name:student.name, roll:student.roll, email:student.email, address:student.address, deleted:"false"]
    // student.properties=bindingmap
    student.deleted = false
    student.save flush:true, failOnError:true
    redirect action:"index"
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
