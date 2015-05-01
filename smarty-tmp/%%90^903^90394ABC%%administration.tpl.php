<?php /* Smarty version 2.6.10, created on 2015-05-01 01:34:58
         compiled from administration.tpl */ ?>
    
	<table class="table table-bordered"><tr><th style="font-size: 20px";>Administration</th></tr></table>
      <p>
      <table class="table table-bordered">
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="keepHistoryDays">
        <tr>
          <td colspan="2">Automatically delete data older than <input type="text" name="thisValue" size="2" value="<?php echo $this->_tpl_vars['pageVars']['keepHistoryDays']; ?>
"> days</td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
      
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="squidLogPath">
        <tr>
          <td>Squid's access.log file path</td>
          <td><input type="text" name="thisValue" size="30" value="<?php echo $this->_tpl_vars['pageVars']['squidLogPath']; ?>
"></td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="resolveClients">
        <?php if ($this->_tpl_vars['pageVars']['resolveClients'] == 'enabled'): ?>
	<?php $this->assign('optionEnabled', 'selected'); ?>
	<?php $this->assign('optionDisabled', ""); ?>
	<?php else: ?>
	<?php $this->assign('optionEnabled', ""); ?>
	<?php $this->assign('optionDisabled', 'selected'); ?>
	<?php endif; ?>
        <tr>
          <td colspan="2">Client DNS resolving is
            <select name="thisValue">
              <option value="enabled" <?php echo $this->_tpl_vars['optionEnabled']; ?>
>enabled
              <option value="disabled" <?php echo $this->_tpl_vars['optionDisabled']; ?>
>disabled
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="mysarImporter">
        <?php if ($this->_tpl_vars['pageVars']['mysarImporter'] == 'enabled'): ?>
	<?php $this->assign('optionEnabled', 'selected'); ?>
	<?php $this->assign('optionDisabled', ""); ?>
	<?php else: ?>
	<?php $this->assign('optionEnabled', ""); ?>
	<?php $this->assign('optionDisabled', 'selected'); ?>
	<?php endif; ?>
        <tr>
          <td colspan="2">MySAR is
            <select name="thisValue">
              <option value="enabled" <?php echo $this->_tpl_vars['optionEnabled']; ?>
>enabled
              <option value="disabled" <?php echo $this->_tpl_vars['optionDisabled']; ?>
>disabled
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
       <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="topGrouping">
	<?php if ($this->_tpl_vars['pageVars']['topGrouping'] == 'Yearly'): ?>
		<?php $this->assign('optionYearly', 'selected'); ?>
	<?php elseif ($this->_tpl_vars['pageVars']['topGrouping'] == 'Monthly'): ?>
		<?php $this->assign('optionMonthly', 'selected'); ?>
	<?php elseif ($this->_tpl_vars['pageVars']['topGrouping'] == 'Weekly'): ?>
		<?php $this->assign('optionWeekly', 'selected'); ?>
	<?php else: ?>
		<?php $this->assign('optionDaily', 'selected'); ?>
	<?php endif; ?>
        <tr>
          <td colspan="2">Top grouping is
            <select name="thisValue">
              <option value="Yearly" <?php echo $this->_tpl_vars['optionYearly']; ?>
>Yearly
              <option value="Monthly" <?php echo $this->_tpl_vars['optionMonthly']; ?>
>Monthly
              <option value="Weekly" <?php echo $this->_tpl_vars['optionWeekly']; ?>
>Weekly
              <option value="Daily" <?php echo $this->_tpl_vars['optionDaily']; ?>
>Daily
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
      
      <tr><td colspan="2" style="text-align:justify;" width="200">
      Press this button to erase ALL data collected by mysar. This action is not reversible. Use this solve any weird problems, like reports not updating correctly etc.
      </td>
        <td colspan="3" style="text-align:center;">
          <input type="submit" value="Erase all statistics" onClick="my_confirm('Are you sure you want to erase ALL statistics?','<?php echo $this->_tpl_vars['pageVars']['uri']; ?>
&action=eraseAllStats')">
        </td>
      </tr>
      
      </table>
</div>      