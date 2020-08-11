.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final EPDG_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.epdg.EpdgService"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final RNS_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.rns.RnsService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 219
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .registers 5
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 361
    :try_start_0
    sget-boolean v2, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v2, :cond_18

    .line 362
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 365
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_18} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_22

    .line 372
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_18
    :goto_18
    return-void

    .line 367
    :catch_19
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 369
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_22
    move-exception v0

    .line 370
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 393
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 394
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 395
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 396
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 231
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 376
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 379
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1b

    move v1, v3

    .line 382
    .local v1, "reboot":Z
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2d

    .line 383
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "reason":Ljava/lang/String;
    :goto_29
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 390
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_2c
    return-void

    .line 385
    .restart local v1    # "reboot":Z
    :cond_2d
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_29
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 354
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    return-void
.end method

.method private run()V
    .registers 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 244
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 249
    :cond_19
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 253
    const-string v0, "1"

    const-string v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 254
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 264
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 268
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 269
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 270
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 279
    :cond_69
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 283
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 287
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 291
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 294
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 297
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 299
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 300
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 303
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 308
    :try_start_96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9f} :catch_e0

    .line 316
    :goto_9f
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 319
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 322
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 323
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 327
    :try_start_b5
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 328
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 329
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_be} :catch_fa

    .line 341
    :cond_be
    :goto_be
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 342
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_cb
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :catch_e0
    move-exception v6

    .line 310
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 330
    .end local v6    # "e":Ljava/io/IOException;
    :catch_fa
    move-exception v7

    .line 331
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_be

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_be

    .line 335
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v8}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_be
.end method

.method private startBootstrapServices()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    .line 409
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 412
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_25

    .line 414
    const/4 v4, 0x0

    .line 415
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_10
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_15} :catch_ef

    .line 416
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_15
    const-string v6, "SystemServer"

    const-string v8, "Create message monitor service successfully ."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v6, "msgmonitorservice"

    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_25} :catch_115

    .line 427
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_25
    :goto_25
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 429
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 430
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 436
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 440
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 444
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 447
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 450
    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "cryptState":Ljava/lang/String;
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f9

    .line 452
    const-string v6, "SystemServer"

    const-string v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 460
    :cond_7c
    :goto_7c
    const-string v6, "0"

    const-string v8, "ro.mtk_antibricking_level"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 461
    .local v1, "disabled":Z
    if-nez v1, :cond_ae

    .line 463
    :try_start_8a
    const-string v6, "SystemServer"

    const-string v8, "Recovery Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 465
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_ae

    .line 466
    const-string v6, "recovery"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v8}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 467
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_ae} :catch_10c

    .line 476
    :cond_ae
    :goto_ae
    const-string v6, "SystemServer"

    const-string v8, "Package Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_113

    move v6, v7

    :goto_bc
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 479
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 480
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 482
    const-string v6, "SystemServer"

    const-string v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 486
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 489
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 490
    return-void

    .line 420
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_ef
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Throwable;
    :goto_f0
    const-string v6, "SystemServer"

    const-string v8, "Starting message monitor service exception "

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 454
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_f9
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 455
    const-string v6, "SystemServer"

    const-string v8, "Device encrypted - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_7c

    .line 469
    .restart local v1    # "disabled":Z
    :catch_10c
    move-exception v2

    .line 470
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ae

    .line 477
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_113
    const/4 v6, 0x0

    goto :goto_bc

    .line 420
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_115
    move-exception v2

    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_f0
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 500
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 503
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 504
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 507
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 510
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 511
    return-void
.end method

.method private startOtherServices()V
    .registers 114

    .prologue
    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 519
    .local v3, "context":Landroid/content/Context;
    const/16 v35, 0x0

    .line 520
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v51, 0x0

    .line 521
    .local v51, "contentService":Lcom/android/server/content/ContentService;
    const/16 v106, 0x0

    .line 522
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    const/16 v37, 0x0

    .line 523
    .local v37, "alarm":Landroid/app/IAlarmManager;
    const/16 v81, 0x0

    .line 524
    .local v81, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 525
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 526
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v83, 0x0

    .line 527
    .local v83, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v47, 0x0

    .line 528
    .local v47, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v84, 0x0

    .line 529
    .local v84, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v98, 0x0

    .line 530
    .local v98, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v112, 0x0

    .line 531
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v42, 0x0

    .line 532
    .local v42, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v105, 0x0

    .line 533
    .local v105, "usb":Lcom/android/server/usb/UsbService;
    const/16 v96, 0x0

    .line 534
    .local v96, "serial":Lcom/android/server/SerialService;
    const/16 v87, 0x0

    .line 535
    .local v87, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v44, 0x0

    .line 536
    .local v44, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v68, 0x0

    .line 537
    .local v68, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v101, 0x0

    .line 538
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v49, 0x0

    .line 539
    .local v49, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v40, 0x0

    .line 540
    .local v40, "audioService":Landroid/media/AudioService;
    const/16 v78, 0x0

    .line 542
    .local v78, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v79, 0x0

    .line 544
    .local v79, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v64, 0x0

    .line 549
    .local v64, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const-string v4, "persist.disable.svc_list"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 550
    .local v34, "DisableService":Ljava/lang/String;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DisableService by CM"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 553
    .local v60, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 554
    .local v56, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 555
    .local v54, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 556
    .local v62, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 557
    .local v55, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 558
    .local v61, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 559
    .local v59, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 560
    .local v57, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 561
    .local v58, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v70

    .line 565
    .local v70, "isEmulator":Z
    :try_start_9d
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 568
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 574
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v102, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_cf} :catch_c5a

    .line 576
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v102, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_cf
    const-string v4, "telephony.registry"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 578
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 581
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_ef} :catch_903

    .line 587
    :try_start_ef
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v36, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_fd
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_fd} :catch_8f7
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_fd} :catch_903

    .line 589
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_fd
    const-string v4, "account"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_104
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_104} :catch_c89
    .catch Ljava/lang/RuntimeException; {:try_start_fd .. :try_end_104} :catch_c5d

    move-object/from16 v35, v36

    .line 594
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_106
    :try_start_106
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_928

    const/4 v4, 0x1

    :goto_115
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v51

    .line 599
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_11c
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_11c} :catch_903

    move-result v4

    if-eqz v4, :cond_138

    .line 601
    :try_start_11f
    const-string v4, "SystemServer"

    const-string v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v80, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_12d} :catch_92b
    .catch Ljava/lang/RuntimeException; {:try_start_11f .. :try_end_12d} :catch_903

    .line 603
    .end local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v80, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_12d
    const-string v4, "mobile"

    invoke-virtual/range {v80 .. v80}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_136} :catch_c84
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_136} :catch_c64

    move-object/from16 v79, v80

    .line 610
    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_138
    :goto_138
    :try_start_138
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 613
    const-string v4, "vibrator"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_167

    .line 614
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    new-instance v107, Lcom/android/server/VibratorService;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_15e
    .catch Ljava/lang/RuntimeException; {:try_start_138 .. :try_end_15e} :catch_903

    .line 616
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v107, "vibrator":Lcom/android/server/VibratorService;
    :try_start_15e
    const-string v4, "vibrator"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_165
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_165} :catch_c6b

    move-object/from16 v106, v107

    .line 619
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    :cond_167
    :try_start_167
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v50, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_175
    .catch Ljava/lang/RuntimeException; {:try_start_167 .. :try_end_175} :catch_903

    .line 621
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v50, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_175
    const-string v4, "consumer_ir"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 624
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v37

    .line 627
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v111

    .line 629
    .local v111, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v111

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 631
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v69, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b1
    .catch Ljava/lang/RuntimeException; {:try_start_175 .. :try_end_1b1} :catch_c72

    .line 634
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v69, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_1b1
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_937

    const/4 v4, 0x1

    move v5, v4

    :goto_1c1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_93b

    const/4 v4, 0x1

    :goto_1c8
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v69

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v112

    .line 638
    const-string v4, "window"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 639
    const-string v4, "input"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v112

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 643
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 644
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/input/InputManagerService;->start()V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 652
    if-eqz v70, :cond_93e

    .line 653
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_205
    .catch Ljava/lang/RuntimeException; {:try_start_1b1 .. :try_end_205} :catch_94e

    :goto_205
    move-object/from16 v49, v50

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .line 677
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    :cond_20b
    :goto_20b
    const/16 v99, 0x0

    .line 678
    .local v99, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v89, 0x0

    .line 679
    .local v89, "notification":Landroid/app/INotificationManager;
    const/16 v66, 0x0

    .line 680
    .local v66, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v109, 0x0

    .line 681
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v71, 0x0

    .line 682
    .local v71, "location":Lcom/android/server/LocationManagerService;
    const/16 v52, 0x0

    .line 683
    .local v52, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v103, 0x0

    .line 684
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v73, 0x0

    .line 685
    .local v73, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v90, 0x0

    .line 686
    .local v90, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v93, 0x0

    .line 687
    .local v93, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v38, 0x0

    .line 688
    .local v38, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v75, 0x0

    .line 691
    .local v75, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_254

    .line 695
    :try_start_22a
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v67, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v67

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_23a
    .catch Ljava/lang/Throwable; {:try_start_22a .. :try_end_23a} :catch_98f

    .line 697
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v67, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_23a
    const-string v4, "input_method"

    move-object/from16 v0, v67

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_241
    .catch Ljava/lang/Throwable; {:try_start_23a .. :try_end_241} :catch_c55

    move-object/from16 v66, v67

    .line 703
    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_243
    :try_start_243
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_254
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_254} :catch_99b

    .line 713
    :cond_254
    :goto_254
    :try_start_254
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_257
    .catch Ljava/lang/Throwable; {:try_start_254 .. :try_end_257} :catch_9a7

    .line 718
    :goto_257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_285

    .line 719
    if-nez v60, :cond_285

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_285

    .line 726
    :try_start_26e
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v82, Lcom/android/server/MountService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_27c
    .catch Ljava/lang/Throwable; {:try_start_26e .. :try_end_27c} :catch_9b3

    .line 728
    .end local v81    # "mountService":Lcom/android/server/MountService;
    .local v82, "mountService":Lcom/android/server/MountService;
    :try_start_27c
    const-string v4, "mount"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_283
    .catch Ljava/lang/Throwable; {:try_start_27c .. :try_end_283} :catch_c50

    move-object/from16 v81, v82

    .line 736
    .end local v82    # "mountService":Lcom/android/server/MountService;
    .restart local v81    # "mountService":Lcom/android/server/MountService;
    :cond_285
    :goto_285
    :try_start_285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_28c
    .catch Ljava/lang/Throwable; {:try_start_285 .. :try_end_28c} :catch_9bf

    .line 742
    :goto_28c
    :try_start_28c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x104049d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_29f
    .catch Landroid/os/RemoteException; {:try_start_28c .. :try_end_29f} :catch_c4d

    .line 749
    :goto_29f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_c92

    .line 750
    if-nez v59, :cond_2df

    .line 752
    :try_start_2a8
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v74, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_2b6
    .catch Ljava/lang/Throwable; {:try_start_2a8 .. :try_end_2b6} :catch_9cb

    .line 754
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v74, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_2b6
    const-string v4, "lock_settings"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2bd
    .catch Ljava/lang/Throwable; {:try_start_2b6 .. :try_end_2bd} :catch_c48

    move-object/from16 v73, v74

    .line 759
    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_2bf
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d6

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 765
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 768
    :cond_2df
    if-nez v61, :cond_2fa

    .line 770
    :try_start_2e1
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v100, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v100

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2f1
    .catch Ljava/lang/Throwable; {:try_start_2e1 .. :try_end_2f1} :catch_9d7

    .line 772
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v100, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_2f1
    const-string v4, "statusbar"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f8
    .catch Ljava/lang/Throwable; {:try_start_2f1 .. :try_end_2f8} :catch_c43

    move-object/from16 v99, v100

    .line 778
    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_2fa
    :goto_2fa
    if-nez v59, :cond_30d

    .line 780
    :try_start_2fc
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30d
    .catch Ljava/lang/Throwable; {:try_start_2fc .. :try_end_30d} :catch_9e3

    .line 788
    :cond_30d
    :goto_30d
    if-nez v57, :cond_31f

    .line 790
    :try_start_30f
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 792
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31f
    .catch Ljava/lang/Throwable; {:try_start_30f .. :try_end_31f} :catch_9ef

    .line 798
    :cond_31f
    :goto_31f
    if-nez v59, :cond_338

    .line 800
    :try_start_321
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    new-instance v104, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_32f
    .catch Ljava/lang/Throwable; {:try_start_321 .. :try_end_32f} :catch_9fb

    .line 802
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v104, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_32f
    const-string v4, "textservices"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_336
    .catch Ljava/lang/Throwable; {:try_start_32f .. :try_end_336} :catch_c3e

    move-object/from16 v103, v104

    .line 808
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_338
    :goto_338
    if-nez v57, :cond_c8e

    .line 810
    :try_start_33a
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v85, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_348
    .catch Ljava/lang/Throwable; {:try_start_33a .. :try_end_348} :catch_a07

    .line 812
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v85, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_348
    const-string v4, "network_score"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34f
    .catch Ljava/lang/Throwable; {:try_start_348 .. :try_end_34f} :catch_c39

    move-object/from16 v84, v85

    .line 818
    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_351
    :try_start_351
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v86, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v86

    move-object/from16 v1, v37

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_361
    .catch Ljava/lang/Throwable; {:try_start_351 .. :try_end_361} :catch_a13

    .line 820
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v86, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_361
    const-string v4, "netstats"

    move-object/from16 v0, v86

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_368
    .catch Ljava/lang/Throwable; {:try_start_361 .. :try_end_368} :catch_c34

    move-object/from16 v6, v86

    .line 826
    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_36a
    :try_start_36a
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_382
    .catch Ljava/lang/Throwable; {:try_start_36a .. :try_end_382} :catch_a1f

    .line 831
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_382
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_387
    .catch Ljava/lang/Throwable; {:try_start_382 .. :try_end_387} :catch_c31

    .line 836
    :goto_387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c0

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 848
    :cond_3c0
    :try_start_3c0
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v48, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_3ce
    .catch Ljava/lang/Throwable; {:try_start_3c0 .. :try_end_3ce} :catch_a2d

    .line 851
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v48, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_3ce
    const-string v4, "connectivity"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 852
    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 853
    move-object/from16 v0, v48

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_3df
    .catch Ljava/lang/Throwable; {:try_start_3ce .. :try_end_3df} :catch_c2c

    move-object/from16 v47, v48

    .line 859
    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_3e1
    :try_start_3e1
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v98

    .line 861
    const-string v4, "servicediscovery"

    move-object/from16 v0, v98

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f3
    .catch Ljava/lang/Throwable; {:try_start_3e1 .. :try_end_3f3} :catch_a39

    .line 868
    :goto_3f3
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_411

    .line 870
    :try_start_401
    const-string v4, "SystemServer"

    const-string v5, "EPDG Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.epdg.EpdgService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_411
    .catch Ljava/lang/Throwable; {:try_start_401 .. :try_end_411} :catch_a45

    .line 878
    :cond_411
    :goto_411
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42f

    .line 880
    :try_start_41f
    const-string v4, "SystemServer"

    const-string v5, "RNS Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.rns.RnsService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_42f
    .catch Ljava/lang/Throwable; {:try_start_41f .. :try_end_42f} :catch_a62

    .line 886
    :cond_42f
    :goto_42f
    const-string v4, "SystemServer"

    const-string v5, "RNS Service_END"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_436
    if-nez v59, :cond_449

    .line 892
    :try_start_438
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_449
    .catch Ljava/lang/Throwable; {:try_start_438 .. :try_end_449} :catch_a6e

    .line 905
    :cond_449
    :goto_449
    if-eqz v81, :cond_454

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_454

    .line 906
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 910
    :cond_454
    if-eqz v35, :cond_459

    .line 911
    :try_start_456
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_459
    .catch Ljava/lang/Throwable; {:try_start_456 .. :try_end_459} :catch_a7a

    .line 917
    :cond_459
    :goto_459
    if-eqz v51, :cond_45e

    .line 918
    :try_start_45b
    invoke-virtual/range {v51 .. v51}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_45e
    .catch Ljava/lang/Throwable; {:try_start_45b .. :try_end_45e} :catch_a86

    .line 923
    :cond_45e
    :goto_45e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 924
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v89

    .line 926
    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 930
    if-nez v55, :cond_4af

    .line 932
    :try_start_481
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    new-instance v72, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48f
    .catch Ljava/lang/Throwable; {:try_start_481 .. :try_end_48f} :catch_a92

    .line 934
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .local v72, "location":Lcom/android/server/LocationManagerService;
    :try_start_48f
    const-string v4, "location"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_496
    .catch Ljava/lang/Throwable; {:try_start_48f .. :try_end_496} :catch_c27

    move-object/from16 v71, v72

    .line 940
    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    :goto_498
    :try_start_498
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    new-instance v53, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_4a6
    .catch Ljava/lang/Throwable; {:try_start_498 .. :try_end_4a6} :catch_a9e

    .line 942
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_4a6
    const-string v4, "country_detector"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ad
    .catch Ljava/lang/Throwable; {:try_start_4a6 .. :try_end_4ad} :catch_c22

    move-object/from16 v52, v53

    .line 948
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_4af
    :goto_4af
    if-nez v59, :cond_4dd

    const-string v4, "search"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4dd

    .line 950
    :try_start_4bb
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4cc
    .catch Ljava/lang/Throwable; {:try_start_4bb .. :try_end_4cc} :catch_aaa

    .line 959
    :goto_4cc
    :try_start_4cc
    const-string v4, "SystemServer"

    const-string v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const-string v4, "search_engine"

    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4dd
    .catch Ljava/lang/Throwable; {:try_start_4cc .. :try_end_4dd} :catch_ab6

    .line 969
    :cond_4dd
    :goto_4dd
    :try_start_4dd
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f5
    .catch Ljava/lang/Throwable; {:try_start_4dd .. :try_end_4f5} :catch_ac2

    .line 976
    :goto_4f5
    if-nez v59, :cond_51b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_51b

    .line 979
    :try_start_504
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v110, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_512
    .catch Ljava/lang/Throwable; {:try_start_504 .. :try_end_512} :catch_ace

    .line 981
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v110, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_512
    const-string v4, "wallpaper"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_519
    .catch Ljava/lang/Throwable; {:try_start_512 .. :try_end_519} :catch_c1d

    move-object/from16 v109, v110

    .line 987
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_51b
    :goto_51b
    if-nez v56, :cond_542

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_542

    .line 989
    :try_start_52b
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v41, Landroid/media/AudioService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_539
    .catch Ljava/lang/Throwable; {:try_start_52b .. :try_end_539} :catch_ada

    .line 991
    .end local v40    # "audioService":Landroid/media/AudioService;
    .local v41, "audioService":Landroid/media/AudioService;
    :try_start_539
    const-string v4, "audio"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_540
    .catch Ljava/lang/Throwable; {:try_start_539 .. :try_end_540} :catch_c18

    move-object/from16 v40, v41

    .line 999
    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    :cond_542
    :goto_542
    if-nez v56, :cond_572

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_572

    const/4 v4, 0x1

    const-string v5, "ro.mtk_audio_profiles"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_572

    .line 1002
    :try_start_561
    const-string v4, "SystemServer"

    const-string v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v4, "audioprofile"

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_572
    .catch Ljava/lang/Throwable; {:try_start_561 .. :try_end_572} :catch_ae6

    .line 1011
    :cond_572
    :goto_572
    const-string v4, "1"

    const-string v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_591

    .line 1013
    :try_start_580
    const-string v4, "SystemServer"

    const-string v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const-string v4, "sensorhubservice"

    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_591
    .catch Ljava/lang/Throwable; {:try_start_580 .. :try_end_591} :catch_af2

    .line 1021
    :cond_591
    :goto_591
    if-nez v59, :cond_5a6

    const-string v4, "dock"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_5a6

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1025
    :cond_5a6
    if-nez v56, :cond_5bb

    .line 1027
    :try_start_5a8
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v68

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_5bb
    .catch Ljava/lang/Throwable; {:try_start_5a8 .. :try_end_5bb} :catch_afe

    .line 1036
    :cond_5bb
    :goto_5bb
    if-nez v59, :cond_5f5

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5d5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5de

    .line 1041
    :cond_5d5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1045
    :cond_5de
    :try_start_5de
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v97, Lcom/android/server/SerialService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_5ec
    .catch Ljava/lang/Throwable; {:try_start_5de .. :try_end_5ec} :catch_b0a

    .line 1048
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .local v97, "serial":Lcom/android/server/SerialService;
    :try_start_5ec
    const-string v4, "serial"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f3
    .catch Ljava/lang/Throwable; {:try_start_5ec .. :try_end_5f3} :catch_c13

    move-object/from16 v96, v97

    .line 1054
    .end local v97    # "serial":Lcom/android/server/SerialService;
    .restart local v96    # "serial":Lcom/android/server/SerialService;
    :cond_5f5
    :goto_5f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1060
    if-nez v59, :cond_651

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_627

    .line 1062
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1065
    :cond_627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63c

    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1069
    :cond_63c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_651

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1075
    :cond_651
    :try_start_651
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_662
    .catch Ljava/lang/Throwable; {:try_start_651 .. :try_end_662} :catch_b16

    .line 1086
    :goto_662
    :try_start_662
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_673
    .catch Ljava/lang/Throwable; {:try_start_662 .. :try_end_673} :catch_b22

    .line 1093
    :goto_673
    if-nez v57, :cond_687

    if-nez v58, :cond_687

    .line 1095
    :try_start_677
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v88, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_685
    .catch Ljava/lang/Throwable; {:try_start_677 .. :try_end_685} :catch_b2e

    .end local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v88, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v87, v88

    .line 1102
    .end local v88    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v87    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_687
    :goto_687
    if-nez v56, :cond_6a0

    .line 1104
    :try_start_689
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v45, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_697
    .catch Ljava/lang/Throwable; {:try_start_689 .. :try_end_697} :catch_b3a

    .line 1106
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v45, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_697
    const-string v4, "commontime_management"

    move-object/from16 v0, v45

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_69e
    .catch Ljava/lang/Throwable; {:try_start_697 .. :try_end_69e} :catch_c0e

    move-object/from16 v44, v45

    .line 1112
    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_6a0
    :goto_6a0
    if-nez v57, :cond_6ae

    .line 1114
    :try_start_6a2
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_6ae
    .catch Ljava/lang/Throwable; {:try_start_6a2 .. :try_end_6ae} :catch_b46

    .line 1121
    :cond_6ae
    :goto_6ae
    if-nez v59, :cond_6c3

    const-string v4, "dreams"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_6c3

    .line 1123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1126
    :cond_6c3
    if-nez v59, :cond_6e5

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6e5

    .line 1128
    :try_start_6ce
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v39, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_6dc
    .catch Ljava/lang/Throwable; {:try_start_6ce .. :try_end_6dc} :catch_b52

    .line 1130
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v39, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_6dc
    const-string v4, "assetatlas"

    move-object/from16 v0, v39

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6e3
    .catch Ljava/lang/Throwable; {:try_start_6dc .. :try_end_6e3} :catch_c09

    move-object/from16 v38, v39

    .line 1136
    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_6e5
    :goto_6e5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6fa

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1140
    :cond_6fa
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_721

    .line 1145
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1148
    :cond_721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_736

    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1152
    :cond_736
    if-nez v59, :cond_76b

    .line 1154
    :try_start_738
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v76, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_746
    .catch Ljava/lang/Throwable; {:try_start_738 .. :try_end_746} :catch_b5e

    .line 1156
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v76, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_746
    const-string v4, "media_router"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_74d
    .catch Ljava/lang/Throwable; {:try_start_746 .. :try_end_74d} :catch_c04

    move-object/from16 v75, v76

    .line 1161
    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_74f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1166
    :try_start_761
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_76b
    .catch Ljava/lang/Throwable; {:try_start_761 .. :try_end_76b} :catch_b6a

    .line 1174
    :cond_76b
    :goto_76b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1177
    const-string v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d2

    .line 1179
    :try_start_782
    const-string v4, "SystemServer"

    const-string v5, "PerfMgr state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v91, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v91 .. v91}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_78e
    .catch Ljava/lang/Throwable; {:try_start_782 .. :try_end_78e} :catch_b76

    .line 1181
    .end local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v91, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_78e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v91

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_797
    .catch Ljava/lang/Throwable; {:try_start_78e .. :try_end_797} :catch_bff

    move-object/from16 v90, v91

    .line 1188
    .end local v91    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_799
    :try_start_799
    new-instance v94, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_7a0
    .catch Ljava/lang/Throwable; {:try_start_799 .. :try_end_7a0} :catch_b82

    .line 1190
    .end local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v94, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v92, 0x0

    .line 1191
    .local v92, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_7a2
    new-instance v92, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v92    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v92

    move-object/from16 v1, v94

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .line 1193
    .restart local v92    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    if-eqz v92, :cond_7d0

    .line 1195
    const-string v4, "mtk-perfservice"

    invoke-interface/range {v92 .. v92}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d0
    .catch Ljava/lang/Throwable; {:try_start_7a2 .. :try_end_7d0} :catch_bfb

    :cond_7d0
    move-object/from16 v93, v94

    .line 1205
    .end local v92    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v94    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_7d2
    :goto_7d2
    if-nez v59, :cond_7fb

    const-string v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7fb

    .line 1207
    :try_start_7e2
    const-string v4, "SystemServer"

    const-string v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v65, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7f0
    .catch Ljava/lang/Throwable; {:try_start_7e2 .. :try_end_7f0} :catch_b8e

    .line 1209
    .end local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v65, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_7f0
    const-string v4, "mtkhdmi"

    invoke-virtual/range {v65 .. v65}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f9
    .catch Ljava/lang/Throwable; {:try_start_7f0 .. :try_end_7f9} :catch_bf7

    move-object/from16 v64, v65

    .line 1218
    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :cond_7fb
    :goto_7fb
    if-nez v59, :cond_810

    const-string v4, "projection"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_810

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1224
    :cond_810
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v95

    .line 1225
    .local v95, "safeMode":Z
    if-eqz v95, :cond_b9a

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1228
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1234
    :goto_824
    const-string v4, "mms"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_83a

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v78

    .end local v78    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v78, Lcom/android/server/MmsServiceBroker;

    .line 1240
    .restart local v78    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :cond_83a
    if-eqz v106, :cond_83f

    .line 1242
    :try_start_83c
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_83f
    .catch Ljava/lang/Throwable; {:try_start_83c .. :try_end_83f} :catch_ba3

    .line 1248
    :cond_83f
    :goto_83f
    if-eqz v73, :cond_844

    .line 1250
    :try_start_841
    invoke-virtual/range {v73 .. v73}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_844
    .catch Ljava/lang/Throwable; {:try_start_841 .. :try_end_844} :catch_baf

    .line 1257
    :cond_844
    :goto_844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1262
    :try_start_856
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_859
    .catch Ljava/lang/Throwable; {:try_start_856 .. :try_end_859} :catch_bbb

    .line 1267
    :goto_859
    if-eqz v95, :cond_862

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1274
    :cond_862
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v46

    .line 1275
    .local v46, "config":Landroid/content/res/Configuration;
    new-instance v77, Landroid/util/DisplayMetrics;

    invoke-direct/range {v77 .. v77}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1276
    .local v77, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/view/WindowManager;

    .line 1277
    .local v108, "w":Landroid/view/WindowManager;
    invoke-interface/range {v108 .. v108}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1278
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v46

    move-object/from16 v1, v77

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1282
    :try_start_887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_896
    .catch Ljava/lang/Throwable; {:try_start_887 .. :try_end_896} :catch_bc7

    .line 1288
    :goto_896
    :try_start_896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_89d
    .catch Ljava/lang/Throwable; {:try_start_896 .. :try_end_89d} :catch_bd3

    .line 1295
    :goto_89d
    :try_start_89d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v95

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_8aa
    .catch Ljava/lang/Throwable; {:try_start_89d .. :try_end_8aa} :catch_bdf

    .line 1301
    :goto_8aa
    move-object/from16 v12, v81

    .line 1302
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v7

    .line 1303
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v6

    .line 1304
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v2

    .line 1305
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v47

    .line 1306
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v84

    .line 1307
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v109

    .line 1308
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v66

    .line 1309
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v71

    .line 1310
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v52

    .line 1311
    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v87

    .line 1312
    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v44

    .line 1313
    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v103

    .line 1314
    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v99

    .line 1315
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v38

    .line 1316
    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v68

    .line 1317
    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v101

    .line 1318
    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v75

    .line 1319
    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v40

    .line 1320
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v78

    .line 1323
    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v79

    .line 1325
    .local v10, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v33, v0

    .line 1327
    .local v33, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v32, v93

    .line 1334
    .local v32, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v11, v3

    invoke-direct/range {v8 .. v33}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/mediatek/mom/MobileManagerService;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1504
    :try_start_8e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_8f6

    .line 1505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_8f6
    .catch Ljava/lang/Throwable; {:try_start_8e9 .. :try_end_8f6} :catch_beb

    .line 1511
    :cond_8f6
    :goto_8f6
    return-void

    .line 590
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v46    # "config":Landroid/content/res/Configuration;
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v77    # "metrics":Landroid/util/DisplayMetrics;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .end local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v95    # "safeMode":Z
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v108    # "w":Landroid/view/WindowManager;
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_8f7
    move-exception v63

    .line 591
    .local v63, "e":Ljava/lang/Throwable;
    :goto_8f8
    :try_start_8f8
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_901
    .catch Ljava/lang/RuntimeException; {:try_start_8f8 .. :try_end_901} :catch_903

    goto/16 :goto_106

    .line 666
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_903
    move-exception v63

    move-object/from16 v101, v102

    .line 667
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v63, "e":Ljava/lang/RuntimeException;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_906
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_20b

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_20b

    .line 595
    .end local v63    # "e":Ljava/lang/RuntimeException;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_928
    const/4 v4, 0x0

    goto/16 :goto_115

    .line 604
    :catch_92b
    move-exception v63

    .line 605
    .local v63, "e":Ljava/lang/Throwable;
    :goto_92c
    :try_start_92c
    const-string v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_935
    .catch Ljava/lang/RuntimeException; {:try_start_92c .. :try_end_935} :catch_903

    goto/16 :goto_138

    .line 635
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v63    # "e":Ljava/lang/Throwable;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v111    # "watchdog":Lcom/android/server/Watchdog;
    :cond_937
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1c1

    :cond_93b
    const/4 v4, 0x0

    goto/16 :goto_1c8

    .line 654
    :cond_93e
    :try_start_93e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_956

    .line 655
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_205

    .line 666
    :catch_94e
    move-exception v63

    move-object/from16 v49, v50

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto :goto_906

    .line 656
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_956
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_96b

    .line 658
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_205

    .line 659
    :cond_96b
    if-eqz v54, :cond_976

    .line 660
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_205

    .line 662
    :cond_976
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v43, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_984
    .catch Ljava/lang/RuntimeException; {:try_start_93e .. :try_end_984} :catch_94e

    .line 664
    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v43, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_984
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v43

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_98b
    .catch Ljava/lang/RuntimeException; {:try_start_984 .. :try_end_98b} :catch_c79

    move-object/from16 v42, v43

    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_205

    .line 698
    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_98f
    move-exception v63

    .line 699
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_990
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_243

    .line 706
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_99b
    move-exception v63

    .line 707
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_254

    .line 714
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9a7
    move-exception v63

    .line 715
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_257

    .line 729
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9b3
    move-exception v63

    .line 730
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_9b4
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_285

    .line 737
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9bf
    move-exception v63

    .line 738
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28c

    .line 755
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9cb
    move-exception v63

    .line 756
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_9cc
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2bf

    .line 773
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9d7
    move-exception v63

    .line 774
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_9d8
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2fa

    .line 783
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9e3
    move-exception v63

    .line 784
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30d

    .line 793
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9ef
    move-exception v63

    .line 794
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31f

    .line 803
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_9fb
    move-exception v63

    .line 804
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_9fc
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_338

    .line 813
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a07
    move-exception v63

    .line 814
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a08
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_351

    .line 821
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a13
    move-exception v63

    .line 822
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a14
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36a

    .line 832
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a1f
    move-exception v63

    move-object/from16 v2, v83

    .line 833
    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a22
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_387

    .line 854
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a2d
    move-exception v63

    .line 855
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a2e
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e1

    .line 863
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a39
    move-exception v63

    .line 864
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f3

    .line 872
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a45
    move-exception v63

    .line 873
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t start EPDG service:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_411

    .line 882
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a62
    move-exception v63

    .line 883
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting RNS Service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42f

    .line 895
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a6e
    move-exception v63

    .line 896
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_449

    .line 912
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a7a
    move-exception v63

    .line 913
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_459

    .line 919
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a86
    move-exception v63

    .line 920
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45e

    .line 935
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a92
    move-exception v63

    .line 936
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a93
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_498

    .line 943
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_a9e
    move-exception v63

    .line 944
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_a9f
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4af

    .line 953
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_aaa
    move-exception v63

    .line 954
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4cc

    .line 962
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_ab6
    move-exception v63

    .line 963
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4dd

    .line 972
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_ac2
    move-exception v63

    .line 973
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f5

    .line 982
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_ace
    move-exception v63

    .line 983
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_acf
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51b

    .line 992
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_ada
    move-exception v63

    .line 993
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_adb
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_542

    .line 1004
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_ae6
    move-exception v63

    .line 1005
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting AudioProfile Service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_572

    .line 1015
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_af2
    move-exception v63

    .line 1016
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting SensorHub Service"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_591

    .line 1031
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_afe
    move-exception v63

    .line 1032
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5bb

    .line 1049
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b0a
    move-exception v63

    .line 1050
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b0b
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f5

    .line 1077
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b16
    move-exception v63

    .line 1078
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_662

    .line 1089
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b22
    move-exception v63

    .line 1090
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_673

    .line 1097
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b2e
    move-exception v63

    .line 1098
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_687

    .line 1107
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b3a
    move-exception v63

    .line 1108
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b3b
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6a0

    .line 1116
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b46
    move-exception v63

    .line 1117
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6ae

    .line 1131
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b52
    move-exception v63

    .line 1132
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b53
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e5

    .line 1157
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b5e
    move-exception v63

    .line 1158
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b5f
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_74f

    .line 1168
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b6a
    move-exception v63

    .line 1169
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_76b

    .line 1182
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b76
    move-exception v63

    .line 1183
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b77
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_799

    .line 1198
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b82
    move-exception v63

    .line 1199
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b83
    const-string v4, "SystemServer"

    const-string v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7d2

    .line 1211
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_b8e
    move-exception v63

    .line 1212
    .restart local v63    # "e":Ljava/lang/Throwable;
    :goto_b8f
    const-string v4, "SystemServer"

    const-string v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v63

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7fb

    .line 1231
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v95    # "safeMode":Z
    :cond_b9a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_824

    .line 1243
    :catch_ba3
    move-exception v63

    .line 1244
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_83f

    .line 1251
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_baf
    move-exception v63

    .line 1252
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_844

    .line 1263
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_bbb
    move-exception v63

    .line 1264
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_859

    .line 1283
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v46    # "config":Landroid/content/res/Configuration;
    .restart local v77    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v108    # "w":Landroid/view/WindowManager;
    :catch_bc7
    move-exception v63

    .line 1284
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_896

    .line 1289
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_bd3
    move-exception v63

    .line 1290
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_89d

    .line 1296
    .end local v63    # "e":Ljava/lang/Throwable;
    :catch_bdf
    move-exception v63

    .line 1297
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8aa

    .line 1507
    .end local v63    # "e":Ljava/lang/Throwable;
    .restart local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v18    # "audioServiceF":Landroid/media/AudioService;
    .restart local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_beb
    move-exception v63

    .line 1508
    .restart local v63    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f6

    .line 1211
    .end local v10    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v32    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v33    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v46    # "config":Landroid/content/res/Configuration;
    .end local v63    # "e":Ljava/lang/Throwable;
    .end local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .end local v77    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "safeMode":Z
    .end local v108    # "w":Landroid/view/WindowManager;
    .restart local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :catch_bf7
    move-exception v63

    move-object/from16 v64, v65

    .end local v65    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v64    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto :goto_b8f

    .line 1198
    .end local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v94    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_bfb
    move-exception v63

    move-object/from16 v93, v94

    .end local v94    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto :goto_b83

    .line 1182
    .end local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v91    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :catch_bff
    move-exception v63

    move-object/from16 v90, v91

    .end local v91    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_b77

    .line 1157
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_c04
    move-exception v63

    move-object/from16 v75, v76

    .end local v76    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_b5f

    .line 1131
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_c09
    move-exception v63

    move-object/from16 v38, v39

    .end local v39    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_b53

    .line 1107
    .end local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_c0e
    move-exception v63

    move-object/from16 v44, v45

    .end local v45    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v44    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_b3b

    .line 1049
    .end local v96    # "serial":Lcom/android/server/SerialService;
    .restart local v97    # "serial":Lcom/android/server/SerialService;
    :catch_c13
    move-exception v63

    move-object/from16 v96, v97

    .end local v97    # "serial":Lcom/android/server/SerialService;
    .restart local v96    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_b0b

    .line 992
    .end local v40    # "audioService":Landroid/media/AudioService;
    .restart local v41    # "audioService":Landroid/media/AudioService;
    :catch_c18
    move-exception v63

    move-object/from16 v40, v41

    .end local v41    # "audioService":Landroid/media/AudioService;
    .restart local v40    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_adb

    .line 982
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_c1d
    move-exception v63

    move-object/from16 v109, v110

    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_acf

    .line 943
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_c22
    move-exception v63

    move-object/from16 v52, v53

    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_a9f

    .line 935
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v72    # "location":Lcom/android/server/LocationManagerService;
    :catch_c27
    move-exception v63

    move-object/from16 v71, v72

    .end local v72    # "location":Lcom/android/server/LocationManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_a93

    .line 854
    .end local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_c2c
    move-exception v63

    move-object/from16 v47, v48

    .end local v48    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_a2e

    .line 832
    :catch_c31
    move-exception v63

    goto/16 :goto_a22

    .line 821
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_c34
    move-exception v63

    move-object/from16 v6, v86

    .end local v86    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_a14

    .line 813
    .end local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_c39
    move-exception v63

    move-object/from16 v84, v85

    .end local v85    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v84    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_a08

    .line 803
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_c3e
    move-exception v63

    move-object/from16 v103, v104

    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_9fc

    .line 773
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_c43
    move-exception v63

    move-object/from16 v99, v100

    .end local v100    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_9d8

    .line 755
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_c48
    move-exception v63

    move-object/from16 v73, v74

    .end local v74    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_9cc

    .line 746
    :catch_c4d
    move-exception v4

    goto/16 :goto_29f

    .line 729
    .end local v81    # "mountService":Lcom/android/server/MountService;
    .restart local v82    # "mountService":Lcom/android/server/MountService;
    :catch_c50
    move-exception v63

    move-object/from16 v81, v82

    .end local v82    # "mountService":Lcom/android/server/MountService;
    .restart local v81    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_9b4

    .line 698
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_c55
    move-exception v63

    move-object/from16 v66, v67

    .end local v67    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_990

    .line 666
    .end local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v71    # "location":Lcom/android/server/LocationManagerService;
    .end local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v89    # "notification":Landroid/app/INotificationManager;
    .end local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_c5a
    move-exception v63

    goto/16 :goto_906

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_c5d
    move-exception v63

    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v35, v36

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_906

    .end local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_c64
    move-exception v63

    move-object/from16 v79, v80

    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_906

    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :catch_c6b
    move-exception v63

    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_906

    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_c72
    move-exception v63

    move-object/from16 v49, v50

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_906

    .end local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v111    # "watchdog":Lcom/android/server/Watchdog;
    :catch_c79
    move-exception v63

    move-object/from16 v49, v50

    .end local v50    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v49    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v68, v69

    .end local v69    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v68    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v42, v43

    .end local v43    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v42    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_906

    .line 604
    .end local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_c84
    move-exception v63

    move-object/from16 v79, v80

    .end local v80    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v79    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_92c

    .line 590
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_c89
    move-exception v63

    move-object/from16 v35, v36

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_8f8

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v52    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v66    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "location":Lcom/android/server/LocationManagerService;
    .restart local v73    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v75    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v89    # "notification":Landroid/app/INotificationManager;
    .restart local v90    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v93    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_c8e
    move-object/from16 v2, v83

    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_436

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_c92
    move-object/from16 v2, v83

    .end local v83    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_7fb
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1532
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1535
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1536
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1515
    const/4 v1, 0x0

    .line 1516
    .local v1, "ret":Landroid/content/ComponentName;
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1518
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1521
    if-eqz v1, :cond_37

    .line 1522
    const-string v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :goto_36
    return-object v1

    .line 1524
    :cond_37
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method
