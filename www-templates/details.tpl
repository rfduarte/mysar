<nobr>[
<a href="{$smarty.server.PHP_SELF}?a=IPSitesSummary&date={$pageVars.date}&hostiplong={$pageVars.hostiplong}&usersID={$pageVars.usersID}">&lt;&lt;&lt; Back to "Sites Summary for a Specific Host, User and Date"</a>
|
<a href="{$pageVars.uri}">Refresh this page</a>
]</nobr>

<table class="table table-bordered"><tr><th>Details for a Specific Host, User, Date and Site</th></tr></table>
<p>
<table class="table table-bordered"><tr><td>{$pageVars.thisDateFormatted}</td></tr></table>
<p>
<table class="table table-bordered">
  <tr><td>Host Name</td><td>{$pageVars.host.hostname}</td></tr>
  <tr><td>Host IP</td><td>{$pageVars.host.ip}</td></tr>
  <tr><td>Host Description</td><td>{$pageVars.host.description}</td></tr>
  <tr><td>User Name</td><td>{$pageVars.user.authuser}</tr>
  <tr><td>Site</td><td><a href="{$pageVars.site}" target="_blank">{$pageVars.site}</a></tr>
</table>
<p>
      [
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.orderMethod}&OrderBy={$pageVars.orderBy}&ByteUnit={$pageVars.ByteUnit}&date={$pageVars.date}&ipID={$pageVars.ipID}&siteID={$pageVars.siteID}">
          Set this view as the default
        </a>
      ]
  <table class="table table-bordered">
    <tr>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.timeASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.timeASCImageBorder}"></a>
          {$pageVars.timeLabelStart}TIME{$pageVars.timeLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.timeDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.timeDESCImageBorder}"></a>
      </th>
      <th width="110">
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.bytesASCImageBorder}"></a>
          {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.bytesDESCImageBorder}"></a>
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
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.urlASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.urlASCImageBorder}"></a>
          {$pageVars.urlLabelStart}URL{$pageVars.urlLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.urlDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.urlDESCImageBorder}"></a>
      </th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.statusASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.statusASCImageBorder}"></a>
          {$pageVars.statusLabelStart}STATUS{$pageVars.statusLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.statusDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.statusDESCImageBorder}"></a>
      </th>
    </tr>
  {foreach from=$pageVars.siteDetails item=record}
  <tr>
    <td>{$record.time}</td>
    <td>{$record.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
    <td style="text-align: left;"><a href="{$record.url}">{$record.url|string_trim:80:"..."}</a></td>
    <td style="text-align: left;">{$record.resultCode}</td>
  </tr>
  {/foreach}
  </table>
