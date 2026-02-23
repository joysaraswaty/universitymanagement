namespace universitymanagement.common;

using { sap.common.CodeList } from '@sap/cds/common';

entity CourseType : CodeList {
  key code : String(20);
}
