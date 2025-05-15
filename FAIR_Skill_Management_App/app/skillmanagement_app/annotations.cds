using AdminService as service from '../../srv/services';

annotate service.Employees with @(
    UI.LineItem                               : [
        {
            $Type: 'UI.DataField',
            Value: ID,
            Label: 'ID',
        },
        {
            $Type: 'UI.DataField',
            Value: firstName,
            Label: '{i18n>FirstName}',
        },
        {
            $Type: 'UI.DataField',
            Value: lastName,
            Label: '{i18n>LastName}',
        },
        {
            $Type: 'UI.DataField',
            Value: practice.practice,
            Label: '{i18n>Practice}',
        },
        {
            $Type: 'UI.DataField',
            Value: employment.employment,
            Label: '{i18n>Employment}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: { // Create the view of a new table
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: [ // Render the data as a table (LineItem visualization)
            '@UI.LineItem',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [ // No filter, empty array
            ],
        },
        Text               : '{i18n>Employees}',
    // Text for the table view
    },
    UI.HeaderInfo                             : { // Header Annotations Object Page
        Title         : {
            $Type: 'UI.DataField',
            Value: fullname,
        },
        TypeName      : '',
        TypeNamePlural: '',
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Employee}',
        },
        TypeImageUrl  : 'sap-icon://person-placeholder',
    },
    UI.Facets                                 : [ // Sections on the Object Page
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>GeneralInformation}',
            ID    : 'Details',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : '{i18n>Information}',
                ID    : 'Details1',
                Target: '@UI.FieldGroup#Details',
            }, ],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : '{i18n>Details}',
            ID    : 'Skills',
            Facets: [{
                $Type : 'UI.ReferenceFacet',
                Label : 'Skills',
                ID    : 'Skills1',
                Target: 'employeeSkills/@UI.LineItem#Skills',
            }, ],
        },
    ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: firstName,
                Label: '{i18n>FirstName}',
            },
            {
                $Type: 'UI.DataField',
                Value: lastName,
                Label: '{i18n>LastName}',
            },
            {
                $Type: 'UI.DataField',
                Value: employment.employmentCode,
                Label: '{i18n>Employment}',
            },
            {
                $Type: 'UI.DataField',
                Value: office.officeCode,
                Label: '{i18n>Office}',
            },
            {
                $Type: 'UI.DataField',
                Value: practice.practiceCode,
                Label: '{i18n>Practice}',
            },
            {
                $Type: 'UI.DataField',
                Value: role.roleCode,
                Label: '{i18n>Role}',
            },
            {
                $Type: 'UI.DataField',
                Value: seniority.seniorityCode,
                Label: '{i18n>Seniority}',
            },
            {
                $Type: 'UI.DataField',
                Value: email,
                Label: '{i18n>Email}',
            },
            {
                $Type: 'UI.DataField',
                Value: salary,
                Label: '{i18n>Salary}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: 'ID',
            },
        ],
    },
);

annotate service.Skills with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: ID,
            Label: 'ID',
        },
        {
            $Type: 'UI.DataField',
            Value: skillCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: skill,
            Label: '{i18n>Skill}',
        },
        {
            $Type: 'UI.DataField',
            Value: parentSkill_ID,
            Label: '{i18n>ParentId}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Skills}',
    },
    UI.HeaderInfo                             : {
        TypeName      : '{i18n>Skill}',
        TypeNamePlural: '',
        TypeImageUrl  : 'sap-icon://lightbulb',
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Sap}',
        },
        Title         : {
            $Type: 'UI.DataField',
            Value: skill,
        },
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: skillCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: skill,
                Label: '{i18n>Skill}',
            },
            {
                $Type: 'UI.DataField',
                Value: parentSkill_ID,
                Label: '{i18n>ParentId}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Practices with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: practiceCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: practice,
            Label: '{i18n>Practice}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Practices}',
    },
    UI.HeaderInfo                             : {
        TypeName      : 'Practice',
        TypeNamePlural: '',
        TypeImageUrl  : 'sap-icon://collaborate',
        Title         : {
            $Type: 'UI.DataField',
            Value: practice,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Practice}',
        },
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: practice,
                Label: '{i18n>Practice}',
            },
            {
                $Type: 'UI.DataField',
                Value: practiceCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Seniorities with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: seniorityCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: seniority,
            Label: '{i18n>Seniority}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Seniorities}',
    },
    UI.HeaderInfo                             : {
        TypeName      : 'Seniority',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: seniority,
        },
        TypeImageUrl  : 'sap-icon://group',
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Seniority}',
        },
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Details',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: seniority,
                Label: '{i18n>Seniority}',
            },
            {
                $Type: 'UI.DataField',
                Value: seniorityCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Offices with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: officeCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: office,
            Label: '{i18n>Office}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Offices}',
    },
    UI.HeaderInfo                             : {
        TypeName      : '{i18n>Office}',
        TypeNamePlural: '',
        TypeImageUrl  : 'sap-icon://building',
        Title         : {
            $Type: 'UI.DataField',
            Value: office,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Office}',
        },
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Details',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: office,
                Label: '{i18n>Office}',
            },
            {
                $Type: 'UI.DataField',
                Value: officeCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.EmployeeSkills with @(UI.LineItem #Skills: [
    {
        $Type: 'UI.DataField',
        Value: skill.skillCode,
        Label: '{i18n>SkillCode}',
    },
    {
        $Type: 'UI.DataField',
        Value: skill.skill,
        Label: '{i18n>Skill}',
    },
    {
        $Type: 'UI.DataField',
        Value: levelCode.levelCode,
        Label: '{i18n>LevelCode}',
    },
    {
        $Type: 'UI.DataField',
        Value: levelCode.level,
        Label: '{i18n>Level}',
    },
    {
        $Type: 'UI.DataField',
        Value: interestCode.interestCode,
        Label: '{i18n>InterestCode}',
    },
    {
        $Type: 'UI.DataField',
        Value: interestCode.interest,
        Label: '{i18n>Interest}',
    },
]);

annotate service.Offices with { // Value help for Employees - Offices
    officeCode @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Offices',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: officeCode,
                ValueListProperty: 'officeCode',
            }, ],
        },
        Common.ValueListWithFixedValues: true,
        Common.Text                    : office,
    )
};

annotate service.Practices with {
    practiceCode @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Practices',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: practiceCode,
                ValueListProperty: 'practiceCode',
            }, ],
        },
        Common.ValueListWithFixedValues: true,
        Common.Text                    : practice
    )
};

annotate service.Seniorities with {
    seniorityCode @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Seniorities',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: seniorityCode,
                ValueListProperty: 'seniorityCode',
            }, ],
        },
        Common.ValueListWithFixedValues: true,
        Common.Text                    : seniority
    )
};

annotate service.Roles with {
    roleCode @(
        Common.ValueList               : {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'Roles',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: roleCode,
                ValueListProperty: 'roleCode',
            }, ],
        },
        Common.ValueListWithFixedValues: true,
        Common.Text                    : role,
    )
};

annotate service.Projects with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: name,
            Label: '{i18n>Name}',
        },
        {
            $Type: 'UI.DataField',
            Value: customer,
            Label: '{i18n>Customer}',
        },
        {
            $Type: 'UI.DataField',
            Value: startDate,
            Label: '{i18n>StartDate}',
        },
        {
            $Type: 'UI.DataField',
            Value: endDate,
            Label: '{i18n>EndDate}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Projects}',
    },
    UI.HeaderInfo                             : {
        TypeName      : '{i18n>Project}',
        TypeNamePlural: '',
        TypeImageUrl  : 'sap-icon://product',
        Title         : {
            $Type: 'UI.DataField',
            Value: name,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: 'Project',
        },
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: name,
                Label: '{i18n>Name}',
            },
            {
                $Type: 'UI.DataField',
                Value: customer,
                Label: '{i18n>Customer}',
            },
            {
                $Type: 'UI.DataField',
                Value: startDate,
                Label: '{i18n>StartDate}',
            },
            {
                $Type: 'UI.DataField',
                Value: endDate,
                Label: '{i18n>EndDate}',
            },
            {
                $Type: 'UI.DataField',
                Value: budget,
                Label: '{i18n>Budget}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Roles with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: roleCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: role,
            Label: '{i18n>Role}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Roles}',
    },
    UI.HeaderInfo                             : {
        Title         : {
            $Type: 'UI.DataField',
            Value: role,
        },
        TypeName      : '{i18n>Role}',
        TypeNamePlural: '',
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Role}',
        },
        TypeImageUrl  : 'sap-icon://role',
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: role,
                Label: '{i18n>Role}',
            },
            {
                $Type: 'UI.DataField',
                Value: roleCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Employments with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: employmentCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: employment,
            Label: '{i18n>Employment}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Employments}',
    },
    UI.HeaderInfo                             : {
        TypeName      : '{i18n>Employment}',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: employment,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Employment}',
        },
        TypeImageUrl  : 'sap-icon://decision',
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #i18nDetails                : {
        $Type: 'UI.FieldGroupType',
        Data : [],
    },
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: employment,
                Label: '{i18n>Employment}',
            },
            {
                $Type: 'UI.DataField',
                Value: employmentCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Statuses with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: statusCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: status,
            Label: '{i18n>Status}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Statuses}',
    },
    UI.HeaderInfo                             : {
        TypeName      : '{i18n>Status}',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: status,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Status}',
        },
        TypeImageUrl  : 'sap-icon://sys-enter',
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: status,
                Label: '{i18n>Status}',
            },
            {
                $Type: 'UI.DataField',
                Value: statusCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Levels with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: levelCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: level,
            Label: '{i18n>Level}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Levels}',
    },
    UI.HeaderInfo                             : {
        TypeName      : 'Level',
        TypeNamePlural: '',
        Title         : {
            $Type: 'UI.DataField',
            Value: level,
        },
        Description   : {
            $Type: 'UI.DataField',
            Value: 'Level',
        },
        TypeImageUrl  : 'sap-icon://drill-up',
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: level,
                Label: '{i18n>Level}',
            },
            {
                $Type: 'UI.DataField',
                Value: levelCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);

annotate service.Interests with @(
    UI.LineItem #tableView                    : [
        {
            $Type: 'UI.DataField',
            Value: interestCode,
            Label: '{i18n>Code}',
        },
        {
            $Type: 'UI.DataField',
            Value: interest,
            Label: '{i18n>Interest}',
        },
    ],
    UI.SelectionPresentationVariant #tableView: {
        $Type              : 'UI.SelectionPresentationVariantType',
        PresentationVariant: {
            $Type         : 'UI.PresentationVariantType',
            Visualizations: ['@UI.LineItem#tableView',
            ],
        },
        SelectionVariant   : {
            $Type        : 'UI.SelectionVariantType',
            SelectOptions: [],
        },
        Text               : '{i18n>Interests}',
    },
    UI.HeaderInfo                             : {
        Title         : {
            $Type: 'UI.DataField',
            Value: interest,
        },
        TypeName      : '{i18n>Interest}',
        TypeNamePlural: '',
        Description   : {
            $Type: 'UI.DataField',
            Value: '{i18n>Interest}',
        },
        TypeImageUrl  : 'sap-icon://heart-2',
    },
    UI.Facets                                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : '{i18n>Details}',
        ID    : 'Details',
        Target: '@UI.FieldGroup#Details',
    }, ],
    UI.FieldGroup #Details                    : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: interest,
                Label: '{i18n>Interest}',
            },
            {
                $Type: 'UI.DataField',
                Value: interestCode,
                Label: '{i18n>Code}',
            },
            {
                $Type: 'UI.DataField',
                Value: ID,
                Label: '{i18n>Id}',
            },
        ],
    },
);
