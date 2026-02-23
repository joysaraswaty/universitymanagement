namespace universitymanagement;
using { cuid, managed } from '@sap/cds/common';
using { universitymanagement.common } from './common';

entity CourseType : common.CourseType {
  key code : String(20);
}



@assert.unique: { studentid: [studentid] }
entity Student : cuid, managed {
  studentid: Integer @mandatory;
  firstName: String(50);
  lastName: String(50);
  dateOfBirth: Date;
  dateOfJoining: Date;
  CourseType: Association to CourseType;
  email: String(100);
  phoneNumber: String(15);
  // school: Association to School;
  schools: Composition of many School on schools.student = $self
}

@assert.unique: { schoolid: [schoolid] }
entity School : cuid, managed {
  schoolid: Integer @mandatory;
  SchoolName: String(100);
  Principal: String(100);
  SchoolStrength: Integer;
  Curriculum: String(100);
  rating: String(1);
  // students: Composition of many Student on students.school = $self;
  student: Association to Student;
}
