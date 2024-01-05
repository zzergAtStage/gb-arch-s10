<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>Animals shelter</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
 href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<link rel="stylesheet"
 href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
 src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js">

</script>
<script
 src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js">
</script>

<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>



</head>
<body >
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Animal shelter</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">Disabled</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


<main class="container">
  <div class="bg-light p-5 rounded">
     <div class="container my-5">
        <h2>Student <c:out value="${student.id != null ? 'Update' : 'Registration' }" /></h2>
            <div class="card">
                <div class="card-body">
                    <div class="col-md-10">
                    <form:form method="GET" modelAttribute="clientsList" action="/all" name="client">
		            <form:hidden path="id"/>

                <div class="row">
                    <div class="form-group col-md-8">
                    <label for="name" class="col-form-label"> First Name
                                                                </label>
                    <form:input path="firstName" id="fname" class="form-control" />
                    </div>

                <div class="form-group col-md-8">
                    <label for="name" class="col-form-label"> Last Name
                                                             </label>
                    <form:input path="lastName" id="lname" class="form-control"/>
                </div>

                <div class="form-group col-md-8">
                    <label for="email" class="col-form-label" > Email
                                                               </label>
                    <form:input path="emailId" id="emailId" class="form-control"/>
                </div>
            </div>

            <div class="col-md-6">
                <input type="submit" class="btn btn-success"
                value="<c:out value="${student.id != null ? 'Update' : 'Register' }" />">&nbsp;&nbsp;
                <a href="/list">Student List</a>&nbsp;
                <c:if test="${student.id ne null}"><b>|</b>&nbsp;<a href="/registration">Registration</a></c:if>
            </div>

                    </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>