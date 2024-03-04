// Import EducationalStruct Contract
import EducationalStruct from 0x01

pub fun main(id: UInt64): EducationalStruct.Student? {
  return EducationalStruct.getStudent(id: id)!
}
