sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"university/school/studentmanagement/test/integration/pages/StudentList",
	"university/school/studentmanagement/test/integration/pages/StudentObjectPage",
	"university/school/studentmanagement/test/integration/pages/SchoolObjectPage"
], function (JourneyRunner, StudentList, StudentObjectPage, SchoolObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('university/school/studentmanagement') + '/test/flp.html#app-preview',
        pages: {
			onTheStudentList: StudentList,
			onTheStudentObjectPage: StudentObjectPage,
			onTheSchoolObjectPage: SchoolObjectPage
        },
        async: true
    });

    return runner;
});

