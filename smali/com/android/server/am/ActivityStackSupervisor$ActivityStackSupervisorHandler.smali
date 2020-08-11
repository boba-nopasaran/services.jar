.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4066
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4067
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4068
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4071
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4072
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 4073
    monitor-exit v1

    .line 4074
    return-void

    .line 4073
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4078
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_46c

    .line 4276
    :cond_7
    :goto_7
    return-void

    .line 4080
    :pswitch_8
    sget-boolean v14, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_IDLE:Z

    if-eqz v14, :cond_2a

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleMessage: IDLE_TIMEOUT_MSG: r="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4081
    :cond_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v14, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v14, :cond_5d

    .line 4082
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4083
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v15, 0x64

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 4084
    .local v7, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v14, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v14, v7, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    .line 4090
    .end local v7    # "nmsg":Landroid/os/Message;
    :cond_5d
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_7

    .line 4093
    :pswitch_69
    sget-boolean v14, Lcom/android/server/am/ActivityStackSupervisor;->DEBUG_IDLE:Z

    if-eqz v14, :cond_8b

    const-string v14, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleMessage: IDLE_NOW_MSG: r="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    :cond_8b
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_7

    .line 4097
    :pswitch_98
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4098
    :try_start_9f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4099
    monitor-exit v15

    goto/16 :goto_7

    :catchall_a9
    move-exception v14

    monitor-exit v15
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_a9

    throw v14

    .line 4102
    :pswitch_ac
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4103
    :try_start_b3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v14

    if-eqz v14, :cond_d9

    .line 4104
    const-string v14, "ActivityManager"

    const-string v16, "Sleep timeout!  Sleeping now."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4106
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 4108
    :cond_d9
    monitor-exit v15

    goto/16 :goto_7

    :catchall_dc
    move-exception v14

    monitor-exit v15
    :try_end_de
    .catchall {:try_start_b3 .. :try_end_de} :catchall_dc

    throw v14

    .line 4111
    :pswitch_df
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v14, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v14, :cond_101

    .line 4112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4113
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v15, 0x68

    const-wide/16 v16, 0x2710

    invoke-virtual/range {v14 .. v17}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 4116
    :cond_101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4117
    :try_start_108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v14

    if-eqz v14, :cond_126

    .line 4118
    const-string v14, "ActivityManager"

    const-string v16, "Launch timeout has expired, giving up wake lock!"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4125
    :cond_126
    monitor-exit v15

    goto/16 :goto_7

    :catchall_129
    move-exception v14

    monitor-exit v15
    :try_end_12b
    .catchall {:try_start_108 .. :try_end_12b} :catchall_129

    throw v14

    .line 4128
    :pswitch_12c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAddedLocked(I)V

    goto/16 :goto_7

    .line 4131
    :pswitch_139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChangedLocked(I)V

    goto/16 :goto_7

    .line 4134
    :pswitch_146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemovedLocked(I)V

    goto/16 :goto_7

    .line 4137
    :pswitch_153
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4138
    .local v3, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4139
    .local v2, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v2, :cond_7

    .line 4141
    :try_start_15d
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_174

    const/4 v14, 0x1

    :goto_16c
    invoke-interface {v2, v15, v14}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_15d .. :try_end_16f} :catch_171

    goto/16 :goto_7

    .line 4142
    :catch_171
    move-exception v14

    goto/16 :goto_7

    .line 4141
    :cond_174
    const/4 v14, 0x0

    goto :goto_16c

    .line 4149
    .end local v2    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_176
    :try_start_176
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v14

    if-nez v14, :cond_19e

    .line 4150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v15, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4152
    :cond_19e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4153
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    if-nez v14, :cond_23f

    const/4 v14, 0x1

    :goto_1b5
    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v15, v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$302(Lcom/android/server/am/ActivityStackSupervisor;Z)Z

    .line 4154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v14

    if-eqz v14, :cond_1fc

    .line 4155
    const/high16 v6, 0x3bf0000

    .line 4157
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v14

    if-nez v14, :cond_1d1

    .line 4158
    const/high16 v14, 0x1200000

    xor-int/2addr v6, v14

    .line 4161
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v15}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v6, v15, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4164
    .end local v6    # "flags":I
    :cond_1fc
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v15}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v15

    const-string v16, "Lock-to-App"

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4165
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 4166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v15, v0, v14, v1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_236
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_236} :catch_238

    goto/16 :goto_7

    .line 4169
    :catch_238
    move-exception v5

    .line 4170
    .local v5, "ex":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 4153
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_23f
    const/4 v14, 0x0

    goto/16 :goto_1b5

    .line 4176
    :pswitch_242
    :try_start_242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v14

    if-eqz v14, :cond_278

    .line 4177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v14 .. v17}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4180
    :cond_278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v15}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 4181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v14

    if-eqz v14, :cond_2a7

    .line 4182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4185
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v14

    if-nez v14, :cond_2cf

    .line 4186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v15, Lcom/android/server/am/LockTaskNotify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14, v15}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4188
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_2db
    .catch Landroid/os/RemoteException; {:try_start_242 .. :try_end_2db} :catch_327

    .line 4190
    :try_start_2db
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_to_app_exit_locked"

    invoke-static {v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_325

    const/4 v10, 0x1

    .line 4193
    .local v10, "shouldLockKeyguard":Z
    :goto_2f0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v14

    if-nez v14, :cond_7

    if-eqz v10, :cond_7

    .line 4194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 4195
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 4196
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v15, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_320
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2db .. :try_end_320} :catch_322
    .catch Landroid/os/RemoteException; {:try_start_2db .. :try_end_320} :catch_327

    goto/16 :goto_7

    .line 4199
    .end local v10    # "shouldLockKeyguard":Z
    :catch_322
    move-exception v14

    goto/16 :goto_7

    .line 4190
    :cond_325
    const/4 v10, 0x0

    goto :goto_2f0

    .line 4202
    :catch_327
    move-exception v5

    .line 4203
    .restart local v5    # "ex":Landroid/os/RemoteException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 4207
    .end local v5    # "ex":Landroid/os/RemoteException;
    :pswitch_32e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4208
    .restart local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4209
    .restart local v2    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v2, :cond_7

    .line 4211
    :try_start_338
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-interface {v2, v14}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_33f
    .catch Landroid/os/RemoteException; {:try_start_338 .. :try_end_33f} :catch_341

    goto/16 :goto_7

    .line 4212
    :catch_341
    move-exception v14

    goto/16 :goto_7

    .line 4217
    .end local v2    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :pswitch_344
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4218
    :try_start_34b
    const-string v14, "ActivityManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Timeout waiting for all activities in task to finish. "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4220
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4221
    .restart local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v14, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 4222
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 4223
    monitor-exit v15

    goto/16 :goto_7

    .end local v3    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_380
    move-exception v14

    monitor-exit v15
    :try_end_382
    .catchall {:try_start_34b .. :try_end_382} :catchall_380

    throw v14

    .line 4226
    :pswitch_383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4227
    :try_start_38a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/IBinder;

    invoke-static {v14}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 4228
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_39d

    .line 4229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 4231
    :cond_39d
    monitor-exit v15

    goto/16 :goto_7

    .end local v9    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_3a0
    move-exception v14

    monitor-exit v15
    :try_end_3a2
    .catchall {:try_start_38a .. :try_end_3a2} :catchall_3a0

    throw v14

    .line 4235
    :pswitch_3a3
    const-string v14, "ActivityManager"

    const-string v15, "WMS runs the animation too long"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivityLock:Ljava/lang/Object;

    monitor-enter v15

    .line 4237
    :try_start_3b1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v14, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    if-eqz v14, :cond_3c3

    .line 4238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/android/server/am/ActivityStackSupervisor;->mHaltActivity:Z

    .line 4240
    :cond_3c3
    monitor-exit v15
    :try_end_3c4
    .catchall {:try_start_3b1 .. :try_end_3c4} :catchall_40d

    .line 4242
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4243
    :try_start_3cb
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 4244
    .local v8, "numDisplays":I
    const/4 v4, 0x0

    .local v4, "displayNdx":I
    :goto_3d8
    if-ge v4, v8, :cond_413

    .line 4245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v13, v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4246
    .local v13, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .local v12, "stackNdx":I
    :goto_3f0
    if-ltz v12, :cond_410

    .line 4247
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 4248
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    if-eqz v14, :cond_40a

    .line 4249
    iget-object v14, v11, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4250
    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/android/server/am/ActivityStack;->mDidResume:Z
    :try_end_40a
    .catchall {:try_start_3cb .. :try_end_40a} :catchall_416

    .line 4246
    :cond_40a
    add-int/lit8 v12, v12, -0x1

    goto :goto_3f0

    .line 4240
    .end local v4    # "displayNdx":I
    .end local v8    # "numDisplays":I
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v12    # "stackNdx":I
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :catchall_40d
    move-exception v14

    :try_start_40e
    monitor-exit v15
    :try_end_40f
    .catchall {:try_start_40e .. :try_end_40f} :catchall_40d

    throw v14

    .line 4244
    .restart local v4    # "displayNdx":I
    .restart local v8    # "numDisplays":I
    .restart local v12    # "stackNdx":I
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_410
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d8

    .line 4254
    .end local v12    # "stackNdx":I
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_413
    :try_start_413
    monitor-exit v15

    goto/16 :goto_7

    .end local v4    # "displayNdx":I
    .end local v8    # "numDisplays":I
    :catchall_416
    move-exception v14

    monitor-exit v15
    :try_end_418
    .catchall {:try_start_413 .. :try_end_418} :catchall_416

    throw v14

    .line 4260
    :pswitch_419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 4261
    :try_start_420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 4262
    .restart local v8    # "numDisplays":I
    const/4 v4, 0x0

    .restart local v4    # "displayNdx":I
    :goto_42d
    if-ge v4, v8, :cond_465

    .line 4263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v14}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v13, v14, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .line 4264
    .restart local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .restart local v12    # "stackNdx":I
    :goto_445
    if-ltz v12, :cond_462

    .line 4265
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 4266
    .restart local v11    # "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    if-eqz v14, :cond_45f

    .line 4267
    iget-object v14, v11, Lcom/android/server/am/ActivityStack;->mAnimationPrev:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v11, Lcom/android/server/am/ActivityStack;->mAnimationOptions:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 4268
    const/4 v14, 0x0

    iput-boolean v14, v11, Lcom/android/server/am/ActivityStack;->mDidResume:Z

    .line 4264
    :cond_45f
    add-int/lit8 v12, v12, -0x1

    goto :goto_445

    .line 4262
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_462
    add-int/lit8 v4, v4, 0x1

    goto :goto_42d

    .line 4272
    .end local v12    # "stackNdx":I
    .end local v13    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    :cond_465
    monitor-exit v15

    goto/16 :goto_7

    .end local v4    # "displayNdx":I
    .end local v8    # "numDisplays":I
    :catchall_468
    move-exception v14

    monitor-exit v15
    :try_end_46a
    .catchall {:try_start_420 .. :try_end_46a} :catchall_468

    throw v14

    .line 4078
    nop

    :pswitch_data_46c
    .packed-switch 0x64
        :pswitch_8
        :pswitch_69
        :pswitch_98
        :pswitch_ac
        :pswitch_df
        :pswitch_12c
        :pswitch_139
        :pswitch_146
        :pswitch_153
        :pswitch_176
        :pswitch_242
        :pswitch_32e
        :pswitch_344
        :pswitch_383
        :pswitch_3a3
        :pswitch_419
    .end packed-switch
.end method
