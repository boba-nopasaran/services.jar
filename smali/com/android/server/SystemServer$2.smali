.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$audioServiceF:Landroid/media/AudioService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$momF:Lcom/mediatek/mom/MobileManagerService;

.field final synthetic val$mountServiceF:Lcom/android/server/MountService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

.field final synthetic val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

.field final synthetic val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V
    .registers 27

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1337
    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :try_start_7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$momF:Lcom/mediatek/mom/MobileManagerService;

    invoke-virtual {v1}, Lcom/mediatek/mom/MobileManagerService;->systemReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_10} :catch_145

    .line 1346
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v2, 0x226

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1350
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_24} :catch_14f

    .line 1355
    :goto_24
    const-string v1, "SystemServer"

    const-string v2, "WebViewFactory preparation"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer()V

    .line 1359
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_159

    .line 1364
    :goto_33
    :try_start_33
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mountServiceF:Lcom/android/server/MountService;

    invoke-virtual {v1}, Lcom/android/server/MountService;->systemReady()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3c} :catch_163

    .line 1369
    :cond_3c
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_45} :catch_16d

    .line 1374
    :cond_45
    :goto_45
    :try_start_45
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_4e} :catch_177

    .line 1379
    :cond_4e
    :goto_4e
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_57} :catch_181

    .line 1384
    :cond_57
    :goto_57
    :try_start_57
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_60} :catch_18b

    .line 1389
    :cond_60
    :goto_60
    :try_start_60
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_69} :catch_195

    .line 1394
    :cond_69
    :goto_69
    :try_start_69
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$audioServiceF:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->systemReady()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_72} :catch_19f

    .line 1398
    :cond_72
    :goto_72
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1402
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v1}, Lcom/android/server/SystemServer;->access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v1

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1406
    :try_start_84
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$wallpaperF:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemRunning()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_8d} :catch_1a9

    .line 1411
    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer$2;->val$statusBarF:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_98} :catch_1b3

    .line 1416
    :cond_98
    :goto_98
    :try_start_98
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_a1} :catch_1bd

    .line 1421
    :cond_a1
    :goto_a1
    const-string v1, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b5

    const-string v1, "userdebug"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    :cond_b5
    const/4 v1, 0x1

    :goto_b6
    if-nez v1, :cond_d3

    const-string v1, "persist.sys.anr_sys_key"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1423
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/SystemServer$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/SystemServer$2$1;-><init>(Lcom/android/server/SystemServer$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1431
    :cond_d3
    :try_start_d3
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_dc

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_dc
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_dc} :catch_1ca

    .line 1436
    :cond_dc
    :goto_dc
    :try_start_dc
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_e5

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_e5
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_e5} :catch_1d4

    .line 1441
    :cond_e5
    :goto_e5
    :try_start_e5
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v1, :cond_ee

    .line 1442
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v1}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_ee} :catch_1de

    .line 1448
    :cond_ee
    :goto_ee
    :try_start_ee
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_f7

    .line 1449
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemRunning()V
    :try_end_f7
    .catch Ljava/lang/Throwable; {:try_start_ee .. :try_end_f7} :catch_1e8

    .line 1454
    :cond_f7
    :goto_f7
    :try_start_f7
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v1, :cond_100

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v1}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_f7 .. :try_end_100} :catch_1f2

    .line 1460
    :cond_100
    :goto_100
    :try_start_100
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_109

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_109} :catch_1fc

    .line 1465
    :cond_109
    :goto_109
    :try_start_109
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v1, :cond_112

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v1}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_112
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_112} :catch_206

    .line 1470
    :cond_112
    :goto_112
    :try_start_112
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v1, :cond_11b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_112 .. :try_end_11b} :catch_210

    .line 1476
    :cond_11b
    :goto_11b
    :try_start_11b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v1, :cond_124

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v1}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_124
    .catch Ljava/lang/Throwable; {:try_start_11b .. :try_end_124} :catch_21a

    .line 1482
    :cond_124
    :goto_124
    const-string v1, "ro.mtk_perfservice_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 1485
    :try_start_132
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    if-eqz v1, :cond_13b

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$perfServiceF:Lcom/mediatek/perfservice/IPerfServiceManager;

    invoke-interface {v1}, Lcom/mediatek/perfservice/IPerfServiceManager;->systemReady()V
    :try_end_13b
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_13b} :catch_224

    .line 1494
    :cond_13b
    :goto_13b
    :try_start_13b
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v1, :cond_144

    iget-object v1, p0, Lcom/android/server/SystemServer$2;->val$recoveryF:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v1}, Lcom/mediatek/recovery/RecoveryManagerService;->systemReady()V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_13b .. :try_end_144} :catch_22e

    .line 1499
    :cond_144
    :goto_144
    return-void

    .line 1342
    :catch_145
    move-exception v0

    .line 1343
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making MobileManagerService ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1351
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_14f
    move-exception v0

    .line 1352
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "observing native crashes"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1360
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_159
    move-exception v0

    .line 1361
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "starting System UI"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1365
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_163
    move-exception v0

    .line 1366
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Mount Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1370
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_16d
    move-exception v0

    .line 1371
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Score Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1375
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_177
    move-exception v0

    .line 1376
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Managment Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1380
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_181
    move-exception v0

    .line 1381
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Stats Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1385
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_18b
    move-exception v0

    .line 1386
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Network Policy Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 1390
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_195
    move-exception v0

    .line 1391
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making Connectivity Service ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_69

    .line 1395
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_19f
    move-exception v0

    .line 1396
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying AudioService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_72

    .line 1407
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1a9
    move-exception v0

    .line 1408
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying WallpaperService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d

    .line 1412
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1b3
    move-exception v0

    .line 1413
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying InputMethodService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_98

    .line 1417
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1bd
    move-exception v0

    .line 1418
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying Location Service running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a1

    .line 1421
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1c7
    const/4 v1, 0x0

    goto/16 :goto_b6

    .line 1432
    :catch_1ca
    move-exception v0

    .line 1433
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying CountryDetectorService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_dc

    .line 1437
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1d4
    move-exception v0

    .line 1438
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying NetworkTimeService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e5

    .line 1444
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1de
    move-exception v0

    .line 1445
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying CommonTimeManagementService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ee

    .line 1450
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1e8
    move-exception v0

    .line 1451
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying TextServicesManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f7

    .line 1455
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1f2
    move-exception v0

    .line 1456
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying AssetAtlasService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_100

    .line 1461
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1fc
    move-exception v0

    .line 1462
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying InputManagerService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_109

    .line 1466
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_206
    move-exception v0

    .line 1467
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying TelephonyRegistry running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_112

    .line 1471
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_210
    move-exception v0

    .line 1472
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying MediaRouterService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11b

    .line 1477
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_21a
    move-exception v0

    .line 1478
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "Notifying MmsService running"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_124

    .line 1486
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_224
    move-exception v0

    .line 1487
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making PerfServiceManager ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13b

    .line 1495
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_22e
    move-exception v0

    .line 1496
    .restart local v0    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string v2, "making RecoveryManagerService ready"

    # invokes: Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_144
.end method
