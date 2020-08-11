.class final Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmartBookPlugReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .prologue
    .line 3286
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 3286
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3289
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3290
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartBookPlugState:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$2902(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3295
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartBookPlugState:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 3296
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSmartBookRDMALimited:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 3297
    const-string v1, "persist.smb.phone.both.on"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 3318
    :goto_2c
    invoke-static {p1}, Lcom/android/server/power/ShutdownThread;->powerOffDialogRedrawForSmartBook(Landroid/content/Context;)V

    .line 3325
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->setSmartBookScreenInternal(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3326
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x4000

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1076(Lcom/android/server/power/PowerManagerService;I)I

    .line 3328
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;JIII)Z

    .line 3329
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1700(Lcom/android/server/power/PowerManagerService;)V

    .line 3330
    monitor-exit v7

    .line 3331
    return-void

    .line 3302
    :cond_50
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 3303
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_7f

    .line 3304
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 3305
    const-string v1, "PowerManagerService"

    const-string v2, "SmartBookPlugReceiver: InCalling, no need to invoke smartbook sleep mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 3330
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :catchall_6e
    move-exception v1

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_7 .. :try_end_70} :catchall_6e

    throw v1

    .line 3307
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_71
    :try_start_71
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_2c

    .line 3310
    :cond_7f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_2c

    .line 3314
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_8d
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepNoUpdateLocked(JIII)Z
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;JIII)Z

    goto :goto_2c

    .line 3320
    :cond_9b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mIPOShutdown:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 3321
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SmartBookPlugReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/power/PowerManagerService;->mSmartBookWakeUpPendingByIPO:Z
    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1102(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_a9
    .catchall {:try_start_71 .. :try_end_a9} :catchall_6e

    goto :goto_2f
.end method
