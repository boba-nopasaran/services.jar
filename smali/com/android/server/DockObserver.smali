.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DockObserver"


# instance fields
.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 61
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 63
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 64
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 215
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 227
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 73
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 74
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 78
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 80
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method private handleDockStateChange()V
    .registers 16

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 150
    iget-object v8, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 151
    :try_start_7
    const-string v7, "DockObserver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dock state changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget v2, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 154
    .local v2, "previousDockState":I
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v7, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 157
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v7, "device_provisioned"

    const/4 v9, 0x0

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4d

    .line 160
    const-string v7, "DockObserver"

    const-string v9, "Device not provisioned, skipping dock broadcast"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v8

    .line 213
    :goto_4c
    return-void

    .line 165
    :cond_4d
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.DOCK_EVENT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x20000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    const-string v7, "android.intent.extra.DOCK_STATE"

    iget v9, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v7, "dock_sounds_enabled"

    const/4 v9, 0x1

    invoke-static {v0, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_a8

    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, "whichSound":Ljava/lang/String;
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v7, :cond_bb

    .line 175
    if-eq v2, v11, :cond_74

    if-eq v2, v13, :cond_74

    if-ne v2, v14, :cond_b6

    .line 178
    :cond_74
    const-string v6, "desk_undock_sound"

    .line 192
    :cond_76
    :goto_76
    if-eqz v6, :cond_a8

    .line 193
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_a8

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file://"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 196
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_a8

    .line 197
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 199
    .local v3, "sfx":Landroid/media/Ringtone;
    if-eqz v3, :cond_a8

    .line 200
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 201
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 211
    .end local v3    # "sfx":Landroid/media/Ringtone;
    .end local v4    # "soundPath":Ljava/lang/String;
    .end local v5    # "soundUri":Landroid/net/Uri;
    .end local v6    # "whichSound":Ljava/lang/String;
    :cond_a8
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 212
    monitor-exit v8

    goto :goto_4c

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "previousDockState":I
    :catchall_b3
    move-exception v7

    monitor-exit v8
    :try_end_b5
    .catchall {:try_start_7 .. :try_end_b5} :catchall_b3

    throw v7

    .line 179
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "previousDockState":I
    .restart local v6    # "whichSound":Ljava/lang/String;
    :cond_b6
    if-ne v2, v12, :cond_76

    .line 180
    :try_start_b8
    const-string v6, "car_undock_sound"

    goto :goto_76

    .line 183
    :cond_bb
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v7, v11, :cond_c7

    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v7, v13, :cond_c7

    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v7, v14, :cond_ca

    .line 186
    :cond_c7
    const-string v6, "desk_dock_sound"

    goto :goto_76

    .line 187
    :cond_ca
    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v7, v12, :cond_76

    .line 188
    const-string v6, "car_dock_sound"
    :try_end_d0
    .catchall {:try_start_b8 .. :try_end_d0} :catchall_b3

    goto :goto_76
.end method

.method private init()V
    .registers 8

    .prologue
    .line 103
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 105
    const/16 v4, 0x400

    :try_start_5
    new-array v0, v4, [C

    .line 106
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_e} :catch_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_44
    .catchall {:try_start_5 .. :try_end_e} :catchall_41

    .line 108
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_11
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 109
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 110
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_33

    .line 112
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_31} :catch_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_44
    .catchall {:try_start_2e .. :try_end_31} :catchall_41

    .line 119
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_31
    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_41

    .line 120
    return-void

    .line 112
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_33
    move-exception v4

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_38} :catch_38
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_38} :catch_44
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    .line 114
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_38
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_39
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 119
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw v4

    .line 116
    :catch_44
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_45
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_41

    goto :goto_31
.end method

.method private setActualDockStateLocked(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 124
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_9

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 127
    :cond_9
    return-void
.end method

.method private setDockStateLocked(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 130
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2b

    .line 131
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 132
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2b

    .line 134
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_28

    .line 137
    :cond_1f
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 139
    :cond_28
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 142
    :cond_2b
    return-void
.end method

.method private updateLocked()V
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 146
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .prologue
    .line 90
    const/16 v0, 0x226

    if-ne p1, v0, :cond_12

    .line 91
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 95
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_11

    .line 96
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 98
    :cond_11
    monitor-exit v1

    .line 100
    :cond_12
    return-void

    .line 98
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    .line 85
    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    return-void
.end method
