
add_library(engine SHARED
    ${SE_SRC_PATH}/engine/socketcreator.cpp
    ${SE_SRC_PATH}/engine/clientframe.cpp
    ${SE_SRC_PATH}/engine/decal_clip.cpp
    ${SE_SRC_PATH}/engine/demofile.cpp
    ${SE_SRC_PATH}/engine/DevShotGenerator.cpp
    ${SE_SRC_PATH}/engine/OcclusionSystem.cpp
    ${SE_SRC_PATH}/engine/tmessage.cpp
    ${SE_SRC_PATH}/engine/baseclient.cpp
    ${SE_SRC_PATH}/engine/baseclientstate.cpp
    ${SE_SRC_PATH}/engine/cbenchmark.cpp
    ${SE_SRC_PATH}/engine/console.cpp
    ${SE_SRC_PATH}/engine/render_pch.cpp
    ${SE_SRC_PATH}/engine/decals.cpp
    ${SE_SRC_PATH}/engine/disp.cpp
    ${SE_SRC_PATH}/engine/disp_interface.cpp
    ${SE_SRC_PATH}/engine/disp_mapload.cpp
    ${SE_SRC_PATH}/engine/gl_draw.cpp
    ${SE_SRC_PATH}/engine/gl_rsurf.cpp
    ${SE_SRC_PATH}/engine/gl_shader.cpp
    ${SE_SRC_PATH}/engine/l_studio.cpp
    ${SE_SRC_PATH}/engine/matsys_interface.cpp
    ${SE_SRC_PATH}/engine/modelloader.cpp
    ${SE_SRC_PATH}/engine/Overlay.cpp
    ${SE_SRC_PATH}/engine/r_decal.cpp
    ${SE_SRC_PATH}/engine/r_linefile.cpp
    ${SE_SRC_PATH}/engine/server_pch.cpp
    ${SE_SRC_PATH}/engine/sv_ipratelimit.cpp
    ${SE_SRC_PATH}/engine/sv_rcon.cpp
    ${SE_SRC_PATH}/engine/sv_steamauth.cpp
    ${SE_SRC_PATH}/engine/sv_uploaddata.cpp
    ${SE_SRC_PATH}/engine/sv_uploadgamestats.cpp
    ${SE_SRC_PATH}/engine/vengineserver_impl.cpp
    ${SE_SRC_PATH}/engine/sv_main.cpp
    ${SE_SRC_PATH}/engine/sv_client.cpp
    ${SE_SRC_PATH}/engine/sv_ents_write.cpp
    ${SE_SRC_PATH}/engine/sv_filter.cpp
    ${SE_SRC_PATH}/engine/sv_framesnapshot.cpp
    ${SE_SRC_PATH}/engine/sv_log.cpp
    ${SE_SRC_PATH}/engine/sv_packedentities.cpp
    ${SE_SRC_PATH}/engine/sv_plugin.cpp
    ${SE_SRC_PATH}/engine/sv_precache.cpp
    ${SE_SRC_PATH}/engine/sv_redirect.cpp
    ${SE_SRC_PATH}/engine/sv_remoteaccess.cpp
    ${SE_SRC_PATH}/engine/baseautocompletefilelist.cpp
    ${SE_SRC_PATH}/engine/baseserver.cpp
    ${SE_SRC_PATH}/engine/bitbuf_errorhandler.cpp
    ${SE_SRC_PATH}/engine/../public/blockingudpsocket.cpp
    ${SE_SRC_PATH}/engine/../public/bsptreedata.cpp
    ${SE_SRC_PATH}/engine/../public/builddisp.cpp
    ${SE_SRC_PATH}/engine/changeframelist.cpp
    ${SE_SRC_PATH}/engine/checksum_engine.cpp
    ${SE_SRC_PATH}/engine/ccs.cpp
    ${SE_SRC_PATH}/engine/clockdriftmgr.cpp
    ${SE_SRC_PATH}/engine/cl_check_process.cpp
    ${SE_SRC_PATH}/engine/cmd.cpp
    ${SE_SRC_PATH}/engine/cmodel.cpp
    ${SE_SRC_PATH}/engine/cmodel_bsp.cpp
    ${SE_SRC_PATH}/engine/cmodel_disp.cpp
    ${SE_SRC_PATH}/engine/../public/collisionutils.cpp
    ${SE_SRC_PATH}/engine/common.cpp
    ${SE_SRC_PATH}/engine/../public/crtmemdebug.cpp
    ${SE_SRC_PATH}/engine/cvar.cpp
    ${SE_SRC_PATH}/engine/../public/disp_common.cpp
    ${SE_SRC_PATH}/engine/disp_defs.cpp
    ${SE_SRC_PATH}/engine/disp_helpers.cpp
    ${SE_SRC_PATH}/engine/../public/disp_powerinfo.cpp
    ${SE_SRC_PATH}/engine/../public/dispcoll_common.cpp
    ${SE_SRC_PATH}/engine/DownloadListGenerator.cpp
    ${SE_SRC_PATH}/engine/dt.cpp
    ${SE_SRC_PATH}/engine/dt_common_eng.cpp
    ${SE_SRC_PATH}/engine/dt_encode.cpp
    ${SE_SRC_PATH}/engine/dt_instrumentation.cpp
    ${SE_SRC_PATH}/engine/dt_instrumentation_server.cpp
    ${SE_SRC_PATH}/engine/dt_localtransfer.cpp
    ${SE_SRC_PATH}/engine/../public/dt_recv.cpp
    ${SE_SRC_PATH}/engine/dt_recv_decoder.cpp
    ${SE_SRC_PATH}/engine/dt_recv_eng.cpp
    ${SE_SRC_PATH}/engine/../public/dt_send.cpp
    ${SE_SRC_PATH}/engine/dt_send_eng.cpp
    ${SE_SRC_PATH}/engine/dt_stack.cpp
    ${SE_SRC_PATH}/engine/dt_test.cpp
    ${SE_SRC_PATH}/engine/../public/dt_utlvector_common.cpp
    ${SE_SRC_PATH}/engine/../public/dt_utlvector_recv.cpp
    ${SE_SRC_PATH}/engine/../public/dt_utlvector_send.cpp
    ${SE_SRC_PATH}/engine/enginesingleuserfilter.cpp
    ${SE_SRC_PATH}/engine/enginestats.cpp
    ${SE_SRC_PATH}/engine/enginethreads.cpp
    ${SE_SRC_PATH}/engine/enginetrace.cpp
    ${SE_SRC_PATH}/engine/filesystem_engine.cpp
    ${SE_SRC_PATH}/engine/../public/filesystem_helpers.cpp
    ${SE_SRC_PATH}/engine/../public/filesystem_init.cpp
    ${SE_SRC_PATH}/engine/filetransfermgr.cpp
    ${SE_SRC_PATH}/engine/GameEventManager.cpp
    ${SE_SRC_PATH}/engine/GameEventManagerOld.cpp
    ${SE_SRC_PATH}/engine/gametrace_engine.cpp
    ${SE_SRC_PATH}/engine/hltvclient.cpp
    ${SE_SRC_PATH}/engine/hltvclientstate.cpp
    ${SE_SRC_PATH}/engine/hltvdemo.cpp
    ${SE_SRC_PATH}/engine/hltvserver.cpp
    ${SE_SRC_PATH}/engine/hltvtest.cpp
    ${SE_SRC_PATH}/engine/host.cpp
    ${SE_SRC_PATH}/engine/host_cmd.cpp
    ${SE_SRC_PATH}/engine/host_listmaps.cpp
    ${SE_SRC_PATH}/engine/host_phonehome.cpp
    ${SE_SRC_PATH}/engine/host_state.cpp
    ${SE_SRC_PATH}/engine/initmathlib.cpp
    ${SE_SRC_PATH}/engine/../common/language.cpp
    ${SE_SRC_PATH}/engine/LocalNetworkBackdoor.cpp
    ${SE_SRC_PATH}/engine/../public/lumpfiles.cpp
    ${SE_SRC_PATH}/engine/MapReslistGenerator.cpp
    ${SE_SRC_PATH}/engine/materialproxyfactory.cpp
    ${SE_SRC_PATH}/engine/mem_fgets.cpp
    ${SE_SRC_PATH}/engine/mod_vis.cpp
    ${SE_SRC_PATH}/engine/ModelInfo.cpp
    ${SE_SRC_PATH}/engine/net_chan.cpp
    ${SE_SRC_PATH}/engine/net_synctags.cpp
    ${SE_SRC_PATH}/engine/net_ws.cpp
    ${SE_SRC_PATH}/engine/net_ws_queued_packet_sender.cpp
    ${SE_SRC_PATH}/engine/../common/netmessages.cpp
    ${SE_SRC_PATH}/engine/../common/steamid.cpp
    ${SE_SRC_PATH}/engine/networkstringtable.cpp
    ${SE_SRC_PATH}/engine/NetworkStringTableItem.cpp
    ${SE_SRC_PATH}/engine/networkstringtableserver.cpp
    ${SE_SRC_PATH}/engine/../public/networkvar.cpp
    ${SE_SRC_PATH}/engine/packed_entity.cpp
    ${SE_SRC_PATH}/engine/pure_server.cpp
    ${SE_SRC_PATH}/engine/pr_edict.cpp
    ${SE_SRC_PATH}/engine/precache.cpp
    ${SE_SRC_PATH}/engine/quakedef.cpp
    ${SE_SRC_PATH}/engine/randomstream.cpp
    ${SE_SRC_PATH}/engine/../common/randoverride.cpp
    ${SE_SRC_PATH}/engine/../public/registry.cpp
    ${SE_SRC_PATH}/engine/engine_replay_int.cpp
    ${SE_SRC_PATH}/engine/replay_internal.cpp
    ${SE_SRC_PATH}/engine/replaydemo.cpp
    ${SE_SRC_PATH}/engine/replayserver.cpp
    ${SE_SRC_PATH}/engine/../public/sentence.cpp
    ${SE_SRC_PATH}/engine/sound_shared.cpp
    ${SE_SRC_PATH}/engine/spatialpartition.cpp
    ${SE_SRC_PATH}/engine/staticpropmgr.cpp
    ${SE_SRC_PATH}/engine/../public/studio.cpp
    ${SE_SRC_PATH}/engine/sys_dll.cpp
    ${SE_SRC_PATH}/engine/sys_dll2.cpp
    ${SE_SRC_PATH}/engine/sys_engine.cpp
    ${SE_SRC_PATH}/engine/sys_linuxwind.cpp #[$POSIX]
    ${SE_SRC_PATH}/engine/testscriptmgr.cpp
    ${SE_SRC_PATH}/engine/traceinit.cpp
    ${SE_SRC_PATH}/engine/../public/vallocator.cpp
    ${SE_SRC_PATH}/engine/voiceserver_impl.cpp
    ${SE_SRC_PATH}/engine/vprof_engine.cpp
    ${SE_SRC_PATH}/engine/vprof_record.cpp
    ${SE_SRC_PATH}/engine/world.cpp
    ${SE_SRC_PATH}/engine/../public/XZip.cpp
    ${SE_SRC_PATH}/engine/../public/XUnzip.cpp
    ${SE_SRC_PATH}/engine/zone.cpp
    ${SE_SRC_PATH}/engine/cheatcodes.cpp
    ${SE_SRC_PATH}/engine/../public/editor_sendcommand.cpp
    ${SE_SRC_PATH}/engine/keys.cpp
    ${SE_SRC_PATH}/engine/networkstringtableclient.cpp
    ${SE_SRC_PATH}/engine/../public/scratchpad3d.cpp
    ${SE_SRC_PATH}/engine/servermsghandler.cpp
    ${SE_SRC_PATH}/engine/../common/SourceAppInfo.cpp
    ${SE_SRC_PATH}/engine/snd_io.cpp
    ${SE_SRC_PATH}/engine/EngineSoundServer.cpp
    ${SE_SRC_PATH}/engine/audio/private/voice_wavefile.cpp
    ${SE_SRC_PATH}/engine/audio/private/vox.cpp
    


    )

if(SE_POSIX)
    target_sources(engine PRIVATE
        ${SE_SRC_PATH}/engine/audio/private/snd_posix.cpp
        )
endif()
if(SE_WIN32)
    target_sources(engine PRIVATE
        ${SE_SRC_PATH}/engine/audio/private/snd_dev_direct.cpp
        ${SE_SRC_PATH}/engine/audio/private/snd_dev_wave.cpp
        ${SE_SRC_PATH}/engine/audio/private/voice_mixer_controls.cpp
        ${SE_SRC_PATH}/engine/audio/private/voice_record_dsound.cpp
        )
endif()
if(SE_OSX)
    target_sources(engine PRIVATE
            ${SE_SRC_PATH}/engine/audio/private/snd_dev_openal.cpp
            ${SE_SRC_PATH}/engine/audio/private/snd_dev_mac_audioqueue.cpp
            ${SE_SRC_PATH}/engine/audio/private/voice_record_mac_audioqueue.cpp
            )
endif()
if(SE_SDL AND NOT SE_OSX)
    target_sources(engine PRIVATE
            ${SE_SRC_PATH}/engine/audio/private/snd_dev_sdl.cpp
            )
endif()

add_library(engine_src_dedicated INTERFACE)
target_sources(engine_src_dedicated INTERFACE
        ${SE_SRC_PATH}/engine/cl_null.cpp
    )

add_library(engine_src_client INTERFACE)
target_sources(engine_src_client INTERFACE
    ${SE_SRC_PATH}/engine/client_pch.cpp
    ${SE_SRC_PATH}/engine/cl_rcon.cpp
    ${SE_SRC_PATH}/engine/r_efx.cpp
    ${SE_SRC_PATH}/engine/view.cpp
    ${SE_SRC_PATH}/engine/rpt_engine.cpp
    ${SE_SRC_PATH}/engine/cl_steamauth.cpp
    ${SE_SRC_PATH}/engine/cdll_engine_int.cpp
    ${SE_SRC_PATH}/engine/cl_main.cpp
    ${SE_SRC_PATH}/engine/cl_demo.cpp
    ${SE_SRC_PATH}/engine/cl_demoaction.cpp
    ${SE_SRC_PATH}/engine/cl_demoaction_types.cpp
    ${SE_SRC_PATH}/engine/cl_demoactioneditors.cpp
    ${SE_SRC_PATH}/engine/cl_demoactionmanager.cpp
    ${SE_SRC_PATH}/engine/cl_demoeditorpanel.cpp
    ${SE_SRC_PATH}/engine/cl_demosmootherpanel.cpp
    ${SE_SRC_PATH}/engine/cl_demouipanel.cpp
    ${SE_SRC_PATH}/engine/cl_foguipanel.cpp
    ${SE_SRC_PATH}/engine/cl_txviewpanel.cpp
    ${SE_SRC_PATH}/engine/cl_entityreport.cpp
    ${SE_SRC_PATH}/engine/cl_ents_parse.cpp
    ${SE_SRC_PATH}/engine/cl_localnetworkbackdoor.cpp
    ${SE_SRC_PATH}/engine/cl_parse_event.cpp
    ${SE_SRC_PATH}/engine/cl_pluginhelpers.cpp
    ${SE_SRC_PATH}/engine/cl_pred.cpp
    ${SE_SRC_PATH}/engine/cl_texturelistpanel.cpp
    ${SE_SRC_PATH}/engine/client.cpp
    ${SE_SRC_PATH}/engine/colorcorrectionpanel.cpp
    ${SE_SRC_PATH}/engine/buildcubemaps.cpp
    ${SE_SRC_PATH}/engine/debug_leafvis.cpp
    ${SE_SRC_PATH}/engine/debugoverlay.cpp
    ${SE_SRC_PATH}/engine/LoadScreenUpdate.cpp
    ${SE_SRC_PATH}/engine/enginetool.cpp
    ${SE_SRC_PATH}/engine/gl_drawlights.cpp
    ${SE_SRC_PATH}/engine/gl_lightmap.cpp
    ${SE_SRC_PATH}/engine/gl_matsysiface.cpp
    ${SE_SRC_PATH}/engine/gl_rlight.cpp
    ${SE_SRC_PATH}/engine/gl_rmain.cpp
    ${SE_SRC_PATH}/engine/gl_rmisc.cpp
    ${SE_SRC_PATH}/engine/gl_screen.cpp
    ${SE_SRC_PATH}/engine/gl_warp.cpp
    ${SE_SRC_PATH}/engine/r_areaportal.cpp
    ${SE_SRC_PATH}/engine/shadowmgr.cpp
    ${SE_SRC_PATH}/engine/cl_bounded_cvars.cpp
    ${SE_SRC_PATH}/engine/downloadthread.cpp
    ${SE_SRC_PATH}/engine/matchmakinghost.cpp
    ${SE_SRC_PATH}/engine/matchmakingqos.cpp
    ${SE_SRC_PATH}/engine/matchmakingclient.cpp
    ${SE_SRC_PATH}/engine/matchmakingshared.cpp
    ${SE_SRC_PATH}/engine/matchmakingmigrate.cpp
    ${SE_SRC_PATH}/engine/replaydemoplayer.cpp
    ${SE_SRC_PATH}/engine/Session.cpp
    ${SE_SRC_PATH}/engine/sys_mainwind.cpp
    ${SE_SRC_PATH}/engine/bugreporter.cpp
    ${SE_SRC_PATH}/engine/download.cpp
    ${SE_SRC_PATH}/engine/host_saverestore.cpp
    ${SE_SRC_PATH}/engine/lightcache.cpp
    ${SE_SRC_PATH}/engine/saverestore_filesystem.cpp
    ${SE_SRC_PATH}/engine/sys_getmodes.cpp
    ${SE_SRC_PATH}/engine/vgui_askconnectpanel.cpp
    ${SE_SRC_PATH}/engine/xboxsystem.cpp
    ${SE_SRC_PATH}/engine/audio/audio_pch.cpp
    ${SE_SRC_PATH}/engine/EngineSoundClient.cpp
    ${SE_SRC_PATH}/engine/engsoundservice.cpp
    ${SE_SRC_PATH}/engine/audio/private/MPAFile.cpp
    ${SE_SRC_PATH}/engine/audio/private/MPAHeader.cpp
    ${SE_SRC_PATH}/engine/audio/private/circularbuffer.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_dev_common.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_dma.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_dsp.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_mix.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_sentence_mixer.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_data.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_mixer.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_mixer_adpcm.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_source.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_temp.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_win.cpp
    ${SE_SRC_PATH}/engine/audio/private/voice_gain.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_mp3_source.cpp
    ${SE_SRC_PATH}/engine/audio/private/snd_wave_mixer_mp3.cpp
    ${SE_SRC_PATH}/engine/audio/private/VBRHeader.cpp
    ${SE_SRC_PATH}/engine/audio/private/voice.cpp
    ${SE_SRC_PATH}/engine/audio/private/voice_sound_engine_interface.cpp
    ${SE_SRC_PATH}/engine/../public/vgui_controls/vgui_controls.cpp
    ${SE_SRC_PATH}/engine/../common/vgui/vgui_basebudgetpanel.cpp
    ${SE_SRC_PATH}/engine/../common/vgui/vgui_budgetbargraphpanel.cpp
    ${SE_SRC_PATH}/engine/../common/vgui/vgui_budgethistorypanel.cpp
    ${SE_SRC_PATH}/engine/../common/vgui/vgui_budgetpanelshared.cpp
    ${SE_SRC_PATH}/engine/perfuipanel.cpp
    ${SE_SRC_PATH}/engine/vgui_basepanel.cpp
    ${SE_SRC_PATH}/engine/vgui_baseui_interface.cpp
    ${SE_SRC_PATH}/engine/vgui_budgetpanel.cpp
    ${SE_SRC_PATH}/engine/vgui_DebugSystemPanel.cpp
    ${SE_SRC_PATH}/engine/vgui_drawtreepanel.cpp
    ${SE_SRC_PATH}/engine/vgui_helpers.cpp
    ${SE_SRC_PATH}/engine/vgui_texturebudgetpanel.cpp
    ${SE_SRC_PATH}/engine/vgui_vprofgraphpanel.cpp
    ${SE_SRC_PATH}/engine/vgui_vprofpanel.cpp
    ${SE_SRC_PATH}/engine/toolframework.cpp
    )
if(SE_LINUX OR SE_OSX)
    target_sources(engine_src_client INTERFACE
            ${SE_SRC_PATH}/engine/audio/private/voice_mixer_controls_openal.cpp
            ${SE_SRC_PATH}/engine/audio/private/voice_record_openal.cpp
            )
endif()

if(SE_DEDICATED)
    target_link_libraries(engine PRIVATE engine_src_dedicated)
else()
    target_link_libraries(engine PRIVATE engine_src_client)
endif()

target_include_directories(engine PUBLIC
        ${SE_SRC_PATH}/engine
        ${SE_SRC_PATH}/public
        ${SE_SRC_PATH}/public/tier0
        ${SE_SRC_PATH}/public/tier1
        ${SE_SRC_PATH}/common
        ${SE_SRC_PATH}/engine/audio
        ${SE_SRC_PATH}/engine/audio/public
        )
target_include_directories(engine PRIVATE
        ${SE_SRC_PATH}/engine/audio/private
)

if(SE_DEDICATED)
    target_compile_definitions(engine PUBLIC -DSWDS=1 -DNO_STEAM=1)
endif()
target_compile_definitions(engine PUBLIC -D__USEA3D -D_ADD_EAX_)
target_compile_definitions(engine PRIVATE -DENGINE_DLL -DVERSION_SAFE_STEAM_API_INTERFACES -DUSE_BREAKPAD_HANDLER -DUSE_CONVARS -DVOICE_OVER_IP)

target_link_libraries(engine PUBLIC tier0 vgui_controls dmxloader tier1 tier2 tier3 bitmap vstdlib appframework datamodel vtf mathlib steam_api matsys_controls )
target_link_libraries(engine PRIVATE BZ2 SDL2 JPEG ZLIB OPENAL CURL )
if(SE_ANDROID)
    target_link_libraries(engine PRIVATE SSL CRYPTO )
endif()
if(SE_OSX)
    target_link_libraries(engine PRIVATE "-framework CoreAudio" "-framework AudioToolBox" "-framework SystemConfiguration" )
endif()

install(TARGETS engine DESTINATION "./bin")