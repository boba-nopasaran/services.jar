.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mActualInteractiveState:I

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private mLastReason:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 10
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "appOps"    # Lcom/android/internal/app/IAppOpsService;
    .param p5, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p6, "policy"    # Landroid/view/WindowManagerPolicy;

    .prologue
    const/high16 v2, 0x50000000

    const/4 v1, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 111
    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 506
    new-instance v0, Lcom/android/server/power/Notifier$4;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v0, Lcom/android/server/power/Notifier$5;

    invoke-direct {v0, p0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 123
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    .line 124
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 125
    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 126
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 127
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 129
    new-instance v0, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_64} :catch_65

    .line 141
    :goto_64
    return-void

    .line 140
    :catch_65
    move-exception v0

    goto :goto_64
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/Notifier;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    .prologue
    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 428
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 429
    return-void
.end method

.method private static getBatteryStatsWakeLockMonitorType(I)I
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 235
    const v0, 0xffff

    and-int/2addr v0, p0

    sparse-switch v0, :sswitch_data_c

    .line 240
    const/4 v0, 0x1

    :goto_8
    return v0

    .line 238
    :sswitch_9
    const/4 v0, 0x0

    goto :goto_8

    .line 235
    nop

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_9
        0x20 -> :sswitch_9
    .end sparse-switch
.end method

.method private handleWakefulnessChange(IZI)V
    .registers 10
    .param p1, "wakefulness"    # I
    .param p2, "interactive"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 287
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "interactiveChanged":Z
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 298
    if-eqz p2, :cond_38

    .line 300
    :try_start_13
    iget v4, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eq v4, v1, :cond_36

    move v0, v1

    .line 301
    :goto_18
    if-eqz v0, :cond_2d

    .line 302
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    .line 303
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 304
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 314
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 355
    :cond_2d
    :goto_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_60

    .line 358
    if-eqz v0, :cond_35

    .line 360
    :try_start_30
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_65

    .line 363
    :cond_35
    :goto_35
    return-void

    :cond_36
    move v0, v2

    .line 300
    goto :goto_18

    .line 322
    :cond_38
    :try_start_38
    iget v4, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eq v4, v5, :cond_63

    move v0, v1

    .line 323
    :goto_3d
    if-eqz v0, :cond_2d

    .line 324
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 326
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v1, :cond_52

    .line 327
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 328
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 330
    :cond_52
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$3;

    invoke-direct {v2, p0, p3}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 352
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_2d

    .line 355
    :catchall_60
    move-exception v1

    monitor-exit v3
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v1

    :cond_63
    move v0, v2

    .line 322
    goto :goto_3d

    .line 361
    :catch_65
    move-exception v1

    goto :goto_35
.end method

.method private playWirelessChargingStartedSound()V
    .registers 6

    .prologue
    .line 548
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wireless_charging_started_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "soundPath":Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 552
    .local v2, "soundUri":Landroid/net/Uri;
    if-eqz v2, :cond_36

    .line 553
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 554
    .local v0, "sfx":Landroid/media/Ringtone;
    if-eqz v0, :cond_36

    .line 555
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 556
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 561
    .end local v0    # "sfx":Landroid/media/Ringtone;
    .end local v2    # "soundUri":Landroid/net/Uri;
    :cond_36
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v3}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 562
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 523
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 527
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 533
    :goto_18
    return-void

    .line 530
    :cond_19
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 531
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_18
.end method

.method private sendNextBroadcast()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 449
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 450
    :try_start_5
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-nez v1, :cond_23

    .line 452
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 453
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 476
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 477
    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 478
    .local v0, "powerState":I
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_3a

    .line 480
    const/16 v1, 0xaa5

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 482
    if-ne v0, v3, :cond_5a

    .line 483
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    .line 487
    .end local v0    # "powerState":I
    :goto_22
    return-void

    .line 454
    :cond_23
    :try_start_23
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_42

    .line 456
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_33

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-ne v1, v4, :cond_3d

    .line 458
    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 459
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_f

    .line 478
    :catchall_3a
    move-exception v1

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3a

    throw v1

    .line 461
    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 462
    monitor-exit v2

    goto :goto_22

    .line 466
    :cond_42
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4e

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-ne v1, v3, :cond_55

    .line 468
    :cond_4e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 469
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_f

    .line 471
    :cond_55
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 472
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_3a

    goto :goto_22

    .line 485
    .restart local v0    # "powerState":I
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    goto :goto_22
.end method

.method private sendUserActivity()V
    .registers 3

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v0, :cond_9

    .line 434
    monitor-exit v1

    .line 440
    :goto_8
    return-void

    .line 436
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 437
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 439
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    goto :goto_8

    .line 437
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .registers 10

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 494
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 498
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 504
    :goto_19
    return-void

    .line 501
    :cond_1a
    const/16 v0, 0xaa7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 502
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_19
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 410
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_2d

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/power/Notifier;->mActualInteractiveState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_2d

    .line 414
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 415
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 416
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 417
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 418
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2d
    return-void
.end method


# virtual methods
.method public onUserActivity(II)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .prologue
    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    .line 379
    :goto_5
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1f

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 382
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 384
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1f
    monitor-exit v2

    .line 387
    return-void

    .line 386
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 375
    :catch_24
    move-exception v1

    goto :goto_5
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 157
    .local v5, "monitorType":I
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1a

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1a

    const/4 v6, 0x1

    .line 159
    .local v6, "unimportantForLogging":Z
    :goto_e
    if-eqz p6, :cond_1c

    .line 160
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 172
    .end local v5    # "monitorType":I
    .end local v6    # "unimportantForLogging":Z
    :goto_19
    return-void

    .line 157
    .restart local v5    # "monitorType":I
    :cond_1a
    const/4 v6, 0x0

    goto :goto_e

    .line 163
    .restart local v6    # "unimportantForLogging":Z
    :cond_1c
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 166
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_19

    .line 169
    .end local v5    # "monitorType":I
    .end local v6    # "unimportantForLogging":Z
    :catch_33
    move-exception v0

    goto :goto_19
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 36
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    .prologue
    .line 182
    if-eqz p6, :cond_33

    if-eqz p13, :cond_33

    .line 183
    invoke-static/range {p1 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v6

    .line 184
    .local v6, "monitorType":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v11

    .line 185
    .local v11, "newMonitorType":I
    const/high16 v1, 0x40000000    # 2.0f

    and-int v1, v1, p8

    if-eqz v1, :cond_31

    const/16 v1, 0x3e8

    move/from16 v0, p11

    if-ne v0, v1, :cond_31

    const/4 v12, 0x1

    .line 194
    .local v12, "unimportantForLogging":Z
    :goto_19
    :try_start_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v2, p6

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v7, p13

    move/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p14

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_4a

    .line 205
    .end local v6    # "monitorType":I
    .end local v11    # "newMonitorType":I
    .end local v12    # "unimportantForLogging":Z
    :goto_30
    return-void

    .line 185
    .restart local v6    # "monitorType":I
    .restart local v11    # "newMonitorType":I
    :cond_31
    const/4 v12, 0x0

    goto :goto_19

    .line 201
    .end local v6    # "monitorType":I
    .end local v11    # "newMonitorType":I
    :cond_33
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v13, p0

    move/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    move/from16 v17, p11

    move/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    .line 202
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_30

    .line 197
    .restart local v6    # "monitorType":I
    .restart local v11    # "newMonitorType":I
    .restart local v12    # "unimportantForLogging":Z
    :catch_4a
    move-exception v1

    goto :goto_30
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 14
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 220
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    .line 221
    .local v5, "monitorType":I
    if-eqz p6, :cond_10

    .line 222
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 232
    .end local v5    # "monitorType":I
    :goto_f
    return-void

    .line 225
    .restart local v5    # "monitorType":I
    :cond_10
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 226
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_f

    .line 229
    .end local v5    # "monitorType":I
    :catch_27
    move-exception v0

    goto :goto_f
.end method

.method public onWakefulnessChangeFinished(I)V
    .registers 4
    .param p1, "wakefulness"    # I

    .prologue
    .line 277
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 278
    .local v0, "interactive":Z
    if-nez v0, :cond_b

    .line 279
    iget v1, p0, Lcom/android/server/power/Notifier;->mLastReason:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V

    .line 281
    :cond_b
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .registers 5
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I

    .prologue
    .line 255
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 256
    .local v0, "interactive":Z
    if-eqz v0, :cond_f

    .line 257
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/power/Notifier;->handleWakefulnessChange(IZI)V

    .line 263
    :goto_9
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 264
    return-void

    .line 259
    :cond_f
    iput p2, p0, Lcom/android/server/power/Notifier;->mLastReason:I

    goto :goto_9
.end method

.method public onWirelessChargingStarted()V
    .registers 4

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 398
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 399
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    return-void
.end method
