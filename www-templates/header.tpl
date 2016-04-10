<!DOCTYPE html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso8859-1">
    <title>{$pageVars.programName} {$pageVars.programVersion}</title>
    <link rel="stylesheet" href="fonts/bootstrap.css" type="text/css">
    {literal}
    <SCRIPT language="JavaScript"><!--
      function my_confirm(msg,go) {
        var where_to= confirm(msg);
        if (where_to== true) {
          window.location=go;
        }
      }
    //--></SCRIPT>
   {/literal}
  </head>
<body><center><header class="navbar navbar-static-top navbar-inverse" id="top" role="banner"><a class="navbar-brand">MySAR</a> <nav class="collapse navbar-collapse bs-navbar-collapse">
      <ul class="nav navbar-nav">
        <li>
          <a href=".">HOME</a>
        </li>
        <li>
          <a href="{$smarty.server.PHP_SELF}?a=administration">Administration</a>
        </li>
      </ul>
    </nav><!--<h1>{$pageVars.programName} {$pageVars.programVersion}</h1>--></header>
    <!-- <p>[ <a href=".">Home</a> | <a href="{$smarty.server.PHP_SELF}?a=administration">Administration</a> ]</p>-->
<div class="container" role="main">
