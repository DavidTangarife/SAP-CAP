sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'dstv/skillmanagementapp/test/integration/FirstJourney',
		'dstv/skillmanagementapp/test/integration/pages/EmployeesList',
		'dstv/skillmanagementapp/test/integration/pages/EmployeesObjectPage'
    ],
    function(JourneyRunner, opaJourney, EmployeesList, EmployeesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('dstv/skillmanagementapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEmployeesList: EmployeesList,
					onTheEmployeesObjectPage: EmployeesObjectPage
                }
            },
            opaJourney.run
        );
    }
);