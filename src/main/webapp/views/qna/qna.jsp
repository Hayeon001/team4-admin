<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
<%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <div class="container-fluid px-4">
        <h1 class="mt-4">Q&A</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="/">Move Main Page</a></li>
            <li class="breadcrumb-item active">#</li>
        </ol>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                DataTable : Q&A
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>Answer</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Rdate</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="obj" items="${qlist}">
                        <tr>
                            <td>
                                <a href="/qna/detail?id=${obj.id}">${obj.id}</>
                            </td>
                            <td>${obj.answer}</td>
                            <td>${obj.title}</td>
                            <td>${obj.cust_id}</td>
                            <td><fmt:formatDate value="${obj.rdate}" pattern="yyyy-MM-dd"/></td>
                        </tr>
                    </c:forEach>


                     </tbody>
                </table>
            </div>
        </div>
    </div>


<%--
<!-- Replay Modal -->
<div id="answermodal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">ANSWER</h4>
            </div>
            <div class="modal-body">
                <form id="answer_form">
                    <div class="form-group">
                        <textarea id="answer" rows="4" cols="60"></textarea>
                    </div>
                    <div>
                        <button type="button" id="item_add_btn" class="btn btn-outline-primary">Done</button>
                        <button type="button" id="modalclose_btn" class="btn btn-outline-primary" data-dismiss="modal">CLOSE</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<!-- Replay Modal END-->

--%>
