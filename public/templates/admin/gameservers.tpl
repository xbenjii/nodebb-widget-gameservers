<link rel="stylesheet" href="/plugins/nodebb-widget-gameservers/css/gameservers.css" />

<h4>Servers</h4>

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

					<td class="gameservers-server-actions"><i class="fa fa-refresh gameservers-refresh-btn"></i>&nbsp;<i class="fa fa-times gameservers-rm-btn"></i></td>
				</tr>
				<!-- END servers -->
			</tbody>
		</table>
	</div>
	<div class="row text-center">
		<div class="form-inline" role="form">
			<div class="col-md-6">
				<div class="form-group">
					<label for="gameservers-server-host">Host:</label>
					<input type="text" class="form-control" name="gameservers-server-host" id="gameservers-server-host"  placeholder="host i.e 123.456.789.012" />
				</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label for="gameservers-server-port">Port:</label>
					<input type="text" class="form-control" name="gameservers-server-port" id="gameservers-server-port" placeholder="port i.e 28960" />
				</div>
			</div>
			<div class="form-group">
				<label class="sr-only" for="gameservers-server-type">type</label>
				<div class="col-md-8">
					<select class="form-control text-center gamespace" name="gameservers-server-type" id="gameservers-server-type">
						<option value="ageofchivalry">Age of Chivalry</option>
						<option value="aoe2">Age of Empires 2</option>
						<option value="alienarena">Alien Arena</option>
						<option value="alienswarm">Alien Swarm</option>
						<option value="avp2">Aliens vs Predator 2</option>
						<option value="avp2010">Aliens vs Predator 2010 </option>
						<option value="americasarmy">America's Army</option>
						<option value="americasarmy2">America's Army 2</option>
						<option value="americasarmy3">America's Army 3</option>
						<option value="americasarmypg">America's Army: Proving Grounds</option>
						<option value="arma">ArmA Armed Assault 1</option>
						<option value="arma2">ArmA Armed Assault 2</option>
						<option value="arma3">ArmA Armed Assault 3</option>
						<option value="armagetton">Armagetron</option>
						<option value="baldursgate">Baldur's Gate</option>
						<option value="bf1942">Battlefield 1942</option>
						<option value="bfv">Battlefield Vietnam</option>
						<option value="bf2">Battlefield 2</option>
						<option value="bf2142">Battlefield 2142</option>
						<option value="bfbc2">Battlefield: Bad Company 2</option>
						<option value="bf3">Battlefield 3</option>
						<option value="bf4">Battlefield 4</option>
						<option value="breach">Breach</option>
						<option value="breed">Breed</option>
						<option value="brink">Brink</option>
						<option value="buildandshoot">Build and Shoot</option>
						<option value="cod">Call of Duty</option>
						<option value="coduo">Call of Duty: United Offensive</option>
						<option value="cod2">Call of Duty 2</option>
						<option value="cod3">Call of Duty 3</option>
						<option value="cod4">Call of Duty 4: Modern Warfare</option>
						<option value="codwaw">Call of Duty: World at War</option>
						<option value="codmw2">Call of Duty: Modern Warfare 2</option>
						<option value="codmw3">Call of Duty: Modern Warfare 3</option>
						<option value="callofjuarez">Call of Juarez</option>
						<option value="chaser">Chaser</option>
						<option value="chrome">Chrome</option>
						<option value="codenameeagle">Codename Eagle</option>
						<option value="commandos3">Commandos 3: Destination Berlin</option>
						<option value="cacrenegade">Command and Conquer: Renegade</option>
						<option value="contactjack">Contact J.A.C.K.</option>
						<option value="cs16">Counter-Strike 1.6</option>
						<option value="cscz">Counter-Strike: Condition Zero</option>
						<option value="css">Counter-Strike: Source</option>
						<option value="csgo">Counter-Strike: Global Offensive</option>
						<option value="crossracing">Cross Racing Championship</option>
						<option value="crysis">Crysis</option>
						<option value="crysiswars">Crysis Wars</option>
						<option value="crysis2">Crysis 2</option>
						<option value="daikatana">Daikatana</option>
						<option value="dmomam">Dark Messiah of Might and Magic</option>
						<option value="darkesthour">Darkest Hour</option>
						<option value="dayz">DayZ</option>
						<option value="deadlydozenpt">Deadly Dozen: Pacific Theater</option>
						<option value="dh2005">Deer Hunter 2005</option>
						<option value="descent3">Descent 3</option>
						<option value="deusex">Deus Ex</option>
						<option value="devastation">Devastation</option>
						<option value="dinodday">Dino D-Day</option>
						<option value="dirttrackracing2">Dirt Track Racing 2</option>
						<option value="dod">Day of Defeat</option>
						<option value="dods">Day of Defeat: Source</option>
						<option value="doom3">Doom 3</option>
						<option value="dota2">DOTA 2</option>
						<option value="drakan">Drakan</option>
						<option value="etqw">Enemy Territory Quake Wars</option>
						<option value="fear">F.E.A.R.</option>
						<option value="f12002">F1 2002</option>
						<option value="f1c9902">F1 Challenge 99-02</option>
						<option value="farcry">Far Cry</option>
						<option value="farcry2">Far Cry 2</option>
						<option value="fortressforever">Fortress Forever</option>
						<option value="flashpoint">Flashpoint</option>
						<option value="ffow">Frontlines: Fuel of War</option>
						<option value="garrysmod">Garry's Mod</option>
						<option value="graw">Ghost Recon: Advanced Warfighter</option>
						<option value="graw2">Ghost Recon: Advanced Warfighter 2</option>
						<option value="giantscitizenkabuto">Giants: Citizen Kabuto</option>
						<option value="globaloperations">Global Operations</option>
						<option value="gore">Gore</option>
						<option value="gunmanchronicles">Gunman Chronicles</option>
						<option value="hldm">Half-Life 1 Deathmatch</option>
						<option value="hl2dm">Half-Life 2 Deathmatch</option>
						<option value="halo">Halo</option>
						<option value="halo2">Halo 2</option>
						<option value="heretic2">Heretic 2</option>
						<option value="hexenworld">Hexen World</option>
						<option value="hidden">The Hidden: Source</option>
						<option value="had2">Hidden and Dangerous 2</option>
						<option value="homefront">Homefront</option>
						<option value="homeworld2">Homeworld 2</option>
						<option value="igi2">IGI-2: Covert Strike</option>
						<option value="il2">IL-2 Sturmovik</option>
						<option value="insurgency">Insurgency</option>
						<option value="ironstorm">Iron Storm</option>
						<option value="jamesbondnightfire">James Bond: Nightfire</option>
						<option value="jc2mp">Just Cause 2 Multiplayer</option>
						<option value="killingfloor">Killing Floor</option>
						<option value="kingpin">Kingpin: Life of Crime</option>
						<option value="kisspc">KISS Psycho Circus</option>
						<option value="kzmod">KzMod</option>
						<option value="left4dead">Left 4 Dead</option>
						<option value="left4dead2">Left 4 Dead 2</option>
						<option value="m2mp">Mafia 2 Multiplayer</option>
						<option value="mohaa">Medal of Honor: Allied Assault</option>
						<option value="mohpa">Medal of Honor: Pacific Assault</option>
						<option value="mohab">Medal of Honor: Airborne</option>
						<option value="mohsh">Medal of Honor: Spearhead</option>
						<option value="mohbt">Medal of Honor: Breakthrough</option>
						<option value="moh2010">Medal of Honor 2010</option>
						<option value="mohwf">Medal of Honor: Warfighter</option>
						<option value="minecraft">Minecraft</option>
						<option value="minecraftping">Minecraft Ping</option>
						<option value="mnc">Monday Night Combat</option>
						<option value="mtavc">Multi Theft Auto: Vice City</option>
						<option value="mtasa">Multi Theft Auto: San Andreas</option>
						<option value="mumble">Mumble</option>
						<option value="mumbleping">Mumble (Ping)</option>
						<option value="mutantfactions">Mutant Factions</option>
						<option value="nascarthunder2004">Nascar Thunder 2004</option>
						<option value="netpanzer">netPanzer</option>
						<option value="nmrih">No More Room in Hell</option>
						<option value="ns">Natural Selection</option>
						<option value="ns2">Natural Selection 2</option>
						<option value="nfshp2">Need for Speed: Hot Pursuit 2</option>
						<option value="nab">Nerf Arena Blast</option>
						<option value="nwn">Neverwinter Nights</option>
						<option value="nwn2">Neverwinter Nights 2</option>
						<option value="nexuiz">Nexuiz</option>
						<option value="nitrofamily">Nitro Family</option>
						<option value="nolf">No One Lives Forever</option>
						<option value="nolf2">No One Lives Forever 2</option>
						<option value="nucleardawn">Nuclear Dawn</option>
						<option value="openarena">OpenArena</option>
						<option value="operationflashpoint">Operation Flashpoint</option>
						<option value="painkiller">Painkiller</option>
						<option value="postal2">Postal 2</option>
						<option value="prey">Prey</option>
						<option value="quake1">Quake 1: QuakeWorld</option>
						<option value="quake2">Quake 2</option>
						<option value="quake3">Quake 3: Arena</option>
						<option value="quake4">Quake 4</option>
						<option value="ragdollkungfu">Rag Doll Kung Fu</option>
						<option value="r6">Rainbow Six</option>
						<option value="r6rouguespear">Rainbow Six 2: Rogue Spear</option>
						<option value="r6ravenshield">Rainbow Six 3: Raven Shield</option>
						<option value="rallisportchallenge">RalliSport Challenge</option>
						<option value="rallymasters">Rally Masters</option>
						<option value="redorchestra">Red Orchestra</option>
						<option value="redorchestraost">Red Orchestra: Ostfront 41-45</option>
						<option value="redorchastra2">Red Orchestra 2</option>
						<option value="redline">Redline</option>
						<option value="rtcw">Return to Castle Wolfenstein</option>
						<option value="ricochet">Ricochet</option>
						<option value="riseofnations">Rise of Nations</option>
						<option value="rune">Rune</option>
						<option value="rust">Rust</option>
						<option value="samp">San Andreas Multiplayer</option>
						<option value="ss">Serious Sam</option>
						<option value="ss2">Serious Sam 2</option>
						<option value="shatteredhorizon">Shattered Horizon</option>
						<option value="ship">The Ship</option>
						<option value="shogo">Shogo</option>
						<option value="shootmania">Shootmania</option>
						<option value="sin">SiN</option>
						<option value="sinep">SiN Episodes</option>
						<option value="soldat">Soldat</option>
						<option value="sof">Soldier of Fortune</option>
						<option value="sof2">Soldier of Fortune 2</option>
						<option value="stalker">S.T.A.L.K.E.R.</option>
						<option value="stbc">Star Trek: Bridge Commander</option>
						<option value="stvef">Star Trek: Voyager - Elite Force</option>
						<option value="stvef2">Star Trek: Voyager - Elite Force 2</option>
						<option value="swbf">Star Wars: Battlefront</option>
						<option value="swbf2">Star Wars: Battlefront 2</option>
						<option value="swjk">Star Wars: Jedi Knight</option>
						<option value="swjk2">Star Wars: Jedi Knight 2</option>
						<option value="swrc">Star Wars: Republic Commando</option>
						<option value="starbound">Starbound</option>
						<option value="suicidesurvival">Suicide Survival</option>
						<option value="swat4">SWAT 4</option>
						<option value="svencoop">Sven Coop</option>
						<option value="synergy">Synergy</option>
						<option value="tacticalops">Tactical Ops</option>
						<option value="teamfactor">Team Factor</option>
						<option value="tfc">Team Fortress Classic</option>
						<option value="tf2">Team Fortress 2</option>
						<option value="teamspeak2">Teamspeak 2</option>
						<option value="teamspeak3">Teamspeak 3</option>
						<option value="terminus">Terminus</option>
						<option value="terraria">Terraria</option>
						<option value="thps3">Tony Hawk's Pro Skater 3</option>
						<option value="thps4">Tony Hawk's Pro Skater 4</option>
						<option value="thu2">Tony Hawk's Underground 2</option>
						<option value="trackmania2">Trackmania 2</option>
						<option value="trackmaniaforever">Trackmania Forever</option>
						<option value="tremulous">Tremulous</option>
						<option value="tribesvengeance">Tribes: Vengeance</option>
						<option value="tron20">Tron 2.0 </option>
						<option value="turok2">Turok 2</option>
						<option value="universalcombat">Universal Combat</option>
						<option value="unreal">Unreal</option>
						<option value="ut">Unreal Tournament</option>
						<option value="ut2003">Unreal Tournament 2003</option>
						<option value="ut2004">Unreal Tournament 2004</option>
						<option value="ut3">Unreal Tournament 3</option>
						<option value="urbanterror">Urban Terror</option>
						<option value="v9supercar">V8 Supercar Challenge</option>
						<option value="ventrilo">Ventrilo</option>
						<option value="vietcong">Vietcong</option>
						<option value="vietcong2">Vietcong 2 </option>
						<option value="warsow">Warsow</option>
						<option value="wheeloftime">Wheel of Time</option>
						<option value="wolfenstein2009">Wolfenstein 2009</option>
						<option value="wolfensteinet">Wolfenstein: Enemy Territory</option>
						<option value="xpandrally">Xpand Rally</option>
						<option value="zombiemaster">Zombie Master</option>
						<option value="zps">Zombie Panic: Source</option>
					</select>
				</div>
			</div>
		</div>

		<div class="gameservers-toolbar">
			<button class="gameservers-add-btn btn btn-default">
				Add Server
			</button>
		</div>
	</div>
	<script src="/plugins/nodebb-widget-gameservers/js/gameservers.js"></script>

