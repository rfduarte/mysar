<nobr>
[

<a href="{$pageVars.uri}">Refresh this page</a>

]</nobr>

[
        <a href="{$smarty.server.PHP_SELF}?a={$pageVars.thisPage}&action=setDefaultView&OrderMethod={$pageVars.OrderMethod}&OrderBy={$pageVars.OrderBy}&ByteUnit={$pageVars.ByteUnit}">
          Set this view as the default
        </a>
] 


<table class="table table-bordered"><tr><th>Daily Summary</th></tr></table>


	<table class="table table-bordered"> 

	<thead>

<tr>

	<th>
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.dateASCImageBorder}"></a>
              {$pageVars.dateLabelStart}DATE{$pageVars.dateLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.dateDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.dateDESCImageBorder}"></a>
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
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.sitesASCImageBorder}"></a>
              {$pageVars.sitesLabelStart}SITES{$pageVars.sitesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.sitesDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.sitesDESCImageBorder}"></a>
       </th>
       <th>
          
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesASC}"><span class="glyphicon glyphicon-chevron-up" border="{$pageVars.bytesASCImageBorder}"></a>
              {$pageVars.bytesLabelStart}TRAFFIC{$pageVars.bytesLabelEnd}
            <a href="{$smarty.server.PHP_SELF}?{$pageVars.url.bytesDESC}"><span class="glyphicon glyphicon-chevron-down" border="{$pageVars.bytesDESCImageBorder}"></a>
            
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
          </th></thead>
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
      </tr>  
      {/foreach}
      </table>
