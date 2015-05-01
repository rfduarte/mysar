<nobr>
[
<a href="{$pageVars.uri}">Refresh this page</a>
]</nobr>

[
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.OrderMethod}&OrderBy={$pageVars.OrderBy}&ByteUnit={$pageVars.ByteUnit}">
          Set this view as the default
        </a>
] 

<p><p>          

<table class="table table-bordered"><tr><th>Daily Summary</th></tr></table>


	<table class="table table-bordered"> 

	<thead>

<tr>

	<th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateASC}"><img border="{$pageVars.dateASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.dateLabelStart}DATE{$pageVars.dateLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateDESC}"><img border="{$pageVars.dateDESCImageBorder}" src="images/down-arrow.gif"></a>
       </th>
          <th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersASC}"><img border="{$pageVars.usersASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.usersLabelStart}USERS{$pageVars.usersLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.usersDESC}"><img border="{$pageVars.usersDESCImageBorder}" src="images/down-arrow.gif"></a>
        </th>
          
	<th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsASC}"><img border="{$pageVars.hostsASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.hostsLabelStart}HOSTS{$pageVars.hostsLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.hostsDESC}"><img border="{$pageVars.hostsDESCImageBorder}" src="images/down-arrow.gif"></a>
       </th>
          <th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesASC}"><img border="{$pageVars.sitesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.sitesLabelStart}SITES{$pageVars.sitesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesDESC}"><img border="{$pageVars.sitesDESCImageBorder}" src="images/down-arrow.gif"></a>
       </th>
       <th>TRAFFIC</th>
          <th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><img border="{$pageVars.bytesASCImageBorder}" src="images/up-arrow.gif"></a>
              {$pageVars.bytesLabelStart}BYTES{$pageVars.bytesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><img border="{$pageVars.bytesDESCImageBorder}" src="images/down-arrow.gif"></a>
            
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
          </th></tr></thead>
        {foreach from=$pageVars.availableDates item=date}
          <td>
          {if $date.minDate == $date.maxDate}
            <a href='{$smarty.server.PHP_SELF}?a=IPSummary&date={$date.date}'>{$date.dateFormatted}</a>
          {else}
            <a href='{$smarty.server.PHP_SELF}?minDate={$date.minDate}&maxDate={$date.maxDate}'>{$date.dateFormatted}</a>
          {/if}

          </td>
          <td>{$date.users}</td>
          <td>{$date.hosts}</td>
          <td>
          {if $date.minDate == $date.maxDate}
            <a href="{$smarty.server.PHP_SELF}?a=allsites&date={$date.date}">{$date.sites}</a>
          {else}
            {$date.sites}
          {/if}
          </td>
          <td>{$date.bytes|bytesToHRF:$pageVars.ByteUnit}</td>
          <td>{$date.cachePercent}%</td>
        
      {/foreach}
      </table>
