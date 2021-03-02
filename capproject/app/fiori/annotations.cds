using CatalogService as service from '../../srv/service';
annotate service.Books with @odata.draft.enabled;
annotate service.Books with @(
	
	UI: {
		Identification: [{Value:title}],
		SelectionFields: [ ID,title],
		LineItem: [
			{Value: ID,
            Label:'ID'},
			{Value: title,
            Label:'Title'}
		
		
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Details}', Target: '@UI.FieldGroup#Details'}
		],
		FieldGroup#Details: {
			Data: [
				{Value: ID,
                Label:'Book ID'},
				
				{Value: title,
                Label:'Book Title'},
				{Value: stock,
                Label:'No Of Stocks Left'}
			]
		}
	}
) {
	
    

                
};


////////////////////////////////////////////////////////////////////////////
//
//	Books Details
//
annotate service.Books with @(
	UI: {
		HeaderInfo: {
			TypeName: '{i18n>Book}',
			TypeNamePlural: '{i18n>Books}'
		},
	}
);