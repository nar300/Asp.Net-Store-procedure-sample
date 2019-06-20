<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jinsa.aspx.cs" Inherits="Jins.Jinsa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1"  runat="server">
        <div class="container mt-5">
            <div class="row">
                <div class="col-lg-4" style="text-align:right"> Search By Name </div>
                <div class="col-lg-4"> <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server" AutoComplete="off"></asp:TextBox> </div>
                <div class="col-lg-4"> <asp:Button ID="Buttonx" CssClass="btn btn-primary" runat="server" Text="Search" OnClick="Buttonx_Click"  /> </div>
                 </div>
            </div>
        <div class="row"style="margin-left:30px;">

            <div class="col-lg-4" >
                <asp:Label ID="lblname"  runat="server" Text="Full Name"></asp:Label>
            <asp:TextBox ID="txtName" Class="form-control"  runat="server" placeholder="Enter your Name"></asp:TextBox>
                 <asp:Label ID="lblEmail"  runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" Class="form-control"  runat="server" placeholder="Enter your Email"></asp:TextBox>

                      <asp:Label ID="lblPhone"  runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txtPhone" Class="form-control"  runat="server" placeholder="Enter your Phone Number"></asp:TextBox>

                      <asp:Label ID="lblAddress"  runat="server" Text="Home Address"></asp:Label>
            <asp:TextBox ID="txtAddress" TextMode="MultiLine" Class="form-control"  runat="server" placeholder="Enter your Home Address"></asp:TextBox>
          </br><asp:Button ID="Button1" CssClass ="btn btn-block btn-primary" runat="server" Text="Insert Records" OnClick="Button1_Click" />
                
            
<div class="alert alert-success" id="error" runat="server" style="display:none">
  <strong>Success!</strong> 
</div>
            
            </div>

            


            <div class="col-lg-8">
                <asp:DataList ID="DataList1" runat="server">
                    <HeaderTemplate><table class="table table-stripped"></HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("name") %></td>
                            <td><%#Eval("email")%></td>
                            <td><%#Eval("phone")%></td>
                            <td><%#Eval("address")%></td>
                            <td><a class="btn btn-success" href="update.aspx?id=<%#Eval("id")%>">Update</a></td>
                            <%--  --%>
                              <td><a href="delete.aspx?id=<%#Eval("id")%>"class="btn btn-danger"  >Delete</a></td>


                        </tr>


                    </ItemTemplate>


                    <FooterTemplate></table></FooterTemplate>



                </asp:DataList>



            </div>





        </div>





        </div>
    </form>
</body>
</html>
