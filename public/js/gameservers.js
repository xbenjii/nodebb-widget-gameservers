$(function() {
    var apiHost = '/api/admin/widgets/gameservers';
    
    var addserver = function(e) {
		e.preventDefault();
        var $host = $('#gameservers-server-host');
        var $port = $('#gameservers-server-port');
        var $type = $('#gameservers-server-type');

        var server = {
            host: $host.val(),
            port: $port.val(),
            type: $type.val()
        };

        if (!server.host || !server.port || !server.type) {
            return app.alertError('All fields are required');
        }

        $.ajax({
            type: 'post',
            data: {
                _csrf: $('#csrf_token').val(),
                server: server
            },
            url: apiHost + '/addserver',
            cache: false
        }).done(function() {

            $host.val('');
            $port.val('');
            $type.val('');
        });

        return false;
    };

    var rmserver = function(e) {
		e.preventDefault();
        $.ajax({
            type: 'post',
            data: {
                _csrf: $('#csrf_token').val(),
                server: {
                    key: $(e.target).parents('.gameservers-server').attr('data-key')
                }
            },
            url: apiHost + '/rmserver',
            cache: false
        });
        return false;
    };
    
    var fetchallservers = function(e) {
		if (e && e.preventDefault)
            e.preventDefault();

        var dfd = $.ajax({
            type: 'get',
            url: apiHost + '/fetchallservers',
            cache: false
        });

        if (e) {
            return false;
        } else {
            return dfd;
        }
    };
    
    var fetchserver = function(e) {
        if (e && e.preventDefault)
            e.preventDefault();

        var key;
        if (e.target) {
            key = $(e.target).parents('.gameservers-server').attr('data-key');
        } else {
            key = e;
        }

        $.ajax({
            type: 'get',
            url: apiHost + '/fetchserver?key=' + key,
            cache: false
        });
        return false;
    };


    var onserverfetched = function(data) {
        if (!data || data.error) {
            console.warn(data && data.error);
            return;
        }

        var serverEl = $('.gameservers-servers').find('.gameservers-server[data-key="' + data.key + '"]');
        serverEl.find('.gameservers-server-map').text(data.map);
        serverEl.find('.gameservers-server-players_maxplayers').text( data.players.length + '/' + data.maxplayers);
    };

    var onserveradded = function(data) {

        if (!data || data.error) {
            console.warn(data && data.error);
            return;
        }

        $('.gameservers-servers-container').removeClass('hidden').show();

        $('.gameservers-servers').append(
            $('<tr />')
                .addClass('gameservers-server')
                .attr({
                    'data-key': data.key
                })
                .append('<td class="gameservers-server-type">' + data.type + '</td>')
                .append('<td class="gameservers-server-host_port">' + data.host + ':' + data.port + '</td>')
                .append('<td class="gameservers-server-map">' + (data.map || 'loading...') + '</td>')
                .append('<td class="gameservers-server-players_maxplayers">' + (data.maxplayers && Array.isArray(data.players) ? data.players.length + '/' + data.maxplayers : 'loading ...')+ '</td>')
                .append('<td class="gameservers-server-actions"><i class="fa fa-refresh gameservers-refresh-btn"></i>' + (app.isAdmin ? '&nbsp;<i class="fa fa-times gameservers-rm-btn"></i>' : '' ) + '</td>')
        );
        fetchserver(data.key);
    };

    var onserverrmed = function(data) {
        if (data) {
            $('.gameservers-server[data-key="' + data.key+ '"]').remove();

            if (! $('.gameservers-server').length) {
                $('.gameservers-servers-container').hide().addClass('hidden');
            }
        }
    };

    var onserversfetchedall = function(servers) {
		if (servers) {
            $.each(servers, function(key, server) {
                onserverfetched(server);
            });
        }
    };

    var $body = $('body');
    $body.on('click', '.gameservers-add-btn', addserver);

    socket.on('gameservers.serversfetchedall', onserversfetchedall);
    socket.on('gameservers.serverfetched', onserverfetched);
    socket.on('gameservers.serveradded', onserveradded);
    socket.on('gameservers.serverrmed', onserverrmed);

    var bind = function() {
        $('.gameservers-servers-container').each(function(i, el) {
			el = $(el);

			el.on('click', '.gameservers-rm-btn', rmserver);
			el.on('click', '.gameservers-refresh-btn', fetchserver);
			el.on('click', '.gameservers-refresh-all-btn', fetchallservers);
		});
    };

    bind();
    fetchallservers().done(onserversfetchedall);
}());
