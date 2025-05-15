using skill.management.fair as db from '../db/schema';

//Serves Administrators
service AdminService @(path: '/admin') {

    //CRUD operations for each entity
    entity Employees as projection on db.Employees;
    entity EmployeeSkills as projection on db.EmployeeSkills;
    entity Skills as projection on db.Skills;
    entity Practices as projection on db.Practices;
    entity Offices as projection on db.Offices;
    entity Projects as projection on db.Projects;
    entity ProjectResources as projection on db.ProjectResources;
    entity DevelopmentPlans as projection on db.DevelopmentPlans;
    entity Employments as projection on db.Employments;
    entity Roles as projection on db.Roles;
    entity Seniorities as projection on db.Seniorities;
    entity Levels as projection on db.Levels;
    entity Interests as projection on db.Interests;
    entity Statuses as projection on db.Statuses ;
}

annotate AdminService.Employees with @odata.draft.enabled;
annotate AdminService.Skills with @odata.draft.enabled;
annotate AdminService.Practices with @odata.draft.enabled;
annotate AdminService.Seniorities with @odata.draft.enabled;
annotate AdminService.Offices with @odata.draft.enabled;
annotate AdminService.Projects with @odata.draft.enabled;
annotate AdminService.Employments with @odata.draft.enabled;
annotate AdminService.Roles with @odata.draft.enabled;
annotate AdminService.Levels with @odata.draft.enabled;
annotate AdminService.Interests with @odata.draft.enabled;
annotate AdminService.Statuses with @odata.draft.enabled;


// service ManagerService @(path: '/manager') {

//     //CRUD operations for each entity
//     entity Employees as projection on db.Employees;
//     entity Skills as projection on db.Skills;
//     entity Practices as projection on db.Practices;
//     entity Offices as projection on db.Offices;
//     entity Projects as projection on db.Projects;
//     entity DevelopmentPlans as projection on db.DevelopmentPlans;
// }

// service UserService @(path: '/user') {

//     //CRUD operations for each entity
//     entity Employees as projection on db.Employees;
//     entity Skills as projection on db.Skills;
//     entity Practices as projection on db.Practices;
//     entity Offices as projection on db.Offices;
//     entity Projects as projection on db.Projects;
//     entity DevelopmentPlans as projection on db.DevelopmentPlans;
// }

// Next step is to check how to create annotation so that i can create my new employee on the database 