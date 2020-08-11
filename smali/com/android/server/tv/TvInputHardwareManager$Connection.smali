.class Lcom/android/server/tv/TvInputHardwareManager$Connection;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/tv/ITvInputHardwareCallback;

.field private mCallingUid:Ljava/lang/Integer;

.field private mConfigs:[Landroid/media/tv/TvStreamConfig;

.field private mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

.field private final mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mInfo:Landroid/media/tv/TvInputInfo;

.field private mOnFirstFrameCaptured:Ljava/lang/Runnable;

.field private mResolvedUserId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 4
    .param p2, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    const/4 v0, 0x0

    .line 563
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 558
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 559
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    .line 560
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    .line 564
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 565
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->access$800(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 642
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 643
    monitor-exit v6

    .line 644
    return-void

    .line 643
    :catchall_12
    move-exception v0

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    return-object v0
.end method

.method public getCallingUidLocked()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfigsLocked()[Landroid/media/tv/TvStreamConfig;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    return-object v0
.end method

.method public getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object v0
.end method

.method public getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-object v0
.end method

.method public getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    .registers 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object v0
.end method

.method public getInfoLocked()Landroid/media/tv/TvInputInfo;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method public getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getResolvedUserIdLocked()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 9
    .param p1, "hardware"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "callingUid"    # Ljava/lang/Integer;
    .param p5, "resolvedUserId"    # Ljava/lang/Integer;

    .prologue
    .line 571
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    if-eqz v1, :cond_e

    .line 573
    :try_start_4
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-interface {v1}, Landroid/media/tv/ITvInputHardwareCallback;->onReleased()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_2d

    .line 577
    :goto_9
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 579
    :cond_e
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 580
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    .line 581
    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    .line 582
    iput-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    .line 583
    iput-object p5, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    .line 584
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 586
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    if-eqz v1, :cond_2c

    .line 588
    :try_start_23
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_38

    .line 593
    :cond_2c
    :goto_2c
    return-void

    .line 574
    :catch_2d
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error in Connection::resetLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_38
    move-exception v0

    .line 590
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error in Connection::resetLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    .registers 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    .line 633
    return-void
.end method

.method public updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V
    .registers 2
    .param p1, "configs"    # [Landroid/media/tv/TvStreamConfig;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    .line 597
    return-void
.end method
