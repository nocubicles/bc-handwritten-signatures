page 50120 MyCustomerApi
{
    PageType = API;
    Caption = 'My Customer API';
    APIPublisher = 'contoso';
    APIGroup = 'app1';
    APIVersion = 'v2.0', 'v1.0';
    EntityName = 'customer';
    EntitySetName = 'customers';
    SourceTable = Customer;
    DelayedInsert = true;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(id; Image)
                {
                    Caption = 'ID';
                }
                field(name; Name)
                {
                    Caption = 'Name';
                }
            }
        }
    }
}