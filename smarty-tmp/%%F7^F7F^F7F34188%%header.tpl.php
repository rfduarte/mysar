<?php /* Smarty version 2.6.10, created on 2015-05-04 01:58:38
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
<body><center><header class="navbar navbar-static-top navbar-default" id="top" role="banner"><a class="navbar-brand">MySAR</a><!--<h1><?php echo $this->_tpl_vars['pageVars']['programName']; ?>
 <?php echo $this->_tpl_vars['pageVars']['programVersion']; ?>
</h1>--></header>
    <p>[ <a href=".">Home</a> | <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?a=administration">Administration</a> ]</p>
<div class="container" role="main">