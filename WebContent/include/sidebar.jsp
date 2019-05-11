<%@page import="chitkara.dao.Userdao"%>
<% Userdao user=(Userdao)session.getAttribute("user"); %>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="welcome.jsp" class="brand-link">
      <img src="../asset/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Chitkara</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../asset/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
          <span style="color:white"><Strong><%=user.getFn()+" "+user.getLn()%></strong></span>
        </div>
        <div class="info">
          <a href="#" class="d-block"></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a id="dashboard" href="dashboard.jsp" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Dashboard                
              </p>
            </a>            
          </li>
          <li class="nav-item has-treeview">
            <a  href="profile.jsp" id="profile" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>
                Profile                
              </p>
            </a>            
          </li>
          <li class="nav-item has-treeview">
           <a  href="homework.jsp" id="homework" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Complaint          
              </p>
            </a>
          </li>
            <li class="nav-item has-treeview">
           <a  href="addStudent.jsp" id="student" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>
                Add Student         
              </p>
            </a>
          </li>
        <!--  <li class="nav-item has-treeview">
           <a  href="listAttendance.jsp" id="attendance" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Attendance           
              </p>
            </a>
          </li>                                         
           <li class="nav-item has-treeview">
           <a  href="result.jsp" id="result" class="nav-link">
              <i class="nav-icon fa fa-tasks"></i>
              <p>
                Result           
              </p>
            </a>
          </li>     -->                                                                                              
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>