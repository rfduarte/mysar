<!DOCTYPE html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso8859-1">
    <title>{$pageVars.programName} {$pageVars.programVersion}</title>
    <link rel="stylesheet" href="bootstrap.css" type="text/css">
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
<body><center><header class="navbar navbar-static-top navbar-default" id="top" role="banner"><a class="navbar-brand">MySAR</a><!--<h1>{$pageVars.programName} {$pageVars.programVersion}</h1>--></header>
    <p>[ <a href=".">Home</a> | <a href="{$smarty.server.PHP_SELF}?a=administration">Administration</a> ]</p>
<div class="container" role="main">
