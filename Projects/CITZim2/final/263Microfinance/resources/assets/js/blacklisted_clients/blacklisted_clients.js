'use strict';

let tableName = '#blacklistedClientsTable';
$(tableName).DataTable({
    scrollX: true,
    deferRender: true,
    scroller: true,
    processing: true,
    serverSide: true,
    'order': [[0, 'asc']],
    ajax: {
        url: recordsURL,
    },
    columnDefs: [
        {
            'targets': [6],
            'orderable': false,
            'className': 'text-center',
            'width': '8%',
        },
    ],
    columns: [
        {
            data: 'firstname',
            name: 'firstname'
        },{
            data: 'lastname',
            name: 'lastname'
        },{
            data: 'institution',
            name: 'institution'
        },{
            data: 'account_type_id',
            name: 'account_type_id'
        },{
            data: 'manager_id',
            name: 'manager_id'
        },{
            data: 'date_blacklisted',
            name: 'date_blacklisted'
        },
        {
            data: function (row) {
                let url = recordsURL + row.id;
                let data = [
                {
                    'id': row.id,
                    'url': url + '/edit',
                }];
                                
                return prepareTemplateRender('#blacklistedClientsTemplate',
                    data);
            }, name: 'id',
        },
    ],
});

$(document).on('click', '.delete-btn', function (event) {
    let recordId = $(event.currentTarget).data('id');
    deleteItem(recordsURL + recordId, tableName, 'Blacklisted Client');
});
