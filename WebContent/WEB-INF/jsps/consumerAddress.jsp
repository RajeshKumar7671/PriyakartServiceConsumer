<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
<%@include file="itemHeader.jsp" %>
<br>
<style>
body{margin-top:0px;}
.glyphicon { margin-right:10px; }
.panel-body { padding:0px; }
.panel-body table tr td { padding-left: 15px }
.panel-body .table {margin-bottom: 0px; }

</style>

<div class="container">
    <div class="row">
       <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" >
                            ACCOUNT</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                      <span class="glyphicon glyphicon-user text-danger"></span> <span class="glyphicon glyphicon-cup text-primary"></span><a href="consAccount?consId=<c:out value="${consObj.consId}"/>">My Account</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" >
                            ORDER</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                       <span class="glyphicon  text-danger"></span>  <a href="http://www.jquery2dotnet.com">My Orders</a> <span class="label label-success"> $ 320</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" >
                           PAYMENT</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon-gift text-danger"></span>  <a href="http://www.jquery2dotnet.com">Gift Card</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                       <span class="glyphicon  text-danger"></span>  <a href="http://www.jquery2dotnet.com">Wallet</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                 <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            SETTING</a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon-user text-danger"></span> <a href="consAccount?consId=<c:out value="${consObject.consId}"/>">Personal Info.</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon  glyphicon-edit  text-danger"></span> <a href="consChangePwd?consId=<c:out value="${consObject.consId}"/>">Change Password</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon-save text-danger"></span> <a href="consAddress?consId=<c:out value="${consObject.consId}"/>">Address</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon-cog  text-danger"></span> <a href="consAccount?consId=<c:out value="${consObject.consId}"/>">Profile Setting</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                       <span class="glyphicon glyphicon-edit  text-danger"></span> <a href="http://www.jquery2dotnet.com">Update Mobile/Email</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                            Deactivate Account</a>
                                    </td>
                                </tr>
                                 <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-bell  text-danger"></span> <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-9 col-md-9">
          <div class="well">
           <h3 style="color:#337ab7">Add Address  :</h3>
        <form  action="addrConsUpdate" method="post" class="form-horizontal" role="form">
        <div class="form-group">
          <label class="col-lg-3 control-label" hidden="disable">Consumer Id</label>
          <div class="col-lg-3">
            <input  name="consId" class="form-control" value="${consObject.consId}" type="hidden">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Address Line1</label>
          <div class="col-lg-8">
            <input  name="addr1" class="form-control" value="${consObject.addr.addr1}" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Address Line1</label>
          <div class="col-lg-8">
            <input name="addr2" class="form-control" value="${consObject.addr.addr2}" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">City Name</label>
          <div class="col-lg-3">
            <input name="city" class="form-control" value="${consObject.addr.city}" type="text">
          </div>
          <label class="col-lg-2 control-label">State</label>
          <div class="col-lg-3">
            <input  name="state" class="form-control" value="${consObject.addr.state}" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-md-3 control-label">Country</label>
          <div class="col-md-3">
            <input name="country" class="form-control" value="${consObject.addr.country}" type="text">
          </div>
          <label class="col-md-2 control-label">Pin Code</label>
          <div class="col-md-3">
            <input name="pinCode" class="form-control" value="${consObject.addr.pinCode}" type="text">
          </div>
        </div>
         <div class="form-group">
          <label class="col-md-3 control-label"></label>
          <div class="col-md-8"  align="right">
            <input type="submit" class="btn btn-primary" value="Save Changes" >
            <span></span>
            <input  class="btn btn-default" value="Cancel" type="reset">
          </div>
        </div>
        </form>
        </div>
     </div>
   </div>
</div>

<br>

<%@include file="itemFooter.jsp" %>