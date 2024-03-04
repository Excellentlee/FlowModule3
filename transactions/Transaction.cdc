// Import EducationalStruct Contract
import EducationalStruct from 0x01

// Transaction to add a student
transaction(id: UInt64, name: String, grade: UInt64) {
    
    prepare(acct: AuthAccount) {}

    execute {
      EducationalStruct.addStudent(id: id, name: name, grade: grade)
      log("Student Added Successfully")
    }
}
