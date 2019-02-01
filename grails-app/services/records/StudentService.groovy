package records

import grails.gorm.transactions.Transactional

@Transactional
class StudentService {

    def serviceMethod() {

    }

    def index(){

        def criteria = Student.createCriteria()

        List<Student>std_list = Student.list()
        def mylist = []

        mylist = criteria.list{
            eq('deleted', false)
        }

//        for (Student student: std_list){
//          if(!student.deleted){
//            mylist.add(student)
//          }
//        }
        return mylist
    }

    def saveme(params){
        def student = new Student(params)
        student.save flush:true, failOnError:true
    }

    def update (params) {
      def student = Student.get(params.id)
      student.properties=params
      student.save flush: true, failOnError:true
    }
}
