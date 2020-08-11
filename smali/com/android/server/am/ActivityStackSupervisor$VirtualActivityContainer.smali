.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualActivityContainer"
.end annotation


# instance fields
.field mDrawn:Z

.field mSurface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;Landroid/app/IActivityContainerCallback;)V
    .registers 6
    .param p2, "parent"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "callback"    # Landroid/app/IActivityContainerCallback;

    .prologue
    .line 4514
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4515
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    .line 4512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 4516
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 4517
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4518
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 4519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityContainer{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mIdString:Ljava/lang/String;

    .line 4520
    return-void
.end method

.method private setSurfaceIfReadyLocked()V
    .registers 4

    .prologue
    .line 4598
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_36

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceIfReadyLocked: mDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mContainerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4f

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 4601
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 4602
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 4604
    :cond_4f
    return-void
.end method

.method private setSurfaceLocked(Landroid/view/Surface;III)V
    .registers 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4537
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 4569
    :cond_8
    :goto_8
    return-void

    .line 4540
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .line 4542
    .local v0, "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    if-nez v0, :cond_26

    .line 4543
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    .end local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 4545
    .restart local v0    # "virtualActivityDisplay":Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 4546
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4547
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 4550
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2f

    .line 4551
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4554
    :cond_2f
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    .line 4555
    if-eqz p1, :cond_62

    .line 4556
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 4565
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    .line 4567
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_8

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4558
    :cond_62
    iput v4, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mContainerState:I

    .line 4559
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->setSurface(Landroid/view/Surface;)V

    .line 4560
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_38

    .line 4561
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3, v4, v3, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    goto :goto_38
.end method


# virtual methods
.method isAttachedLocked()Z
    .registers 2

    .prologue
    .line 4573
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isEligibleForNewTasks()Z
    .registers 2

    .prologue
    .line 4587
    const/4 v0, 0x0

    return v0
.end method

.method onTaskListEmptyLocked()V
    .registers 3

    .prologue
    .line 4591
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4592
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->detachLocked()V

    .line 4593
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 4594
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4595
    return-void
.end method

.method setDrawn()V
    .registers 3

    .prologue
    .line 4578
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4579
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->mDrawn:Z

    .line 4580
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceIfReadyLocked()V

    .line 4581
    monitor-exit v1

    .line 4582
    return-void

    .line 4581
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .registers 9
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 4524
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setSurface(Landroid/view/Surface;III)V

    .line 4526
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 4527
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_19

    move-result-wide v0

    .line 4529
    .local v0, "origId":J
    :try_start_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityContainer;->setSurfaceLocked(Landroid/view/Surface;III)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    .line 4531
    :try_start_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4533
    monitor-exit v3

    .line 4534
    return-void

    .line 4531
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4533
    .end local v0    # "origId":J
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_19

    throw v2
.end method
