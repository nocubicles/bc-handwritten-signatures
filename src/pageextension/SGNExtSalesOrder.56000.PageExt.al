pageextension 56000 "SGN Ext. Sales Order" extends "Sales Order"
{
    layout
    {
        addafter(Control1900201301)
        {
            group("SGN Signature Group")
            {
                usercontrol("SGN SGNSignaturePad"; "SGN SGNSignaturePad")
                {
                    ApplicationArea = All;
                    Visible = true;
                    trigger Ready()
                    begin
                        CurrPage."SGN SGNSignaturePad".InitializeSignaturePad();
                    end;

                    trigger Sign(Signature: Text)
                    begin
                        Rec.SignDocument(Signature);
                        CurrPage.Update();
                    end;
                }

            }
            field("SGN Signature"; Rec."SGN Signature")
            {
                Caption = 'Customer Signature';
                ApplicationArea = All;
                Editable = false;
            }
        }
    }

}