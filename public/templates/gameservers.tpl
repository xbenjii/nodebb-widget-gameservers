<link rel="stylesheet" href="/plugins/nodebb-widget-gameservers/css/gameservers.css" />

<!-- IF servers.length -->
<div class="table-responsive gameservers-servers-container">
<!-- ELSE -->
<div class="table-responsive gameservers-servers-container hidden">
<!-- ENDIF servers.length -->
    <table class="table">
        <thead>
            <tr>
                <th>Type</th>
                <th>Host:Port</th>
                <th>Map</th>
                <th>Players</th>
                <th>Actions <i class="fa fa-refresh gameservers-refresh-all-btn"></i></th>
            </tr>
        </thead>
        <tbody class="gameservers-servers">
        <!-- BEGIN servers -->
            <tr class="gameservers-server" data-key="{servers.key}">
                <td class="gameservers-server-type">{servers.type}</td>
                <td class="gameservers-server-host_port">{servers.host}:{servers.port}</td>

                <!-- IF servers.map -->
                <td class="gameservers-server-map">{servers.map}</td>
                <!-- ELSE -->
                <td class="gameservers-server-map">loading...</td>
                <!-- ENDIF servers.map -->

                <!-- IF servers.maxplayers -->
                <td class="gameservers-server-players_maxplayers">{servers.players}/{servers.maxplayers}</td>
                <!-- ELSE -->
                <td class="gameservers-server-players_maxplayers">loading...</td>
                <!-- ENDIF servers.maxplayers -->

                <td class="gameservers-server-actions"><i class="fa fa-refresh gameservers-refresh-btn"></i></td>
            </tr>
        <!-- END servers -->
        </tbody>
    </table>
</div>

<script src="/plugins/nodebb-widget-gameservers/js/gameservers.js"></script>
