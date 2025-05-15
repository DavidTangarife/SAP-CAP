namespace skill.management.fair;

using {
    cuid,
    managed,
} from '@sap/cds/common';

entity Employees : cuid, managed {
    firstName: String(16);
    lastName: String(16);
    fullname: String = firstName || ' ' || lastName;
    practice: Association to Practices;
    office: Association to Offices;
    seniority: Association to Seniorities;
    employment: Association to Employments;
    role: Association to Roles;
    email: String(64);
    salary: Decimal;
    employeeSkills: Composition of many EmployeeSkills on employeeSkills.employee = $self;
    employeeDevPlan: Composition of many DevelopmentPlans on employeeDevPlan.employee = $self;
}


entity EmployeeSkills : cuid {
    employee: Association to Employees;
    skill: Association to Skills;
    levelCode: Association to Levels;
    interestCode: Association to Interests;
  
}
entity Skills : cuid {
    skillCode: String(32);
    skill: String(128);
    parentSkill: Association to Skills;
}
entity Practices : cuid {
    practiceCode: String(3);
    practice: String(32);
}
entity Offices : cuid {
    officeCode: String(8);
    office: String(32);
}
entity Projects : cuid {
    name: String(64);
    customer: String(16);
    startDate: Date;
    endDate: Date;
    budget: Decimal;
}
entity ProjectResources : cuid {
    employee: Association to Employees;
    project: Association to Projects;
    status: Association to Statuses;
}
entity DevelopmentPlans : cuid {
    employee: Association to Employees;
    skill: Association to Skills;
    status: Association to Statuses;
}

entity Employments : cuid {
    employmentCode: String(8);
    employment: String(32);
}
entity Roles : cuid {
    roleCode: String(8);
    role: String(32) ;
}
entity Seniorities : cuid {
    seniorityCode: String(8);
    seniority: String(32) ;
}

entity Levels : cuid {
    levelCode : Integer;
    level: String(16);
}
entity Interests : cuid {
    interestCode: Integer;
    interest: String(16);
}

entity Statuses : cuid {
    statusCode: String(8);
    status: String(32);
}


// ENUMERATIONS TYPES

// type Employment : String enum {
//     FT = 'Full Time';
//     PT = 'Part Time';
//     CAS = 'Casual';
//     CTR = 'Contractor';
//     INT = 'Intern';
//     INA = 'Inactive';
// }

// type Role : Integer enum {
//     admin = 1;
//     manager = 2;
//     user = 3;
// }

// type LevelCode : Integer enum {
//     NONE = 1;
//     BASIC = 2;
//     INTERMEDIATE = 3;
//     ADVANCED = 4;
//     EXPERT = 5;
// }

// type InterestCode : Integer enum {
//     none = 1;
//     low = 2;
//     neutral = 3;
//     engaged = 4;
//     high = 5;
// }

// type Seniority : String enum {
//     INT = 'Intern';
//     JUN = 'Junior';
//     MID = 'Mid-level';
//     SEN = 'Senior';
//     ASC = 'Associate';
//     CON = 'Consultant';
//     DIR = 'Director';
//     MAN = 'Manager';
//     PRN = 'Principal';
//     SENC = 'Senior Consultant';
// }

// type Office : String enum {
//     ADE = 'Adelaide';
//     BRI = 'Brisbane';
//     MEL = 'Melbourne';
//     PK = 'Pakistan';
//     SYD = 'Sydney';
// }

// type Status : String enum {
//     PEN = 'Pending';
//     APP = 'Approved';
//     CAN = 'Cancelled';
//     HLD = 'On Hold';
//     IPR = 'In Progress';
//     COM = 'Completed';
//     REJ = 'Rejected';
// }
