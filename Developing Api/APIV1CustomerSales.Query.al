query 50132 "APIV1 - Customer Sales" //API query type
{
    QueryType = API;
    APIPublisher = 'contoso';
    APIGroup = 'app1';
    APIVersion = 'v1.0';
    Caption = 'customerSales', Locked = true;
    EntityName = 'customerSale';
    EntitySetName = 'customerSales';

    elements
    {
        dataitem(QueryElement1; Customer)
        {
            column(customerId; "Contact ID")
            {
                Caption = 'Id', Locked = true;
            }
            column(customerNumber; "No.")
            {
                Caption = 'No', Locked = true;
            }
            column(name; Name)
            {
                Caption = 'Name', Locked = true;
            }
            dataitem(QueryElement10; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = QueryElement1."No.";
                SqlJoinType = LeftOuterJoin;
                DataItemTableFilter = "Document Type" = FILTER(Invoice | "Credit Memo");
                column(totalSalesAmount; "Sales (LCY)")
                {
                    Caption = 'TotalSalesAmount', Locked = true;
                    Method = Sum;
                }
                filter(dateFilter; "Posting Date")
                {
                    Caption = 'DateFilter', Locked = true;
                }
            }
        }
    }
}