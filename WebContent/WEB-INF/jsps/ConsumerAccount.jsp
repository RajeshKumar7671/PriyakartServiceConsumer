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
              <h3 style="color:#337ab7">Personal Information:</h3>
      <form action="updateConsumer" method="post" class="form-horizontal" role="form">
         <div class="form-group">
          <label class="col-lg-3 control-label" hidden="disable">Cons Id</label>
          <div class="col-lg-2">
            <input name="consId" class="form-control" value="${consObject.consId}" type="hidden">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">First Name</label>
          <div class="col-lg-4">
            <input name="consFirstName" class="form-control" value="${consObject.consFirstName}" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Last Name</label>
          <div class="col-lg-4">
            <input name="consLastName" class="form-control" value="${consObject.consLastName}" type="text">
          </div>
        </div>
        <div class="form-group">
          <label class="col-lg-3 control-label">Mobile No</label>
          <div class="col-lg-4">
            <input name="mobileNo" class="form-control" value="${consObject.mobileNo}" type="text">
          </div>
        </div>
        <!-- --Test Input -->
      <div class="form-group">
          <label class="col-sm-3 control-label">Gender</label>
             <div class="col-sm-7">
                <div class="row">
                <c:choose>
				 <c:when test="${consObject.gender eq 'Male'}">
                   <div class="col-sm-3">
                      <label class="radio-inline">
                        <input type="radio" name="gender" id="maleRadio" value="Male" checked="checked">Male
                      </label>
                   </div>
                  <div class="col-sm-3">
                     <label class="radio-inline">
                        <input type="radio" name="gender" id="femaleRadio" value="Female">Female
                      </label>
                   </div>
                  </c:when>
                  <c:when test="${consObject.gender eq 'Female'}">
                     <div class="col-sm-3">
                      <label class="radio-inline">
                        <input type="radio" name="gender" id="maleRadio" value="Male">Male
                      </label>
                   </div>
                  <div class="col-sm-3">
                     <label class="radio-inline">
                        <input type="radio" name="gender" id="femaleRadio" value="Female" checked="checked">Female
                      </label>
                   </div>
                  </c:when>
				<c:otherwise>
				     <div class="col-sm-3">
                      <label class="radio-inline">
                        <input type="radio" name="gender" id="maleRadio" value="Male">Male
                      </label>
                   </div>
                  <div class="col-sm-3">
                     <label class="radio-inline">
                        <input type="radio" name="gender" id="femaleRadio" value="Female">Female
                      </label>
                   </div>
				</c:otherwise>
			    </c:choose>
                </div>
               </div>
             </div> <!-- /.form-group -->
             <div class="form-group">
                 <label class="col-md-3 control-label"></label>
                 <div class="col-md-4"  align="right">
                    <input  class="btn btn-primary" value="Save Changes" type="submit">
                 </div>
             </div>
           </form>
        </div>
     </div>
   </div>
</div>

<br>

<%@include file="itemFooter.jsp" %>