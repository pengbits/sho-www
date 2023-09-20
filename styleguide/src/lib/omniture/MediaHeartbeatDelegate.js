// console.log('|media hbd| MediaHeartbeatDelegate loaded window.videojs=' + (typeof window.videojs))
document.addEventListener("video-player:created", function(e) {
	if(typeof(videojs) !== 'undefined'){
		console.log('|media hbd| video-player:created')

    
		// Create local references to the heartbeat classes
		var MediaHeartbeat = ADB.va.MediaHeartbeat;
		var MediaHeartbeatConfig = ADB.va.MediaHeartbeatConfig;
		var MediaHeartbeatDelegate = ADB.va.MediaHeartbeatDelegate;
    
		// Media Heartbeat initialization
		var mediaConfig = new MediaHeartbeatConfig();
		mediaConfig.trackingServer = "sho.hb.omtrdc.net";
		mediaConfig.channel = 'video';
		mediaConfig.debugLogging = false;
		mediaConfig.appVersion = "JS-2.8.0-D7QN";
		mediaConfig.ssl = true;
		mediaConfig.ovp = "brightcove";

    // https://videojs.com/guides/plugins/
    // this may need to be recoded as a class-based plugin so we can call dispose against the plugin instance
    // currently we see an error just after the player is disposed, when the plugin continues to run and assert against null dom references

    (function(window, document, vjs, undefined) {
			simpleAnalytics = function (options) {
        console.log('|media hbd| simpleAnalytics()')
        // console.log(this.el_, this.el_.firstChild)
				var myPlayer = this;
        window.simple = this;
				var firstplay = true;
				var videostarted = false;
				var mediaInfo;
				var customVideoMetadata;
				var mediaDelegate;
        var lastKnownPlaybackTime;

				// Use VAMS-derived metadata, not brightcove's
				var assetID             = this.getAttribute('data-asset-id');
        if(!assetID || !s) {console.log('| heartbeat | no assetId or no s var', assetID, s); return; }
        heartbeatLog(`found asset id:${assetID}`)

				var assetTitle          = this.getAttribute('data-asset-title');
				var assetType           = this.getAttribute('data-asset-type');
				var assetCreationDate   = this.getAttribute('data-asset-creation-date');
				mediaConfig.playerName  = this.getAttribute('data-player-name');

				if (myPlayer.readyState() < 1) {
					// loadedmetadata event not fired yet, wait for it
					myPlayer.one("loadedmetadata", onLoadedMetadata);
				}
				else {
					// assume metadata loaded
					onLoadedMetadata();
				}

				function heartbeatLog(message) {
					console.log('| heartbeat | ' + message)
				}

				function onLoadedMetadata() {
					heartbeatLog('loaded metadata');
					// Media Heartbeat Delegate
					mediaDelegate = new MediaHeartbeatDelegate();

					mediaInfo = MediaHeartbeat.createMediaObject(
						assetTitle,
						assetID,
						myPlayer.mediainfo.duration,
						MediaHeartbeat.StreamType.VOD);

					// Set standard video metadata
	        var standardVideoMetadata = {};
	        standardVideoMetadata[MediaHeartbeat.VideoMetadataKeys.ASSET_ID] = myPlayer.mediainfo.id;
	        standardVideoMetadata[MediaHeartbeat.VideoMetadataKeys.FIRST_AIR_DATE] = (assetCreationDate ? assetCreationDate : "unknown");
	        mediaInfo.setValue(MediaHeartbeat.MediaObjectKey.StandardVideoMetadata, standardVideoMetadata);

					setCustomVideoMetadata();
          
					// set mediaDelegate current playback time
          mediaDelegate.getCurrentPlaybackTime = function () {
            try {
              if (myPlayer) {
                lastKnownPlaybackTime = myPlayer.currentTime();
                // function could throw exception if view has changed
                return myPlayer.currentTime();
              }
            }
            catch (e) {
              heartbeatLog("getCurrentPlaybackTime fail, ending session at " + lastKnownPlaybackTime + "s");
              mediaDelegate.getCurrentPlaybackTime = function () { return lastKnownPlaybackTime; }
              myPlayer.mediaHeartbeat.trackSessionEnd();
              videoStarted = false;
            }
          };

					// create media Heartbeat instance
					myPlayer.mediaHeartbeat = new MediaHeartbeat(mediaDelegate, mediaConfig, s);
					videostarted = true;
				}

				function setCustomVideoMetadata() {
					customVideoMetadata = {
						videoPageName: s.getPreviousValue(s.pageName,'gpv_pn',''),
						videoUrl: location.origin+location.pathname+location.search,
						referenceId: myPlayer.mediainfo.referenceId,
						videoType: (assetType ? assetType : "unknown")
					};
				}

				function sessionStart(src) {
					// added this check due to some caching issues on page load
					if(!myPlayer || !myPlayer.mediaHeartbeat) return;

					myPlayer.mediaHeartbeat.trackSessionStart(mediaInfo, customVideoMetadata);
					myPlayer.mediaHeartbeat.trackPlay();
					firstplay = false;
					videostarted = true;
					heartbeatLog('session start, play (' + src + ')');
				}


				// Play
				myPlayer.on('play', function(e) {
					if (firstplay) {
						sessionStart('actual');
          } else if (videostarted) {
						myPlayer.mediaHeartbeat.trackPlay();
						heartbeatLog('play at ' + myPlayer.currentTime() + 's');
					}
				});

				// Pause
        myPlayer.on("pause", function () {
          myPlayer.mediaHeartbeat.trackPause();
					heartbeatLog('pause at ' + myPlayer.currentTime() + 's');
				});



				// timeupdate - for when 'play' fires too soon or not at all
				myPlayer.one("timeupdate", function () {
					if (firstplay) {
						sessionStart('timeupdate');
					}
				});

				// Seeked
				myPlayer.on("seeked", function () {
					// check for replay video
					if (!videostarted && myPlayer.currentTime() < 0.1) {
						sessionStart('replay');
					}
				});

				// Completed
				myPlayer.on("ended", function () {
					myPlayer.mediaHeartbeat.trackComplete();
					myPlayer.mediaHeartbeat.trackSessionEnd();
					videostarted = false;
					heartbeatLog('complete at ' + myPlayer.currentTime() + 's, session end');
				});
        
        // Unset listeners when player is destroyed (may not be working)
        myPlayer.on('dispose', function(){
          heartbeatLog('dispose event fired, unset listeners')
          myPlayer.off(['play','pause','timeupdate','seeked','ended'])
        })
			};

			// Register simpleAnalytics plugin with all players the first time player:created fires...
			if (videojs.registerPlugin && videojs.getPlugins) {
        if((videojs.getPlugins() || {}).simpleAnalytics) {
          console.log('|media hbd| simpleAnalytics already registered')
        } else {
          console.log('|media hbd| register simpleAnalytics plugin')
          videojs.registerPlugin("simpleAnalytics", simpleAnalytics);
        }
      }
		})(window, document, videojs);
    
    // ... but only invoke simpleAnalytics against the specific player instance that triggered the player:created event
    var players = videojs.players || videojs.getPlayers() || {}
    var instanceId = (e.data || {}).instanceId
    console.log('|media hbd| video-player:created', instanceId)
    if(instanceId){
      if(!!players[instanceId]){
        var player = players[instanceId]
        console.log('|media hbd| found player on vjs object')
      } else {
        console.log('|media hbd| missing player on vjs object for '+instanceId)
      }

			if (!!player && player.simpleAnalytics) player.simpleAnalytics();
		}
	}
});
