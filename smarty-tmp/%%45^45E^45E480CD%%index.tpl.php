<?php /* Smarty version 2.6.10, created on 2015-05-05 23:58:32
         compiled from index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'bytesToHRF', 'index.tpl', 82, false),)), $this); ?>
<nobr>
[

<a href="<?php echo $this->_tpl_vars['pageVars']['uri']; ?>
">Refresh this page</a>

]</nobr>

[
        <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?a=<?php echo $this->_tpl_vars['pageVars']['thisPage']; ?>
&action=setDefaultView&OrderMethod=<?php echo $this->_tpl_vars['pageVars']['OrderMethod']; ?>
&OrderBy=<?php echo $this->_tpl_vars['pageVars']['OrderBy']; ?>
&ByteUnit=<?php echo $this->_tpl_vars['pageVars']['ByteUnit']; ?>
">
          Set this view as the default
        </a>
] 


<table class="table table-bordered"><tr><th>Daily Summary</th></tr></table>


	<table class="table table-bordered"> 

	<thead>

<tr>

	<th>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['dateASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['dateASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['dateLabelStart']; ?>
DATE<?php echo $this->_tpl_vars['pageVars']['dateLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['dateDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['dateDESCImageBorder']; ?>
"></a>
       </th>
          <th>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['usersASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['usersASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['usersLabelStart']; ?>
USERS<?php echo $this->_tpl_vars['pageVars']['usersLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['usersDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['usersDESCImageBorder']; ?>
"></a>
        </th>
          
	<th>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['hostsASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['hostsASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['hostsLabelStart']; ?>
HOSTS<?php echo $this->_tpl_vars['pageVars']['hostsLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['hostsDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['hostsDESCImageBorder']; ?>
"></a>
       </th>
          <th>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['sitesASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['sitesASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['sitesLabelStart']; ?>
SITES<?php echo $this->_tpl_vars['pageVars']['sitesLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['sitesDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['sitesDESCImageBorder']; ?>
"></a>
       </th>
       <th>
          
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['bytesASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['bytesASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['bytesLabelStart']; ?>
TRAFFIC<?php echo $this->_tpl_vars['pageVars']['bytesLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['bytesDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['bytesDESCImageBorder']; ?>
"></a>
            
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['B']; ?>
"><?php echo $this->_tpl_vars['pageVars']['BLabelStart']; ?>
B<?php echo $this->_tpl_vars['pageVars']['BLabelEnd']; ?>
</a>
            |
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['K']; ?>
"><?php echo $this->_tpl_vars['pageVars']['KLabelStart']; ?>
K<?php echo $this->_tpl_vars['pageVars']['KLabelEnd']; ?>
</a>
            |
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['M']; ?>
"><?php echo $this->_tpl_vars['pageVars']['MLabelStart']; ?>
M<?php echo $this->_tpl_vars['pageVars']['MLabelEnd']; ?>
</a>
            |
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['G']; ?>
"><?php echo $this->_tpl_vars['pageVars']['GLabelStart']; ?>
G<?php echo $this->_tpl_vars['pageVars']['GLabelEnd']; ?>
</a>
          </th>
          <th>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['cachePercentASC']; ?>
"><span class="glyphicon glyphicon-chevron-up" border="<?php echo $this->_tpl_vars['pageVars']['cachePercentASCImageBorder']; ?>
"></a>
              <?php echo $this->_tpl_vars['pageVars']['cachePercentLabelStart']; ?>
CACHE PERCENT<?php echo $this->_tpl_vars['pageVars']['cachePercentLabelEnd']; ?>

            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?<?php echo $this->_tpl_vars['pageVars']['url']['cachePercentDESC']; ?>
"><span class="glyphicon glyphicon-chevron-down" border="<?php echo $this->_tpl_vars['pageVars']['cachePercentDESCImageBorder']; ?>
"></a>
          </th></thead>
        <?php $_from = $this->_tpl_vars['pageVars']['availableDates']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date']):
?>
          <td>
          <?php if ($this->_tpl_vars['date']['minDate'] == $this->_tpl_vars['date']['maxDate']): ?>
            <a href='<?php echo $_SERVER['PHP_SELF']; ?>
?a=IPSummary&date=<?php echo $this->_tpl_vars['date']['date']; ?>
'><?php echo $this->_tpl_vars['date']['dateFormatted']; ?>
</a>
          <?php else: ?>
            <a href='<?php echo $_SERVER['PHP_SELF']; ?>
?minDate=<?php echo $this->_tpl_vars['date']['minDate']; ?>
&maxDate=<?php echo $this->_tpl_vars['date']['maxDate']; ?>
'><?php echo $this->_tpl_vars['date']['dateFormatted']; ?>
</a>
          <?php endif; ?>

          </td>
          <td><?php echo $this->_tpl_vars['date']['users']; ?>
</td>
          <td><?php echo $this->_tpl_vars['date']['hosts']; ?>
</td>
          <td>
          <?php if ($this->_tpl_vars['date']['minDate'] == $this->_tpl_vars['date']['maxDate']): ?>
            <a href="<?php echo $_SERVER['PHP_SELF']; ?>
?a=allsites&date=<?php echo $this->_tpl_vars['date']['date']; ?>
"><?php echo $this->_tpl_vars['date']['sites']; ?>
</a>
          <?php else: ?>
            <?php echo $this->_tpl_vars['date']['sites']; ?>

          <?php endif; ?>
          </td>
          <td><?php echo ((is_array($_tmp=$this->_tpl_vars['date']['bytes'])) ? $this->_run_mod_handler('bytesToHRF', true, $_tmp, $this->_tpl_vars['pageVars']['ByteUnit']) : bytesToHRF($_tmp, $this->_tpl_vars['pageVars']['ByteUnit'])); ?>
</td>
          <td><?php echo $this->_tpl_vars['date']['cachePercent']; ?>
%</td>
      </tr>  
      <?php endforeach; endif; unset($_from); ?>
      </table>