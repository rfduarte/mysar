<?php /* Smarty version 2.6.10, created on 2015-05-05 18:38:38
         compiled from header.tpl */ ?>
<!DOCTYPE html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso8859-1">
    <title><?php echo $this->_tpl_vars['pageVars']['programName']; ?>
 <?php echo $this->_tpl_vars['pageVars']['programVersion']; ?>
</title>
    <link rel="stylesheet" href="bootstrap.css" type="text/css">
    <?php echo '
    <SCRIPT language="JavaScript"><!--
      function my_confirm(msg,go) {
        var where_to= confirm(msg);
        if (where_to== true) {
          window.location=go;
        }
      }
    //--></SCRIPT>
   '; ?>

  </head>
<body><center><header class="navbar navbar-static-top navbar-default" id="top" role="banner"><a class="navbar-brand">MySAR</a> <nav class="collapse navbar-collapse bs-navbar-collapse">
      <ul class="nav navbar-nav">
        <li>
          <a href=".">HOME</a>
        </li>
        <li>
          <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?a=administration">Administration</a>
        </li>
      </ul>
    </nav><!--<h1><?php echo $this->_tpl_vars['pageVars']['programName']; ?>
 <?php echo $this->_tpl_vars['pageVars']['programVersion']; ?>
</h1>--></header>
    <!-- <p>[ <a href=".">Home</a> | <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?a=administration">Administration</a> ]</p>-->
<div class="container" role="main">