<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
    let add = {
        init:function (){
            $('#add_btn').click(function (){
                add.send();
            });
        },
        send:function(){
            $('#register_form').attr({
                method:'post',
                action:'/category/addimpl',
            });
            $('#register_form').submit();
        }
    };
    $(function (){
        add.init();
    })
</script>

    <div class="container-fluid px-4">
        <h1 class="mt-4">Cust ALL</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="/">Move Main Page</a></li>
            <li class="breadcrumb-item active">#</li>
        </ol>
        <div class="card mb-4">
            <div class="card-body">
                Category
                <button type="button" class="btn btn-outline-primary"
                        data-toggle="modal" data-target="#addmodal">New Category ADD</button>
            </div>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                DataTable : Category
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                    <tr>
                        <th>Top_category ID</th>
                        <th>Top_Category Name</th>
                        <th>Category ID</th>
                        <th>Category Name</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="obj" items="${catelist}">
                        <tr>
                            <td>${obj.top_cate}</td>
                            <td>${obj.topname}</td>
                            <td>${obj.id}</td>
                            <td>${obj.cate_name}</td>
                        </tr>

                    </c:forEach>


                     </tbody>
                </table>
            </div>
        </div>
    </div>
<!-- Add Modal -->
<div id="addmodal" class="modal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">ADD Category</h4>
            </div>
            <div class="modal-body">

                <form id="register_form">
                    <div class="form-group" >
                        <label class="control-label col-sm-4" for="top_cate">Top Category: </label>
                        <select id="top_cate" name="top_cate" size="1" >
                            <option value="">선택하세요.</option>
                            <option value=100>상의</option>
                            <option value=200>하의</option>
                            <option value=300>신발</option>
                            <option value=400>언더웨어</option>
                            <option value=null>null</option>
                        </select>
                    </div><br/>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="id">ID:</label>
                        <input type="number" class="form-control" id="id" name="id" placeholder="Input ID: 3자리의 숫자를 입력하세요" >
                    </div><br/>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="cate_name">Name:</label>
                        <input type="text" class="form-control" id="cate_name" name="cate_name" placeholder="Input name" >
                    </div><br/>
                    <div class="form-group">
                        <button type="button" id="add_btn" class="btn btn-outline-primary">ADD</button>
                        <button type="button" id="modalclose_btn" class="btn btn-outline-primary" data-dismiss="modal">CLOSE</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<!-- Add Modal END-->
