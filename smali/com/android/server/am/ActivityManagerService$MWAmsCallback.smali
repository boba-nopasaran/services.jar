.class public Lcom/android/server/am/ActivityManagerService$MWAmsCallback;
.super Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWAmsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 21964
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWAmsCallback$Stub;-><init>()V

    .line 21966
    return-void
.end method


# virtual methods
.method public findProcessNameByToken(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 22029
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22030
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 22031
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 22032
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    monitor-exit v2

    .line 22034
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_e

    .line 22035
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public findStackIdByTask(I)I
    .registers 5
    .param p1, "taskId"    # I

    .prologue
    .line 22051
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22052
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->recentTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 22053
    .local v0, "tr":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_15

    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_15

    .line 22054
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    monitor-exit v2

    .line 22056
    :goto_14
    return v1

    .line 22055
    :cond_15
    monitor-exit v2

    .line 22056
    const/4 v1, -0x1

    goto :goto_14

    .line 22055
    .end local v0    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public findStackIdByToken(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 22039
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 22040
    :try_start_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 22041
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const-string v1, "ActivityManager"

    const-string v3, "[BMW] findStackIdByToken !"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22042
    if-eqz v0, :cond_22

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_22

    .line 22043
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    monitor-exit v2

    .line 22046
    :goto_21
    return v1

    .line 22045
    :cond_22
    monitor-exit v2

    .line 22046
    const/4 v1, -0x1

    goto :goto_21

    .line 22045
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public moveActivityTaskToFront(Landroid/os/IBinder;)Z
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 21971
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "moveActivityTaskToFront"

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 21972
    const/4 v3, 0x0

    .line 21973
    .local v3, "res":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 21974
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 21975
    .local v0, "origId":J
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 21976
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_2d

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 21977
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/os/Bundle;Ljava/lang/String;)V

    .line 21978
    const/4 v3, 0x1

    .line 21980
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21981
    monitor-exit v5

    .line 21982
    return v3

    .line 21981
    .end local v0    # "origId":J
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_32

    throw v4
.end method

.method public restoreStack(Landroid/os/IBinder;Z)V
    .registers 13
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "toMax"    # Z

    .prologue
    const/4 v9, 0x1

    .line 21988
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v7, "restoreStack"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 21989
    const/4 v5, 0x0

    .line 21990
    .local v5, "res":Z
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW] restoreStack:token = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", toMax = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21991
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v6, :cond_32

    .line 22025
    :goto_31
    return-void

    .line 21993
    :cond_32
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 21994
    :try_start_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 21995
    .local v2, "origId":J
    const/4 v4, 0x0

    .line 21996
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p1, :cond_82

    .line 21997
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 22002
    :goto_40
    if-eqz v4, :cond_7a

    .line 22003
    if-eqz p2, :cond_87

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 22005
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v1

    .line 22006
    .local v1, "killapp":Z
    if-eqz v1, :cond_6d

    .line 22007
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 22009
    :cond_6d
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->moveFloatingStackToAppStackLocked(Lcom/android/server/am/ActivityStack;Z)Lcom/android/server/am/ActivityStack;

    .line 22021
    .end local v1    # "killapp":Z
    :cond_79
    :goto_79
    const/4 v5, 0x1

    .line 22023
    :cond_7a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22024
    monitor-exit v7

    goto :goto_31

    .end local v2    # "origId":J
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_7f
    move-exception v6

    monitor-exit v7
    :try_end_81
    .catchall {:try_start_35 .. :try_end_81} :catchall_7f

    throw v6

    .line 21999
    .restart local v2    # "origId":J
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_82
    :try_start_82
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v6, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_40

    .line 22010
    :cond_87
    if-nez p2, :cond_79

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v6

    if-nez v6, :cond_79

    .line 22011
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMwActivityMonitor:Lcom/android/server/am/MwActivityMonitor;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/am/MwActivityMonitor;->blockByFloatingStackSize(Lcom/android/server/am/ActivityRecord;)I

    move-result v0

    .line 22013
    .local v0, "blockRet":I
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->matchMinimaxRestartList(Ljava/lang/String;)Z

    move-result v1

    .line 22014
    .restart local v1    # "killapp":Z
    if-eqz v1, :cond_b3

    .line 22015
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 22017
    :cond_b3
    if-eq v0, v9, :cond_79

    .line 22018
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$MWAmsCallback;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityTaskToFloatingStackLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_bc
    .catchall {:try_start_82 .. :try_end_bc} :catchall_7f

    goto :goto_79
.end method
