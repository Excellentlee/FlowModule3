pub contract EducationalStruct {

    // Define the structure for a Student
    pub struct Student {
        pub let id: UInt64
        pub let name: String
        pub let grade: UInt64

        // Constructor for creating a Student
        init(id: UInt64, name: String, grade: UInt64) {
            self.id = id
            self.name = name
            self.grade = grade
        }
    }

    // Store students using their Id as keys in a dictionary
    pub var students: {UInt64: Student}

    // Initialize the contract with an empty students dictionary
    init() {
        self.students = {}
    }

    // Add a Student to the dictionary using their Id as the key
    pub fun addStudent(id: UInt64, name: String, grade: UInt64) {
        let student = Student(id: id, name: name, grade: grade)
        self.students[id] = student
    }

    // Retrieve a Student by their Id from the dictionary
    pub fun getStudent(id: UInt64): Student? {
        return self.students[id]
    }
}


