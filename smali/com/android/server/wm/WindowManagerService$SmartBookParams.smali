.class Lcom/android/server/wm/WindowManagerService$SmartBookParams;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBookParams"
.end annotation


# static fields
.field static final HDMI_PLUG_IN:I = 0x1

.field static final HDMI_PLUG_OUT:I = 0x0

.field static final SMARTBOOK_HAS_PLUGGED_IN:I = 0x2

.field static final SMARTBOOK_HAS_PLUGGED_OUT:I = 0x0

.field static final SMARTBOOK_PLUGGING_IN:I = 0x1

.field static final SMARTBOOK_PLUGGING_OUT:I = 0x3


# instance fields
.field mDebugEnabled:Z

.field mPendingTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mPermitWakeUp:Z

.field mPlugState:I

.field mTurnOnScreenWin:Ljava/lang/String;

.field final sWakeUpSmartBookList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 955
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 948
    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    .line 949
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mDebugEnabled:Z

    .line 950
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPermitWakeUp:Z

    .line 951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    .line 957
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.CameraLauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.Camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d.app.Wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.camera.VideoCamera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    const-string v1, "com.android.gallery3d.app.MovieActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    return-void
.end method


# virtual methods
.method public addPendingTask(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 966
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 967
    :try_start_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    monitor-exit v1

    .line 969
    return-void

    .line 968
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public checkWindowInSmartBookWhiteList()Z
    .registers 4

    .prologue
    .line 1004
    const-string v1, "ro.mtk_smartbook_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1005
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 1006
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->sWakeUpSmartBookList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1007
    const/4 v1, 0x1

    .line 1011
    .end local v0    # "i":I
    :goto_28
    return v1

    .line 1005
    .restart local v0    # "i":I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1011
    .end local v0    # "i":I
    :cond_2c
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public flushPendingTasks()V
    .registers 8

    .prologue
    .line 972
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 973
    :try_start_3
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 974
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    if-ge v0, v1, :cond_1a

    .line 975
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 976
    .local v2, "task":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 974
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 978
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_1a
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPendingTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 979
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pending tasks are all cleared"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    monitor-exit v4

    .line 981
    return-void

    .line 980
    .end local v0    # "i":I
    .end local v1    # "size":I
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v3
.end method

.method public getPlugState()I
    .registers 2

    .prologue
    .line 984
    monitor-enter p0

    .line 985
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    monitor-exit p0

    return v0

    .line 986
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isPlugged()Z
    .registers 3

    .prologue
    .line 990
    monitor-enter p0

    .line 991
    :try_start_1
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 992
    :cond_a
    const/4 v0, 0x1

    monitor-exit p0

    .line 994
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_c

    .line 995
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public setTurnOnScreen(Ljava/lang/String;)V
    .registers 5
    .param p1, "win"    # Ljava/lang/String;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mTurnOnScreenWin:Ljava/lang/String;

    .line 1000
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turning on screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void
.end method

.method public transitSmartBookPluginState(ZZZ)Z
    .registers 10
    .param p1, "plugin"    # Z
    .param p2, "fromUEvent"    # Z
    .param p3, "fromDispEvent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1015
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "transitSmartBookPluginState, current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fromUEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromDispEvent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_49
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    .line 1019
    .local v0, "oldState":I
    iget v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    packed-switch v3, :pswitch_data_be

    .line 1049
    :cond_50
    :goto_50
    iget v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    if-eq v0, v3, :cond_b4

    .line 1050
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state transit to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    monitor-exit p0

    move v1, v2

    .line 1054
    :goto_70
    return v1

    .line 1021
    :pswitch_71
    if-nez p1, :cond_78

    .line 1022
    monitor-exit p0

    goto :goto_70

    .line 1056
    .end local v0    # "oldState":I
    :catchall_75
    move-exception v1

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_49 .. :try_end_77} :catchall_75

    throw v1

    .line 1023
    .restart local v0    # "oldState":I
    :cond_78
    if-eqz p3, :cond_7e

    .line 1024
    const/4 v3, 0x2

    :try_start_7b
    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1025
    :cond_7e
    if-eqz p2, :cond_50

    .line 1026
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1029
    :pswitch_84
    if-eqz p1, :cond_8c

    if-eqz p3, :cond_8c

    .line 1030
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1031
    :cond_8c
    if-nez p1, :cond_50

    if-eqz p2, :cond_50

    .line 1032
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1035
    :pswitch_94
    if-eqz p1, :cond_98

    .line 1036
    monitor-exit p0

    goto :goto_70

    .line 1037
    :cond_98
    if-eqz p3, :cond_9e

    .line 1038
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1039
    :cond_9e
    if-eqz p2, :cond_50

    .line 1040
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1043
    :pswitch_a4
    if-nez p1, :cond_ac

    if-eqz p3, :cond_ac

    .line 1044
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1045
    :cond_ac
    if-eqz p1, :cond_50

    if-eqz p2, :cond_50

    .line 1046
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/wm/WindowManagerService$SmartBookParams;->mPlugState:I

    goto :goto_50

    .line 1053
    :cond_b4
    const-string v2, "WindowManager"

    const-string v3, "state no change"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_7b .. :try_end_bc} :catchall_75

    goto :goto_70

    .line 1019
    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_71
        :pswitch_84
        :pswitch_94
        :pswitch_a4
    .end packed-switch
.end method
