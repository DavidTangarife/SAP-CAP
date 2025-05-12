using AdminService as service from '../../srv/services';

annotate service.Employees with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : firstName,
            Label : '{i18n>FirstName}',
        },
        {
            $Type : 'UI.DataField',
            Value : lastName,
            Label : '{i18n>LastName}',
        },
        {
            $Type : 'UI.DataField',
            Value : practice.practice,
            Label : '{i18n>Practice}',
        },
        {
            $Type : 'UI.DataField',
            Value : employment.employment,
            Label : '{i18n>Employment}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {          // Create the view of a new table
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [                              // Render the data as a table (LineItem visualization)
                '@UI.LineItem',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [                               // No filter, empty array
            ], 
        },
        Text : '{i18n>Employees}',                          // Text for the table view
    },
    
);

annotate service.Skills with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : skillCode,
            Label : '{i18n>Code}',
        },
        {
            $Type : 'UI.DataField',
            Value : skill,
            Label : '{i18n>Skill}',
        },
        {
            $Type : 'UI.DataField',
            Value : parentSkill_ID,
            Label : '{i18n>ParentId}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Skills}',
    }
);
annotate service.Practices with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : practiceCode,
            Label : '{i18n>Code}',
        },
        {
            $Type : 'UI.DataField',
            Value : practice,
            Label : '{i18n>Practice}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Practices}',
    }
);

annotate service.Seniorities with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : seniorityCode,
            Label : '{i18n>Code}',
        },
        {
            $Type : 'UI.DataField',
            Value : seniority,
            Label : '{i18n>Seniority}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Seniorities}',
    }
);

annotate service.Offices with @(
    UI.LineItem #tableView : [
        {
            $Type : 'UI.DataField',
            Value : officeCode,
            Label : '{i18n>Code}',
        },
        {
            $Type : 'UI.DataField',
            Value : office,
            Label : '{i18n>Office}',
        },
    ],
    UI.SelectionPresentationVariant #tableView : {
        $Type : 'UI.SelectionPresentationVariantType',
        PresentationVariant : {
            $Type : 'UI.PresentationVariantType',
            Visualizations : [
                '@UI.LineItem#tableView',
            ],
        },
        SelectionVariant : {
            $Type : 'UI.SelectionVariantType',
            SelectOptions : [
            ],
        },
        Text : '{i18n>Offices}',
    }
);

