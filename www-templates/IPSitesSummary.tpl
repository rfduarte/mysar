<nobr>[
<a href="{$smarty.server.PHP_SELF}?a=IPSummary&date={$pageVars.today}">&lt;&lt;&lt; Back to "Hosts and Users Summary for a Specific Day"</a>
|
<a href="{$pageVars.uri}">Refresh this page</a>
]</nobr>

<table class="table table-bordered"><tr><th>Sites Summary for a Specific Host, User and Date</th></tr></table>
<p>
<table class="table table-bordered">
  <tr><td style="font-size: 20px;">
    {if $pageVars.previousWeekID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.previousWeek}&usersID={$pageVars.previousWeekID}">&lt;&lt;</a>
	{/if}
    {if $pageVars.previousDateID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.previousDate}&usersID={$pageVars.previousDateID}">&lt;</a>
	{/if}
    {$pageVars.thisDateFormatted}
    {if $pageVars.nextDateID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.nextDate}&usersID={$pageVars.nextDateID}">&gt;</a>
	{/if}
    {if $pageVars.nextWeekID != ""}
      <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.nextWeek}&usersID={$pageVars.nextWeekID}">&gt;&gt;</a>
	{/if}
  </td></tr>
  <tr><td>
    <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&hostiplong={$pageVars.hostiplong}&date={$pageVars.today}&usersID={$pageVars.usersID}">[ Go to today ]</a>
  </td></tr>
</table>
<p>
<table class="table table-bordered">
  <tr><th colspan="2">Information box</th></tr>
  <form method="POST">
  <input type="hidden" name="hiddenSubmit" value="1">
  <input type="hidden" name="action" value="hostDescriptionUpdate">
{*
  <input type="hidden" name="a" value="{$pageVars.thisPage}">
  <input type="hidden" name="date" value="{$pageVars.date}">
  <input type="hidden" name="hostiplong" value="{$pageVars.hostiplong}">
  <input type="hidden" name="usersID" value="{$pageVars.usersID}">
*}
  <tr><td>Host Name</td><td style="text-align:left;">{$pageVars.host.hostname}</td></tr>
  <tr><td>Host IP</td><td style="text-align:left;">{$pageVars.host.ip}</td></tr>
  <tr><td>Host Description</td><td style="text-align:left;"><input type="text" name="thisValue" value="{$pageVars.host.description}"</td></tr>
  <tr><td>User Name</td><td style="text-align:left;">{$pageVars.user.authuser}</tr>
  </form>
</table>
<p>
      [
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.orderMethod}&OrderBy={$pageVars.orderBy}&ByteUnit={$pageVars.ByteUnit}&date={$pageVars.date}&hostiplong={$pageVars.hostiplong}">
          Set this view as the default
        </a>
      ]
  <table class="table table-bordered">
    <tr>
      <th></th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteASC}"><img border="{$pageVars.siteASCImageBorder}" src="images/up-arrow.gif"></a>
          {$pageVars.siteLabelStart}SITE{$pageVars.siteLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteDESC}"><img border="{$pageVars.siteDESCImageBorder}" src="images/down-arrow.gif"></a>
      </th>
      <th width="110">
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><img border="{$pageVars.bytesASCImageBorder}" src="images/up-arrow.gif"></a>
          {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><img border="{$pageVars.bytesDESCImageBorder}" src="images/down-arrow.gif"></a>
        <br>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.B}">{$pageVars.BLabelStart}B{$pageVars.BLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.K}">{$pageVars.KLabelStart}K{$pageVars.KLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.M}">{$pageVars.MLabelStart}M{$pageVars.MLabelEnd}</a>
        |
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.G}">{$pageVars.GLabelStart}G{$pageVars.GLabelEnd}</a>
      </th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentASC}"><img border="{$pageVars.cachePercentASCImageBorder}" src="images/up-arrow.gif"></a>
          {$pageVars.cachePercentLabelStart}CACHE PERCENT{$pageVars.cachePercentLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentDESC}"><img border="{$pageVars.cachePercentDESCImageBorder}" src="images/down-arrow.gif"></a>
      </th>
    </tr>
  {assign var=recordCount value="0"}
  {assign var=bytesTotal value="0"}
  {foreach from=$pageVars.summaryIPSites item=record}
  <tr>
    <td><a href="{$smarty.server.PHP_SELF}?a=details&date={$pageVars.date}&hostiplong={$pageVars.hostiplong}&sitesID={$record.sitesID}&usersID={$pageVars.usersID}"><b>Details</b></td>
    <td><a href="{$record.site}" target="_blank">{$record.site}</a></td>
    <td>{$record.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
    <td>{$record.cachePercent}%</td>
  </tr>
  {assign var=recordCount value=$recordCount+1}
  {assign var=bytesTotal value=$bytesTotal+$record.bytes}
  {/foreach}
    <tr>
      <th>TOTALS</th>
      <th>{$recordCount}</th>
      <th>{$bytesTotal|bytesToHRF:$pageVars.ByteUnit}</th>
      <th></th>
    </tr>
  </table>
  <p>
    <table class="table table-bordered">
    <tr><th colspan="7">Latest user activity</th></td>
    <tr>
      <th>TIME</th>
      <th>BYTES</th>
      <th>URL</th>
      <th>STATUS</th>
    </tr>
    {foreach from=$pageVars.latestUserActivity item=record}
    <tr>
      <td>{$record.time}</td>
      <td>{$record.bytes}</td>
      <td style="text-align: left"><a href="{$record.url}">{$record.url|string_trim:80:"..."}</a></td>
      <td style="text-align: left">{$record.resultCode}</td>
    </tr>
    {/foreach}
  </table>

