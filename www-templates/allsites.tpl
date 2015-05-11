<nobr>[
<a href="{$smarty.server.PHP_SELF}?a=IPSummary&date={$pageVars.date}">&lt;&lt;&lt; Back to "Hosts and Users Summary for a Specific Day"</a>
|
<a href="{$pageVars.uri}">Refresh this page</a>
]</nobr>

<table class="table table-bordered"><tr><th>Sites Summary for a Specific Day</th></tr></table>
<p>
<table class="table table-bordered">
  <tr><td style="font-size: 20px;">
  <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&date={$pageVars.previousWeek}">&lt;&lt;</a>
  <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&date={$pageVars.previousDate}">&lt;</a>
  {$pageVars.thisDateFormatted}
  <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&date={$pageVars.nextDate}">&gt;</a>
  <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&date={$pageVars.nextWeek}">&gt;&gt;</a>
  </td></tr>
  <tr><td>
  <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&date={$pageVars.today}">[ Go to today ]</a>
  </td></tr>
  </table>
  <p>
      [
        <a href="{$pageVars.uri}&action=setDefaultView">
          Set this view as the default
        </a>
      ]
  <table class="table table-bordered">
    <tr>
      <th></th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.siteASCImageBorder}"></a>
          {$pageVars.siteLabelStart}SITE{$pageVars.siteLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.siteDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.siteDESCImageBorder}"></a>
      </th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.usersASCImageBorder}"></a>
          {$pageVars.usersLabelStart}USERS{$pageVars.usersLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.usersDESCImageBorder}"></a>
      </th>
      <th>
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.hostsASCImageBorder}"></a>
          {$pageVars.hostsLabelStart}HOSTS{$pageVars.hostsLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.hostsDESCImageBorder}"></a>
      </th>
      <th>
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
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.cachePercentASCImageBorder}"></a>
          {$pageVars.cachePercentLabelStart}CACHE PERCENT{$pageVars.cachePercentLabelEnd}
        <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.cachePercentDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.cachePercentDESCImageBorder}"></a>
      </th>
    </tr>
  {foreach from=$pageVars.allSites item=record}
  <tr>
    <td><a href="{$smarty.server.PHP_SELF}?a=siteusers&sitesID={$record.sitesID}&date={$pageVars.date}"><b>Details</b></a></td>
    <td style="text-align: left"><a href="{$record.site}" target="_blank">{$record.site|string_trim:80:"..."}</a></td>
    <td>{$record.users}</td>
    <td>{$record.hosts}</td>
    <td>{$record.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
    <td>{$record.cachePercent}%</td>
  </tr>
  {/foreach}
  </table>
