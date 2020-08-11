.class final Lcom/android/server/tv/TvInputManagerService$BinderService;
.super Landroid/media/tv/ITvInputManager$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .registers 2

    .prologue
    .line 750
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService;-><init>(Lcom/android/server/tv/TvInputManagerService;)V

    return-void
.end method

.method private ensureParentalControlsPermission()V
    .registers 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PARENTAL_CONTROLS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 966
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have parental controls permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_16
    return-void
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;
    .registers 13
    .param p1, "deviceId"    # I
    .param p2, "callback"    # Landroid/media/tv/ITvInputHardwareCallback;
    .param p3, "info"    # Landroid/media/tv/TvInputInfo;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    .line 1364
    const/4 v0, 0x0

    .line 1375
    :goto_f
    return-object v0

    .line 1367
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1368
    .local v6, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1369
    .local v4, "callingUid":I
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "acquireTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v0, v1, v4, p4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1372
    .local v5, "resolvedUserId":I
    :try_start_24
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager;->acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;II)Landroid/media/tv/ITvInputHardware;
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_35

    move-result-object v0

    .line 1375
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_35
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 931
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "addBlockedRating"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 933
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 935
    .local v0, "identity":J
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_37

    .line 936
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 937
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->addBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 939
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    .line 941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 943
    return-void

    .line 939
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 941
    :catchall_37
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    .registers 19
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "config"    # Landroid/media/tv/TvStreamConfig;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16

    .line 1427
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1430
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1431
    .local v10, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1432
    .local v6, "callingUid":I
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "captureFrame"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v2, v3, v6, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 1435
    .local v7, "resolvedUserId":I
    const/4 v8, 0x0

    .line 1436
    .local v8, "hardwareInputId":Ljava/lang/String;
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_bd

    .line 1437
    :try_start_34
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v13

    .line 1438
    .local v13, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_62

    .line 1439
    const-string v2, "TvInputManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input not found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v2, 0x0

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_34 .. :try_end_5e} :catchall_ba

    .line 1455
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_61
    return v2

    .line 1442
    :cond_62
    :try_start_62
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1443
    .local v12, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 1445
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v2

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v12}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1450
    .end local v12    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_62 .. :try_end_a5} :catchall_ba

    .line 1451
    :try_start_a5
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    if-eqz v8, :cond_c2

    move-object v3, v8

    :goto_ae
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/tv/TvInputHardwareManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    :try_end_b5
    .catchall {:try_start_a5 .. :try_end_b5} :catchall_bd

    move-result v2

    .line 1455
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_61

    .line 1450
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_ba
    move-exception v2

    :try_start_bb
    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bd

    .line 1455
    :catchall_bd
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v13    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_c2
    move-object v3, p1

    .line 1451
    goto :goto_ae
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "windowToken"    # Landroid/os/IBinder;
    .param p3, "frame"    # Landroid/graphics/Rect;
    .param p4, "userId"    # I

    .prologue
    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1286
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "createOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1288
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1290
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1292
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1297
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1299
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1301
    return-void

    .line 1294
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1295
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in createOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1297
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1299
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1294
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;II)V
    .registers 22
    .param p1, "client"    # Landroid/media/tv/ITvInputClient;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "seq"    # I
    .param p4, "userId"    # I

    .prologue
    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 975
    .local v8, "callingUid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "createSession"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v3, v6, v8, v0, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v9

    .line 977
    .local v9, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 979
    .local v12, "identity":J
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_f3

    .line 980
    :try_start_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v3, v9}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v15

    .line 981
    .local v15, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 982
    .local v11, "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v11, :cond_65

    .line 983
    const-string v3, "TvInputManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find input state for inputId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 985
    monitor-exit v16
    :try_end_61
    .catchall {:try_start_21 .. :try_end_61} :catchall_f0

    .line 1018
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1020
    :goto_64
    return-void

    .line 987
    :cond_65
    :try_start_65
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v11}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1600(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    .line 988
    .local v5, "info":Landroid/media/tv/TvInputInfo;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1100(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 989
    .local v14, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    if-nez v14, :cond_92

    .line 990
    new-instance v14, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v14, v3, v6, v9, v7}, Lcom/android/server/tv/TvInputManagerService$ServiceState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;ILcom/android/server/tv/TvInputManagerService$1;)V

    .line 991
    .restart local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1100(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v3, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    :cond_92
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_ad

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p3

    # invokes: Lcom/android/server/tv/TvInputManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/TvInputManagerService;->access$4300(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 996
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    monitor-exit v16
    :try_end_a9
    .catchall {:try_start_65 .. :try_end_a9} :catchall_f0

    .line 1018
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 1000
    .restart local v5    # "info":Landroid/media/tv/TvInputInfo;
    :cond_ad
    :try_start_ad
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 1001
    .local v4, "sessionToken":Landroid/os/IBinder;
    new-instance v2, Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v7, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Landroid/media/tv/TvInputInfo;Landroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$1;)V

    .line 1005
    .local v2, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v15}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v3

    if-eqz v3, :cond_e4

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->createSessionInternalLocked(Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V
    invoke-static {v3, v6, v4, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4500(Lcom/android/server/tv/TvInputManagerService;Landroid/media/tv/ITvInputService;Landroid/os/IBinder;I)V

    .line 1016
    :goto_df
    monitor-exit v16
    :try_end_e0
    .catchall {:try_start_ad .. :try_end_e0} :catchall_f0

    .line 1018
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_64

    .line 1014
    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    # invokes: Lcom/android/server/tv/TvInputManagerService;->updateServiceConnectionLocked(Landroid/content/ComponentName;I)V
    invoke-static {v3, v6, v9}, Lcom/android/server/tv/TvInputManagerService;->access$4600(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V

    goto :goto_df

    .line 1016
    .end local v2    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v4    # "sessionToken":Landroid/os/IBinder;
    .end local v5    # "info":Landroid/media/tv/TvInputInfo;
    .end local v11    # "inputState":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v14    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    .end local v15    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_f0
    move-exception v3

    monitor-exit v16
    :try_end_f2
    .catchall {:try_start_e4 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v3
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    .line 1018
    :catchall_f3
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "userId"    # I

    .prologue
    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1109
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "dispatchSurfaceChanged"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p5, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1111
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1113
    .local v2, "identity":J
    :try_start_14
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_51

    .line 1115
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1117
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V

    .line 1119
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1120
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2, p3, p4}, Landroid/media/tv/ITvInputSession;->dispatchSurfaceChanged(III)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3f} :catch_44
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_3f} :catch_56
    .catchall {:try_start_1b .. :try_end_3f} :catchall_4e

    .line 1126
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_4e

    .line 1128
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    return-void

    .line 1123
    :catch_44
    move-exception v6

    move-object v1, v6

    .line 1124
    .local v1, "e":Ljava/lang/Exception;
    :goto_46
    :try_start_46
    const-string v6, "TvInputManagerService"

    const-string v8, "error in dispatchSurfaceChanged"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 1126
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_4e
    move-exception v6

    monitor-exit v7
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 1128
    :catchall_51
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1123
    :catch_56
    move-exception v6

    move-object v1, v6

    goto :goto_46
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1490
    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v18, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1491
    .local v12, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "android.permission.DUMP"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_48

    .line 1493
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Permission Denial: can\'t dump TvInputManager from pid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", uid="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    :goto_47
    return-void

    .line 1498
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19

    .line 1499
    :try_start_53
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "User Ids (Current user: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/tv/TvInputManagerService;->access$5400(Lcom/android/server/tv/TvInputManagerService;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "):"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1501
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_b9

    .line 1502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 1503
    .local v16, "userId":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1501
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    .line 1505
    .end local v16    # "userId":I
    :cond_b9
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1507
    const/4 v8, 0x0

    :goto_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_5a3

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static/range {v18 .. v18}, Lcom/android/server/tv/TvInputManagerService;->access$5500(Lcom/android/server/tv/TvInputManagerService;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 1509
    .restart local v16    # "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v17

    .line 1510
    .local v17, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UserState ("

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "):"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1513
    const-string v18, "inputMap: inputId -> TvInputState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1515
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_130
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_172

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1516
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_130

    .line 1606
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/tv/TvInputManagerService$TvInputState;>;"
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "userId":I
    .end local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_16f
    move-exception v18

    monitor-exit v19
    :try_end_171
    .catchall {:try_start_53 .. :try_end_171} :catchall_16f

    throw v18

    .line 1518
    .restart local v8    # "i":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v16    # "userId":I
    .restart local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_172
    :try_start_172
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1520
    const-string v18, "packageSet:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1522
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_187
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_197

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1523
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_187

    .line 1525
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_197
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1527
    const-string v18, "clientStateMap: ITvInputClient -> ClientState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1530
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2300(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v9    # "i$":Ljava/util/Iterator;
    :goto_1b0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_27c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1531
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$ClientState;

    .line 1532
    .local v3, "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1536
    const-string v18, "sessionTokens:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1538
    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->sessionTokens:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$3700(Lcom/android/server/tv/TvInputManagerService$ClientState;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_201
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 1539
    .local v15, "token":Landroid/os/IBinder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_201

    .line 1541
    .end local v15    # "token":Landroid/os/IBinder;
    :cond_22c
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1543
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "clientTokens: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->clientToken:Landroid/os/IBinder;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$5600(Lcom/android/server/tv/TvInputManagerService$ClientState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "userId: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ClientState;->userId:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$ClientState;->access$5700(Lcom/android/server/tv/TvInputManagerService$ClientState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1546
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_1b0

    .line 1548
    .end local v3    # "client":Lcom/android/server/tv/TvInputManagerService$ClientState;
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$ClientState;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_27c
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1550
    const-string v18, "serviceStateMap: ComponentName -> ServiceState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1553
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1100(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_295
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3a9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1554
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 1555
    .local v13, "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1559
    const-string v18, "sessionTokens:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1561
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->sessionTokens:Ljava/util/List;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2800(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_2e6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_311

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/IBinder;

    .line 1562
    .restart local v15    # "token":Landroid/os/IBinder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2e6

    .line 1564
    .end local v15    # "token":Landroid/os/IBinder;
    :cond_311
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1566
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "service: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Landroid/media/tv/ITvInputService;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callback: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$2000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Lcom/android/server/tv/TvInputManagerService$ServiceCallback;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1568
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bound: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->bound:Z
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3100(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "reconnecting: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->reconnecting:Z
    invoke-static {v13}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$3000(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Z

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_295

    .line 1573
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/tv/TvInputManagerService$ServiceState;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "service":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :cond_3a9
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1575
    const-string v18, "sessionStateMap: ITvInputSession -> SessionState"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1578
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_3c2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_54a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1579
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1580
    .local v14, "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ": "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1583
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "info: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "client: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3400(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1585
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "seq: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3500(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "callingUid: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2600(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "userId: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3300(Lcom/android/server/tv/TvInputManagerService$SessionState;)I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1588
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$2700(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "session: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$1900(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "logUri: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$5800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "hardwareSessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v14}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_3c2

    .line 1594
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/tv/TvInputManagerService$SessionState;>;"
    .end local v14    # "session":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_54a
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1596
    const-string v18, "callbackSet:"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1598
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_55f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_575

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputManagerCallback;

    .line 1599
    .local v2, "callback":Landroid/media/tv/ITvInputManagerCallback;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_55f

    .line 1601
    .end local v2    # "callback":Landroid/media/tv/ITvInputManagerCallback;
    :cond_575
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1603
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mainSessionToken: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static/range {v17 .. v17}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2500(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1507
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_bd

    .line 1606
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v16    # "userId":I
    .end local v17    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_5a3
    monitor-exit v19
    :try_end_5a4
    .catchall {:try_start_172 .. :try_end_5a4} :catchall_16f

    goto/16 :goto_47
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1402
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.CAPTURE_TV_INPUT"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_16

    .line 1405
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires CAPTURE_TV_INPUT permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1408
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1409
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1410
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "getAvailableTvStreamConfigList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1413
    .local v1, "resolvedUserId":I
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_38

    move-result-object v4

    .line 1416
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_38
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getBlockedRatings(I)Ljava/util/List;
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string v12, "getBlockedRatings"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v9, v10, v11, p1, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v7

    .line 912
    .local v7, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 914
    .local v2, "identity":J
    :try_start_14
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_46

    .line 915
    :try_start_1b
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9, v7}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v8

    .line 916
    .local v8, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v6, "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/tv/PersistentDataStore;->getBlockedRatings()[Landroid/media/tv/TvContentRating;

    move-result-object v0

    .local v0, "arr$":[Landroid/media/tv/TvContentRating;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_30
    if-ge v1, v4, :cond_3e

    aget-object v5, v0, v1

    .line 919
    .local v5, "rating":Landroid/media/tv/TvContentRating;
    invoke-virtual {v5}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 921
    .end local v5    # "rating":Landroid/media/tv/TvContentRating;
    :cond_3e
    monitor-exit v10
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_43

    .line 924
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v6

    .line 922
    .end local v0    # "arr$":[Landroid/media/tv/TvContentRating;
    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "ratings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_43
    move-exception v9

    :try_start_44
    monitor-exit v10
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v9
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 924
    :catchall_46
    move-exception v9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1347
    const/4 v2, 0x0

    .line 1354
    :goto_f
    return-object v2

    .line 1350
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1352
    .local v0, "identity":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager;->getHardwareList()Ljava/util/List;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_22

    move-result-object v2

    .line 1354
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTvContentRatingSystemList(I)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "getTvContentRatingSystemList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 806
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 808
    .local v0, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2d

    .line 809
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 810
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1700(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/List;

    move-result-object v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    .line 813
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    .line 811
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 813
    :catchall_2d
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    .registers 12
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 772
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "getTvInputInfo"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 774
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 776
    .local v0, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 777
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 778
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 779
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_33

    const/4 v5, 0x0

    :goto_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_38

    .line 782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    .line 779
    :cond_33
    :try_start_33
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1600(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v5

    goto :goto_2e

    .line 780
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v5

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 782
    :catchall_3b
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getTvInputList(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string v10, "getTvInputList"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v7, v8, v9, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 755
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 757
    .local v2, "identity":J
    :try_start_14
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_49

    .line 758
    :try_start_1b
    iget-object v7, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v7, v4}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v6

    .line 759
    .local v6, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v1, "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 761
    .local v5, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$1600(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 764
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .end local v5    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_46
    move-exception v7

    monitor-exit v8
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_46

    :try_start_48
    throw v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    .line 766
    :catchall_49
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 763
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "inputList":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TvInputInfo;>;"
    .restart local v6    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :cond_4e
    :try_start_4e
    monitor-exit v8
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_46

    .line 766
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1
.end method

.method public getTvInputState(Ljava/lang/String;I)I
    .registers 12
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 788
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "getTvInputState"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 790
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 792
    .local v0, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_3b

    .line 793
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 794
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .line 795
    .local v3, "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    if-nez v3, :cond_33

    const/4 v5, -0x1

    :goto_2e
    monitor-exit v6
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_38

    .line 798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 795
    :cond_33
    :try_start_33
    # getter for: Lcom/android/server/tv/TvInputManagerService$TvInputState;->state:I
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$TvInputState;->access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I

    move-result v5

    goto :goto_2e

    .line 796
    .end local v3    # "state":Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_38
    move-exception v5

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v5
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 798
    :catchall_3b
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isParentalControlsEnabled(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 863
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "isParentalControlsEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 865
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    .local v0, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_31

    .line 868
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 869
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/tv/PersistentDataStore;->isParentalControlsEnabled()Z

    move-result v4

    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    .line 872
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 870
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 872
    :catchall_31
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isRatingBlocked(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 894
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "isRatingBlocked"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 896
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 898
    .local v0, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_35

    .line 899
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 900
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->isRatingBlocked(Landroid/media/tv/TvContentRating;)Z

    move-result v4

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_1b .. :try_end_2e} :catchall_32

    .line 904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 902
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    .line 904
    :catchall_35
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSingleSessionActive(I)Z
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1462
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1463
    .local v0, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string v10, "isSingleSessionActive"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v8, v9, v0, p1, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1466
    .local v1, "resolvedUserId":I
    :try_start_16
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_6e

    .line 1467
    :try_start_1d
    iget-object v9, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v9, v1}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1468
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-ne v9, v6, :cond_32

    .line 1469
    monitor-exit v8
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_6b

    .line 1483
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_31
    return v6

    .line 1471
    :cond_32
    :try_start_32
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_65

    .line 1472
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    invoke-interface {v9, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1475
    .local v4, "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-nez v9, :cond_60

    const/4 v9, 0x1

    aget-object v9, v4, v9

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_65

    .line 1477
    :cond_60
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_6b

    .line 1483
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 1480
    .end local v4    # "sessionStates":[Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_65
    :try_start_65
    monitor-exit v8
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_6b

    .line 1483
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v7

    goto :goto_31

    .line 1481
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v8
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw v6
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 1483
    :catchall_6e
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 12
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 819
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "registerCallback"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v7, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 821
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 823
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_46

    .line 824
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v5, v1}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v4

    .line 825
    .local v4, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_43

    .line 827
    :try_start_28
    invoke-interface {p1}, Landroid/media/tv/ITvInputManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Lcom/android/server/tv/TvInputManagerService$BinderService$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/server/tv/TvInputManagerService$BinderService$1;-><init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_35} :catch_3a
    .catchall {:try_start_28 .. :try_end_35} :catchall_43

    .line 840
    :goto_35
    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_43

    .line 842
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 844
    return-void

    .line 837
    :catch_3a
    move-exception v0

    .line 838
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3b
    const-string v5, "TvInputManagerService"

    const-string v7, "client process has already died"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_43
    move-exception v5

    monitor-exit v6
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_43

    :try_start_45
    throw v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 842
    :catchall_46
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public relayoutOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "userId"    # I

    .prologue
    .line 1305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1306
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "relayoutOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1308
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1310
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1312
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->relayoutOverlayView(Landroid/graphics/Rect;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1317
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1319
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1321
    return-void

    .line 1314
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1315
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in relayoutOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1317
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1319
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1314
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public releaseSession(Landroid/os/IBinder;I)V
    .registers 10
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1027
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1028
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "releaseSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1030
    .local v1, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1032
    .local v2, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_28

    .line 1033
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->releaseSessionLocked(Landroid/os/IBinder;II)V
    invoke-static {v4, p1, v0, v1}, Lcom/android/server/tv/TvInputManagerService;->access$4700(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)V

    .line 1034
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_25

    .line 1036
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    return-void

    .line 1034
    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit v5
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 1036
    :catchall_28
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    .registers 11
    .param p1, "deviceId"    # I
    .param p2, "hardware"    # Landroid/media/tv/ITvInputHardware;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1382
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_f

    .line 1397
    :goto_e
    return-void

    .line 1387
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1388
    .local v2, "identity":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1389
    .local v0, "callingUid":I
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "releaseTvInputHardware"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v0, p3, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v1

    .line 1392
    .local v1, "resolvedUserId":I
    :try_start_23
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_30

    .line 1395
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_e

    :catchall_30
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeBlockedRating(Ljava/lang/String;I)V
    .registers 11
    .param p1, "rating"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 948
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "removeBlockedRating"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 950
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 952
    .local v0, "identity":J
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_37

    .line 953
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 954
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-static {p1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/tv/PersistentDataStore;->removeBlockedRating(Landroid/media/tv/TvContentRating;)V

    .line 956
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_34

    .line 958
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    return-void

    .line 956
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_34
    move-exception v4

    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v4
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 958
    :catchall_37
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeOverlayView(Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1326
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "removeOverlayView"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1328
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1330
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1332
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5}, Landroid/media/tv/ITvInputSession;->removeOverlayView()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1337
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1339
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1341
    return-void

    .line 1334
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1335
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in removeOverlayView"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1337
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1339
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1334
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public requestUnblockContent(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "unblockedRating"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1204
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "unblockContent"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1206
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1208
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1210
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->requestUnblockContent(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1215
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1217
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1219
    return-void

    .line 1212
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1213
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in requestUnblockContent"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1215
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1217
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1212
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public selectTrack(Landroid/os/IBinder;ILjava/lang/String;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "trackId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 1243
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1244
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "selectTrack"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1246
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1248
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1250
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->selectTrack(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1255
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1257
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1259
    return-void

    .line 1252
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1253
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in selectTrack"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1255
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1257
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1252
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public sendAppPrivateCommand(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1265
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "sendAppPrivateCommand"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p4, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1267
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1269
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1271
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2, p3}, Landroid/media/tv/ITvInputSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1276
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1278
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1280
    return-void

    .line 1273
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1274
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in appPrivateCommand"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1276
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1278
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1273
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public setCaptionEnabled(Landroid/os/IBinder;ZI)V
    .registers 12
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1224
    .local v0, "callingUid":I
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const-string v7, "setCaptionEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v5, v6, v0, p3, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1226
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1228
    .local v2, "identity":J
    :try_start_14
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_36

    .line 1230
    :try_start_1b
    iget-object v5, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v5, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v5

    invoke-interface {v5, p2}, Landroid/media/tv/ITvInputSession;->setCaptionEnabled(Z)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_29
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_24} :catch_3b
    .catchall {:try_start_1b .. :try_end_24} :catchall_33

    .line 1235
    :goto_24
    :try_start_24
    monitor-exit v6
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 1237
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1239
    return-void

    .line 1232
    :catch_29
    move-exception v5

    move-object v1, v5

    .line 1233
    .local v1, "e":Ljava/lang/Exception;
    :goto_2b
    :try_start_2b
    const-string v5, "TvInputManagerService"

    const-string v7, "error in setCaptionEnabled"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 1235
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v5

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_33

    :try_start_35
    throw v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1237
    :catchall_36
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1232
    :catch_3b
    move-exception v5

    move-object v1, v5

    goto :goto_2b
.end method

.method public setMainSession(Landroid/os/IBinder;I)V
    .registers 13
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "userId"    # I

    .prologue
    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1046
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "setMainSession"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p2, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1048
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1050
    .local v2, "identity":J
    :try_start_14
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_4d

    .line 1051
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v6, v4}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v5

    .line 1052
    .local v5, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2500(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_2c

    .line 1053
    monitor-exit v7
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_4a

    .line 1071
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1073
    :goto_2b
    return-void

    .line 1058
    :cond_2c
    :try_start_2c
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2500(Lcom/android/server/tv/TvInputManagerService$UserState;)Landroid/os/IBinder;

    move-result-object v1

    .line 1059
    .local v1, "oldMainSessionToken":Landroid/os/IBinder;
    # setter for: Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;
    invoke-static {v5, p1}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2502(Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1063
    if-eqz p1, :cond_3b

    .line 1064
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v6, p1, v8, v0, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1066
    :cond_3b
    if-eqz v1, :cond_45

    .line 1067
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->setMainLocked(Landroid/os/IBinder;ZII)V
    invoke-static {v6, v1, v8, v9, p2}, Lcom/android/server/tv/TvInputManagerService;->access$4800(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;ZII)V

    .line 1069
    :cond_45
    monitor-exit v7
    :try_end_46
    .catchall {:try_start_2c .. :try_end_46} :catchall_4a

    .line 1071
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2b

    .line 1069
    .end local v1    # "oldMainSessionToken":Landroid/os/IBinder;
    .end local v5    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_4a
    move-exception v6

    :try_start_4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 1071
    :catchall_4d
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setParentalControlsEnabled(ZI)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/server/tv/TvInputManagerService$BinderService;->ensureParentalControlsPermission()V

    .line 879
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "setParentalControlsEnabled"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 881
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 883
    .local v0, "identity":J
    :try_start_17
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_33

    .line 884
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 885
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->persistentDataStore:Lcom/android/server/tv/PersistentDataStore;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$4100(Lcom/android/server/tv/TvInputManagerService$UserState;)Lcom/android/server/tv/PersistentDataStore;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/tv/PersistentDataStore;->setParentalControlsEnabled(Z)V

    .line 886
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_30

    .line 888
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 890
    return-void

    .line 886
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_30
    move-exception v4

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 888
    :catchall_33
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .registers 14
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "userId"    # I

    .prologue
    .line 1077
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1078
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    const-string v8, "setSurface"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v6, v7, v0, p3, v8}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v4

    .line 1080
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1082
    .local v2, "identity":J
    :try_start_14
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_57

    .line 1084
    :try_start_1b
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v6, p1, v0, v4}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v5

    .line 1086
    .local v5, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_3a

    .line 1087
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_4a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1b .. :try_end_30} :catch_61
    .catchall {:try_start_1b .. :try_end_30} :catchall_54

    .line 1095
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :goto_30
    :try_start_30
    monitor-exit v7
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_54

    .line 1097
    if-eqz p2, :cond_36

    .line 1099
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1101
    :cond_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    return-void

    .line 1089
    .restart local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_3a
    :try_start_3a
    iget-object v6, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v5}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    const/16 v9, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v6, v8, v9, v4}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/media/tv/ITvInputSession;->setSurface(Landroid/view/Surface;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_49} :catch_4a
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_3a .. :try_end_49} :catch_61
    .catchall {:try_start_3a .. :try_end_49} :catchall_54

    goto :goto_30

    .line 1092
    .end local v5    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_4a
    move-exception v6

    move-object v1, v6

    .line 1093
    .local v1, "e":Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    const-string v6, "TvInputManagerService"

    const-string v8, "error in setSurface"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 1095
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v6

    monitor-exit v7
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_54

    :try_start_56
    throw v6
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    .line 1097
    :catchall_57
    move-exception v6

    if-eqz p2, :cond_5d

    .line 1099
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 1101
    :cond_5d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1092
    :catch_61
    move-exception v6

    move-object v1, v6

    goto :goto_4c
.end method

.method public setVolume(Landroid/os/IBinder;FI)V
    .registers 16
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "userId"    # I

    .prologue
    .line 1134
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1135
    .local v1, "REMOTE_VOLUME_ON":F
    const/4 v0, 0x0

    .line 1136
    .local v0, "REMOTE_VOLUME_OFF":F
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1137
    .local v2, "callingUid":I
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    const-string v10, "setVolume"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v8, v9, v2, p3, v10}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v6

    .line 1139
    .local v6, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1141
    .local v4, "identity":J
    :try_start_17
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_5d

    .line 1143
    :try_start_1e
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionStateLocked(Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {v8, p1, v2, v6}, Lcom/android/server/tv/TvInputManagerService;->access$4900(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Lcom/android/server/tv/TvInputManagerService$SessionState;

    move-result-object v7

    .line 1145
    .local v7, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v7}, Lcom/android/server/tv/TvInputManagerService;->access$5000(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/media/tv/ITvInputSession;->setVolume(F)V

    .line 1146
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v8

    if-eqz v8, :cond_49

    .line 1149
    iget-object v8, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3800(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x3e8

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v8, v10, v11, v6}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_4e

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_46
    invoke-interface {v10, v8}, Landroid/media/tv/ITvInputSession;->setVolume(F)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_49} :catch_50
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1e .. :try_end_49} :catch_62
    .catchall {:try_start_1e .. :try_end_49} :catchall_5a

    .line 1156
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_5a

    .line 1158
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1160
    return-void

    .line 1149
    .restart local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :cond_4e
    const/4 v8, 0x0

    goto :goto_46

    .line 1153
    .end local v7    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    :catch_50
    move-exception v8

    move-object v3, v8

    .line 1154
    .local v3, "e":Ljava/lang/Exception;
    :goto_52
    :try_start_52
    const-string v8, "TvInputManagerService"

    const-string v10, "error in setVolume"

    invoke-static {v8, v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1156
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_5a
    move-exception v8

    monitor-exit v9
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw v8
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 1158
    :catchall_5d
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    .line 1153
    :catch_62
    move-exception v8

    move-object v3, v8

    goto :goto_52
.end method

.method public tune(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 19
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "channelUri"    # Landroid/net/Uri;
    .param p3, "params"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1165
    .local v3, "callingUid":I
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    const-string v12, "tune"

    move/from16 v0, p4

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v10, v11, v3, v0, v12}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v5

    .line 1167
    .local v5, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1169
    .local v6, "identity":J
    :try_start_16
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_95

    .line 1171
    :try_start_1d
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getSessionLocked(Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;
    invoke-static {v10, p1, v3, v5}, Lcom/android/server/tv/TvInputManagerService;->access$5100(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;II)Landroid/media/tv/ITvInputSession;

    move-result-object v10

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Landroid/media/tv/ITvInputSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1173
    invoke-static/range {p2 .. p2}, Landroid/media/tv/TvContract;->isChannelUriForPassthroughInput(Landroid/net/Uri;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2d} :catch_84
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_1d .. :try_end_2d} :catch_9a
    .catchall {:try_start_1d .. :try_end_2d} :catchall_92

    move-result v10

    if-eqz v10, :cond_35

    .line 1175
    :try_start_30
    monitor-exit v11
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_92

    .line 1196
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1198
    :goto_34
    return-void

    .line 1178
    :cond_35
    :try_start_35
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v10, v5}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v9

    .line 1179
    .local v9, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$1800(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 1182
    .local v8, "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    .line 1183
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    # getter for: Lcom/android/server/tv/TvInputManagerService$SessionState;->info:Landroid/media/tv/TvInputInfo;
    invoke-static {v8}, Lcom/android/server/tv/TvInputManagerService$SessionState;->access$3200(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/TvInputInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1185
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1186
    move-object/from16 v0, p3

    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1187
    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 1188
    iget-object v10, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mWatchLogHandler:Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
    invoke-static {v10}, Lcom/android/server/tv/TvInputManagerService;->access$5200(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_7f} :catch_84
    .catch Lcom/android/server/tv/TvInputManagerService$SessionNotFoundException; {:try_start_35 .. :try_end_7f} :catch_9a
    .catchall {:try_start_35 .. :try_end_7f} :catchall_92

    .line 1194
    :try_start_7f
    monitor-exit v11
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_92

    .line 1196
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    .line 1190
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "sessionState":Lcom/android/server/tv/TvInputManagerService$SessionState;
    .end local v9    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catch_84
    move-exception v10

    move-object v4, v10

    .line 1191
    .local v4, "e":Ljava/lang/Exception;
    :goto_86
    :try_start_86
    const-string v10, "TvInputManagerService"

    const-string v12, "error in tune"

    invoke-static {v10, v12, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1192
    monitor-exit v11
    :try_end_8e
    .catchall {:try_start_86 .. :try_end_8e} :catchall_92

    .line 1196
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_34

    .line 1194
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_92
    move-exception v10

    :try_start_93
    monitor-exit v11
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v10
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 1196
    :catchall_95
    move-exception v10

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    .line 1190
    :catch_9a
    move-exception v10

    move-object v4, v10

    goto :goto_86
.end method

.method public unregisterCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
    .registers 11
    .param p1, "callback"    # Landroid/media/tv/ITvInputManagerCallback;
    .param p2, "userId"    # I

    .prologue
    .line 848
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string v7, "unregisterCallback"

    # invokes: Lcom/android/server/tv/TvInputManagerService;->resolveCallingUserId(IIILjava/lang/String;)I
    invoke-static {v4, v5, v6, p2, v7}, Lcom/android/server/tv/TvInputManagerService;->access$4000(Lcom/android/server/tv/TvInputManagerService;IIILjava/lang/String;)I

    move-result v2

    .line 850
    .local v2, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 852
    .local v0, "identity":J
    :try_start_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_30

    .line 853
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;
    invoke-static {v4, v2}, Lcom/android/server/tv/TvInputManagerService;->access$600(Lcom/android/server/tv/TvInputManagerService;I)Lcom/android/server/tv/TvInputManagerService$UserState;

    move-result-object v3

    .line 854
    .local v3, "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 855
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2d

    .line 857
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    return-void

    .line 855
    .end local v3    # "userState":Lcom/android/server/tv/TvInputManagerService$UserState;
    :catchall_2d
    move-exception v4

    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v4
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 857
    :catchall_30
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
