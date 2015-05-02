    
	<table class="table table-bordered"><tr><th>Administration</th></tr></table>
      <p>
      <table class="table table-bordered">
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="keepHistoryDays">
        <tr>
          <td colspan="2">Automatically delete data older than <input type="text" name="thisValue" size="2" value="{$pageVars.keepHistoryDays}"> days</td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
      
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="squidLogPath">
        <tr>
          <td>Squid's access.log file path</td>
          <td><input type="text" name="thisValue" size="30" value="{$pageVars.squidLogPath}"></td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="resolveClients">
        {if $pageVars.resolveClients=="enabled"}
	{assign var="optionEnabled" value="selected"}
	{assign var="optionDisabled" value=""}
	{else}
	{assign var="optionEnabled" value=""}
	{assign var="optionDisabled" value="selected"}
	{/if}
        <tr>
          <td colspan="2">Client DNS resolving is
            <select name="thisValue">
              <option value="enabled" {$optionEnabled}>enabled
              <option value="disabled" {$optionDisabled}>disabled
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
        <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="mysarImporter">
        {if $pageVars.mysarImporter=="enabled"}
	{assign var="optionEnabled" value="selected"}
	{assign var="optionDisabled" value=""}
	{else}
	{assign var="optionEnabled" value=""}
	{assign var="optionDisabled" value="selected"}
	{/if}
        <tr>
          <td colspan="2">MySAR is
            <select name="thisValue">
              <option value="enabled" {$optionEnabled}>enabled
              <option value="disabled" {$optionDisabled}>disabled
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
       <form method="POST">
        <input type="hidden" name="hiddenSubmit" value="1">
        <input type="hidden" name="configName" value="topGrouping">
	{if $pageVars.topGrouping=="Yearly"}
		{assign var="optionYearly" value="selected"}
	{elseif $pageVars.topGrouping=="Monthly"}
		{assign var="optionMonthly" value="selected"}
	{elseif $pageVars.topGrouping=="Weekly"}
		{assign var="optionWeekly" value="selected"}
	{else}
		{assign var="optionDaily" value="selected"}
	{/if}
        <tr>
          <td colspan="2">Top grouping is
            <select name="thisValue">
              <option value="Yearly" {$optionYearly}>Yearly
              <option value="Monthly" {$optionMonthly}>Monthly
              <option value="Weekly" {$optionWeekly}>Weekly
              <option value="Daily" {$optionDaily}>Daily
            </select>
          </td>
          <td><input type="submit" name="submit" value="Change value"></td>
        </tr>
        </form>
      
      <tr><td colspan="2" style="text-align:justify;" width="200">
      Press this button to erase ALL data collected by mysar. This action is not reversible. Use this solve any weird problems, like reports not updating correctly etc.
      </td>
        <td colspan="3" style="text-align:center;">
          <input type="submit" value="Erase all statistics" onClick="my_confirm('Are you sure you want to erase ALL statistics?','{$pageVars.uri}&action=eraseAllStats')">
        </td>
      </tr>
      
      </table>
</div>      
