.class Lcom/android/server/am/ActivityManagerService$AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppTaskImpl"
.end annotation


# instance fields
.field private mCallingUid:I

.field private mTaskId:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 4
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .prologue
    .line 20956
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 20957
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    .line 20958
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    .line 20959
    return-void
.end method

.method private checkCaller()V
    .registers 4

    .prologue
    .line 20962
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq v0, v1, :cond_31

    .line 20963
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20966
    :cond_31
    return-void
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 7

    .prologue
    .line 20970
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 20972
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 20973
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_35

    move-result-wide v0

    .line 20975
    .local v0, "origId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(IZ)Z
    invoke-static {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;IZ)Z

    move-result v2

    if-nez v2, :cond_38

    .line 20976
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_30

    .line 20979
    :catchall_30
    move-exception v2

    :try_start_31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 20981
    .end local v0    # "origId":J
    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw v2

    .line 20979
    .restart local v0    # "origId":J
    :cond_38
    :try_start_38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20981
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_35

    .line 20982
    return-void
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .prologue
    .line 20986
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 20988
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 20989
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_34

    move-result-wide v0

    .line 20991
    .local v0, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 20992
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v2, :cond_37

    .line 20993
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2f

    .line 20997
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 20999
    .end local v0    # "origId":J
    :catchall_34
    move-exception v3

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v3

    .line 20995
    .restart local v0    # "origId":J
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_37
    :try_start_37
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->createRecentTaskInfoFromTaskRecord(Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-static {v3, v2}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_2f

    move-result-object v3

    .line 20997
    :try_start_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_34

    return-object v3
.end method

.method public moveToFront()V
    .registers 4

    .prologue
    .line 21004
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 21006
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->startActivityFromRecentsInner(ILandroid/os/Bundle;)I

    .line 21007
    return-void
.end method

.method public setExcludeFromRecents(Z)V
    .registers 10
    .param p1, "exclude"    # Z

    .prologue
    .line 21034
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 21036
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 21037
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_34

    move-result-wide v2

    .line 21039
    .local v2, "origId":J
    :try_start_a
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 21040
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_37

    .line 21041
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find task ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_2f

    .line 21051
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_2f
    move-exception v4

    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 21053
    .end local v2    # "origId":J
    :catchall_34
    move-exception v4

    monitor-exit v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v4

    .line 21043
    .restart local v1    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "origId":J
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21044
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_47

    .line 21045
    const/high16 v4, 0x800000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_2f

    .line 21051
    :goto_42
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21053
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_34

    .line 21054
    return-void

    .line 21047
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const v6, -0x800001

    and-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_2f

    goto :goto_42
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 26
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 21012
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->checkCaller()V

    .line 21014
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    .line 21017
    .local v17, "callingUser":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 21018
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v19

    .line 21019
    .local v19, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v19, :cond_3a

    .line 21020
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21026
    .end local v19    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_37
    move-exception v1

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_37

    throw v1

    .line 21022
    .restart local v19    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3a
    :try_start_3a
    invoke-static/range {p1 .. p1}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 21023
    .local v2, "appThread":Landroid/app/IApplicationThread;
    if-nez v2, :cond_59

    .line 21024
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad app thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21026
    :cond_59
    monitor-exit v3
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_37

    .line 21027
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$AppTaskImpl;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method
