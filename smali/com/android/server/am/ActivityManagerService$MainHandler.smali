.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1436
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1437
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 71
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1441
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_b20

    .line 1975
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1443
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1444
    .local v34, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6d

    const/16 v64, 0x1

    .line 1446
    .local v64, "showBackground":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1447
    :try_start_2a
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/am/ProcessRecord;

    .line 1448
    .local v55, "proc":Lcom/android/server/am/ProcessRecord;
    const-string v4, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/server/am/AppErrorResult;

    .line 1449
    .local v60, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v55, :cond_70

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_70

    .line 1450
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    if-eqz v60, :cond_68

    .line 1452
    const/4 v4, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1454
    :cond_68
    monitor-exit v5

    goto :goto_7

    .line 1481
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_6a
    move-exception v4

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_2a .. :try_end_6c} :catchall_6a

    throw v4

    .line 1444
    .end local v64    # "showBackground":Z
    :cond_6d
    const/16 v64, 0x0

    goto :goto_25

    .line 1456
    .restart local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v64    # "showBackground":Z
    :cond_70
    :try_start_70
    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_ab

    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_ab

    const/16 v44, 0x1

    .line 1459
    .local v44, "isBackground":Z
    :goto_86
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v31, v0

    .local v31, "arr$":[I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v46, v0

    .local v46, "len$":I
    const/16 v42, 0x0

    .local v42, "i$":I
    :goto_95
    move/from16 v0, v42

    move/from16 v1, v46

    if-ge v0, v1, :cond_b0

    aget v68, v31, v42

    .line 1460
    .local v68, "userId":I
    move-object/from16 v0, v55

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v68

    if-eq v4, v0, :cond_ae

    const/4 v4, 0x1

    :goto_a6
    and-int v44, v44, v4

    .line 1459
    add-int/lit8 v42, v42, 0x1

    goto :goto_95

    .line 1456
    .end local v31    # "arr$":[I
    .end local v42    # "i$":I
    .end local v44    # "isBackground":Z
    .end local v46    # "len$":I
    .end local v68    # "userId":I
    :cond_ab
    const/16 v44, 0x0

    goto :goto_86

    .line 1460
    .restart local v31    # "arr$":[I
    .restart local v42    # "i$":I
    .restart local v44    # "isBackground":Z
    .restart local v46    # "len$":I
    .restart local v68    # "userId":I
    :cond_ae
    const/4 v4, 0x0

    goto :goto_a6

    .line 1462
    .end local v68    # "userId":I
    :cond_b0
    if-eqz v44, :cond_df

    if-nez v64, :cond_df

    .line 1463
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    if-eqz v60, :cond_dc

    .line 1465
    const/4 v4, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1467
    :cond_dc
    monitor-exit v5

    goto/16 :goto_7

    .line 1469
    :cond_df
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_11f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-nez v4, :cond_11f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_11f

    .line 1470
    new-instance v8, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v60

    move-object/from16 v1, v55

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1472
    .local v8, "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1473
    move-object/from16 v0, v55

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1481
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_115
    :goto_115
    monitor-exit v5
    :try_end_116
    .catchall {:try_start_70 .. :try_end_116} :catchall_6a

    .line 1483
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1477
    :cond_11f
    if-eqz v60, :cond_115

    .line 1478
    const/4 v4, 0x0

    :try_start_122
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_127
    .catchall {:try_start_122 .. :try_end_127} :catchall_6a

    goto :goto_115

    .line 1486
    .end local v31    # "arr$":[I
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v42    # "i$":I
    .end local v44    # "isBackground":Z
    .end local v46    # "len$":I
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v64    # "showBackground":Z
    :pswitch_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1487
    :try_start_12f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1488
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/am/ProcessRecord;

    .line 1489
    .restart local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v55, :cond_169

    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_169

    .line 1490
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    monitor-exit v20

    goto/16 :goto_7

    .line 1513
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_166
    move-exception v4

    monitor-exit v20
    :try_end_168
    .catchall {:try_start_12f .. :try_end_168} :catchall_166

    throw v4

    .line 1494
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_169
    :try_start_169
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1495
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_17d

    .line 1496
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1499
    :cond_17d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v4 .. v19}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 1503
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 1504
    new-instance v8, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1d3

    const/4 v13, 0x1

    :goto_1bd
    move-object/from16 v11, v55

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1507
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1508
    move-object/from16 v0, v55

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1513
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_1c9
    monitor-exit v20
    :try_end_1ca
    .catchall {:try_start_169 .. :try_end_1ca} :catchall_166

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1504
    :cond_1d3
    const/4 v13, 0x0

    goto :goto_1bd

    .line 1511
    :cond_1d5
    :try_start_1d5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_1df
    .catchall {:try_start_1d5 .. :try_end_1df} :catchall_166

    goto :goto_1c9

    .line 1518
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    :pswitch_1e0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 1519
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1520
    :try_start_1ed
    const-string v4, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/server/am/ProcessRecord;

    .line 1521
    .restart local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v55, :cond_206

    .line 1522
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    monitor-exit v5

    goto/16 :goto_7

    .line 1540
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_203
    move-exception v4

    monitor-exit v5
    :try_end_205
    .catchall {:try_start_1ed .. :try_end_205} :catchall_203

    throw v4

    .line 1525
    .restart local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_206
    :try_start_206
    move-object/from16 v0, v55

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_229

    .line 1526
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    monitor-exit v5

    goto/16 :goto_7

    .line 1529
    :cond_229
    const-string v4, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/server/am/AppErrorResult;

    .line 1530
    .restart local v60    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_273

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-nez v4, :cond_273

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_273

    .line 1531
    new-instance v8, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v60

    move-object/from16 v1, v55

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1533
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1534
    move-object/from16 v0, v55

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1540
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_269
    monitor-exit v5
    :try_end_26a
    .catchall {:try_start_206 .. :try_end_26a} :catchall_203

    .line 1541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1538
    :cond_273
    const/4 v4, 0x0

    :try_start_274
    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_279
    .catchall {:try_start_274 .. :try_end_279} :catchall_203

    goto :goto_269

    .line 1544
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "res":Lcom/android/server/am/AppErrorResult;
    :pswitch_27a
    new-instance v8, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1546
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1550
    .end local v8    # "d":Landroid/app/Dialog;
    :pswitch_29b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v61

    .line 1551
    .local v61, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v61

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1554
    .end local v61    # "resolver":Landroid/content/ContentResolver;
    :pswitch_2b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1555
    :try_start_2b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1556
    monitor-exit v5

    goto/16 :goto_7

    :catchall_2c1
    move-exception v4

    monitor-exit v5
    :try_end_2c3
    .catchall {:try_start_2b7 .. :try_end_2c3} :catchall_2c1

    throw v4

    .line 1559
    :pswitch_2c4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1560
    :try_start_2c9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1561
    .local v27, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_300

    .line 1562
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_2fa

    .line 1563
    new-instance v8, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v8, v4, v6, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1566
    .restart local v8    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v27

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1567
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1568
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1576
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_2fa
    :goto_2fa
    monitor-exit v5

    goto/16 :goto_7

    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_2fd
    move-exception v4

    monitor-exit v5
    :try_end_2ff
    .catchall {:try_start_2c9 .. :try_end_2ff} :catchall_2fd

    throw v4

    .line 1571
    .restart local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_300
    :try_start_300
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2fa

    .line 1572
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1573
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_312
    .catchall {:try_start_300 .. :try_end_312} :catchall_2fd

    goto :goto_2fa

    .line 1580
    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x4e20

    sub-long v14, v14, v16

    invoke-virtual {v4, v14, v15}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    if-eqz v4, :cond_348

    .line 1581
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip SERVICE_TIMEOUT ANR due to DexOpt performing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1585
    :cond_348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_37a

    .line 1586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1587
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    .line 1588
    .local v50, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v50

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v14, 0x4e20

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v14, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1593
    .end local v50    # "nmsg":Landroid/os/Message;
    :cond_37a
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_3cd

    .line 1594
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v59, v0

    check-cast v59, Lcom/android/server/am/ProcessRecord;

    .line 1595
    .local v59, "record":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v28, 0x4e20

    .line 1596
    .local v28, "anrTimeout":J
    if-eqz v59, :cond_3ca

    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v68, v0

    .line 1597
    .restart local v68    # "userId":I
    :goto_392
    move/from16 v0, v68

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/mediatek/common/mom/MobileManagerUtils;->getUserConfirmTime(IJ)J

    move-result-wide v38

    .line 1598
    .local v38, "extendTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v38, v4

    if-lez v4, :cond_3cd

    .line 1599
    const-string v4, "ActivityManager"

    const-string v5, "Skip SERVICE_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    .line 1601
    .restart local v50    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v50

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v50

    move-wide/from16 v1, v38

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1596
    .end local v38    # "extendTime":J
    .end local v50    # "nmsg":Landroid/os/Message;
    .end local v68    # "userId":I
    :cond_3ca
    const/16 v68, -0x2710

    goto :goto_392

    .line 1607
    .end local v28    # "anrTimeout":J
    .end local v59    # "record":Lcom/android/server/am/ProcessRecord;
    :cond_3cd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1610
    :pswitch_3de
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1611
    :try_start_3e3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .local v41, "i":I
    :goto_3ef
    if-ltz v41, :cond_432

    .line 1612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1613
    .local v58, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_403
    .catchall {:try_start_3e3 .. :try_end_403} :catchall_42f

    if-eqz v4, :cond_40c

    .line 1615
    :try_start_405
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_40c
    .catch Landroid/os/RemoteException; {:try_start_405 .. :try_end_40c} :catch_40f
    .catchall {:try_start_405 .. :try_end_40c} :catchall_42f

    .line 1611
    :cond_40c
    :goto_40c
    add-int/lit8 v41, v41, -0x1

    goto :goto_3ef

    .line 1616
    :catch_40f
    move-exception v36

    .line 1617
    .local v36, "ex":Landroid/os/RemoteException;
    :try_start_410
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40c

    .line 1621
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v41    # "i":I
    .end local v58    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_42f
    move-exception v4

    monitor-exit v5
    :try_end_431
    .catchall {:try_start_410 .. :try_end_431} :catchall_42f

    throw v4

    .restart local v41    # "i":I
    :cond_432
    :try_start_432
    monitor-exit v5
    :try_end_433
    .catchall {:try_start_432 .. :try_end_433} :catchall_42f

    goto/16 :goto_7

    .line 1624
    .end local v41    # "i":I
    :pswitch_435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1625
    :try_start_43a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .restart local v41    # "i":I
    :goto_446
    if-ltz v41, :cond_489

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1627
    .restart local v58    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_45a
    .catchall {:try_start_43a .. :try_end_45a} :catchall_486

    if-eqz v4, :cond_463

    .line 1629
    :try_start_45c
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_463
    .catch Landroid/os/RemoteException; {:try_start_45c .. :try_end_463} :catch_466
    .catchall {:try_start_45c .. :try_end_463} :catchall_486

    .line 1625
    :cond_463
    :goto_463
    add-int/lit8 v41, v41, -0x1

    goto :goto_446

    .line 1630
    :catch_466
    move-exception v36

    .line 1631
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_467
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear dns cache for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_463

    .line 1635
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v41    # "i":I
    .end local v58    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_486
    move-exception v4

    monitor-exit v5
    :try_end_488
    .catchall {:try_start_467 .. :try_end_488} :catchall_486

    throw v4

    .restart local v41    # "i":I
    :cond_489
    :try_start_489
    monitor-exit v5
    :try_end_48a
    .catchall {:try_start_489 .. :try_end_48a} :catchall_486

    goto/16 :goto_7

    .line 1638
    .end local v41    # "i":I
    :pswitch_48c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/net/ProxyInfo;

    .line 1639
    .local v57, "proxy":Landroid/net/ProxyInfo;
    const-string v40, ""

    .line 1640
    .local v40, "host":Ljava/lang/String;
    const-string v54, ""

    .line 1641
    .local v54, "port":Ljava/lang/String;
    const-string v37, ""

    .line 1642
    .local v37, "exclList":Ljava/lang/String;
    sget-object v52, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1643
    .local v52, "pacFileUrl":Landroid/net/Uri;
    if-eqz v57, :cond_4b2

    .line 1644
    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v40

    .line 1645
    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    .line 1646
    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v37

    .line 1647
    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v52

    .line 1649
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1650
    :try_start_4b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .restart local v41    # "i":I
    :goto_4c3
    if-ltz v41, :cond_50e

    .line 1651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1652
    .restart local v58    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4d7
    .catchall {:try_start_4b7 .. :try_end_4d7} :catchall_50b

    if-eqz v4, :cond_4e8

    .line 1654
    :try_start_4d9
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v40

    move-object/from16 v1, v54

    move-object/from16 v2, v37

    move-object/from16 v3, v52

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4e8
    .catch Landroid/os/RemoteException; {:try_start_4d9 .. :try_end_4e8} :catch_4eb
    .catchall {:try_start_4d9 .. :try_end_4e8} :catchall_50b

    .line 1650
    :cond_4e8
    :goto_4e8
    add-int/lit8 v41, v41, -0x1

    goto :goto_4c3

    .line 1655
    :catch_4eb
    move-exception v36

    .line 1656
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_4ec
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update http proxy for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e8

    .line 1661
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v41    # "i":I
    .end local v58    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_50b
    move-exception v4

    monitor-exit v5
    :try_end_50d
    .catchall {:try_start_4ec .. :try_end_50d} :catchall_50b

    throw v4

    .restart local v41    # "i":I
    :cond_50e
    :try_start_50e
    monitor-exit v5
    :try_end_50f
    .catchall {:try_start_50e .. :try_end_50f} :catchall_50b

    goto/16 :goto_7

    .line 1664
    .end local v37    # "exclList":Ljava/lang/String;
    .end local v40    # "host":Ljava/lang/String;
    .end local v41    # "i":I
    .end local v52    # "pacFileUrl":Landroid/net/Uri;
    .end local v54    # "port":Ljava/lang/String;
    .end local v57    # "proxy":Landroid/net/ProxyInfo;
    :pswitch_511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1665
    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1666
    .local v8, "d":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1667
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040110

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104069d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1670
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v9, 0x30

    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1672
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1676
    .end local v8    # "d":Landroid/app/AlertDialog;
    :pswitch_575
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1677
    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1678
    .restart local v8    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1679
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040110

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1681
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104069e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1682
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v9, 0x30

    invoke-virtual {v6, v9, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1684
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1689
    .end local v8    # "d":Landroid/app/AlertDialog;
    :pswitch_5d9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    sub-long v14, v14, v16

    invoke-virtual {v4, v14, v15}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v4

    if-eqz v4, :cond_60e

    .line 1690
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip PROC_START_TIMEOUT due to DexOpt performing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1694
    :cond_60e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_640

    .line 1695
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1696
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    .line 1697
    .restart local v50    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v50

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v14, 0x2710

    move-object/from16 v0, v50

    invoke-virtual {v4, v0, v14, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1701
    .end local v50    # "nmsg":Landroid/os/Message;
    :cond_640
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/server/am/ProcessRecord;

    .line 1702
    .restart local v27    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1703
    :try_start_64d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1704
    monitor-exit v5

    goto/16 :goto_7

    :catchall_659
    move-exception v4

    monitor-exit v5
    :try_end_65b
    .catchall {:try_start_64d .. :try_end_65b} :catchall_659

    throw v4

    .line 1707
    .end local v27    # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_65c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1708
    :try_start_661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1709
    monitor-exit v5

    goto/16 :goto_7

    :catchall_66e
    move-exception v4

    monitor-exit v5
    :try_end_670
    .catchall {:try_start_661 .. :try_end_670} :catchall_66e

    throw v4

    .line 1712
    :pswitch_671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1713
    :try_start_676
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1714
    .local v11, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_6ae

    const/4 v12, 0x1

    .line 1715
    .local v12, "restart":Z
    :goto_682
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 1716
    .local v32, "bundle":Landroid/os/Bundle;
    const-string v4, "pkg"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1717
    .local v10, "pkg":Ljava/lang/String;
    const-string v4, "reason"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1718
    .local v18, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v9 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1720
    monitor-exit v5

    goto/16 :goto_7

    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "appid":I
    .end local v12    # "restart":Z
    .end local v18    # "reason":Ljava/lang/String;
    .end local v32    # "bundle":Landroid/os/Bundle;
    :catchall_6ab
    move-exception v4

    monitor-exit v5
    :try_end_6ad
    .catchall {:try_start_676 .. :try_end_6ad} :catchall_6ab

    throw v4

    .line 1714
    .restart local v11    # "appid":I
    :cond_6ae
    const/4 v12, 0x0

    goto :goto_682

    .line 1723
    .end local v11    # "appid":I
    :pswitch_6b0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1726
    :pswitch_6bb
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v43

    .line 1727
    .local v43, "inm":Landroid/app/INotificationManager;
    if-eqz v43, :cond_7

    .line 1731
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Lcom/android/server/am/ActivityRecord;

    .line 1732
    .local v62, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v56, v0

    .line 1733
    .local v56, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v56, :cond_7

    .line 1738
    :try_start_6d1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v33

    .line 1739
    .local v33, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104049f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v65

    .line 1741
    .local v65, "text":Ljava/lang/String;
    new-instance v51, Landroid/app/Notification;

    invoke-direct/range {v51 .. v51}, Landroid/app/Notification;-><init>()V

    .line 1742
    .local v51, "notification":Landroid/app/Notification;
    const v4, 0x1080652

    move-object/from16 v0, v51

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1743
    const-wide/16 v4, 0x0

    move-object/from16 v0, v51

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1744
    const/4 v4, 0x2

    move-object/from16 v0, v51

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1745
    move-object/from16 v0, v65

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1746
    const/4 v4, 0x0

    move-object/from16 v0, v51

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1747
    const/4 v4, 0x0

    move-object/from16 v0, v51

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1748
    const/4 v4, 0x0

    move-object/from16 v0, v51

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v51

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 1751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10404a0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v62

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const/high16 v22, 0x10000000

    const/16 v23, 0x0

    new-instance v24, Landroid/os/UserHandle;

    move-object/from16 v0, v62

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v19 .. v24}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_77b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d1 .. :try_end_77b} :catch_7a4

    .line 1758
    const/4 v4, 0x1

    :try_start_77c
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 1759
    .local v25, "outId":[I
    const-string v20, "android"

    const-string v21, "android"

    const/16 v22, 0x0

    const v23, 0x104049f

    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v26, v0

    move-object/from16 v19, v43

    move-object/from16 v24, v51

    invoke-interface/range {v19 .. v26}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_796
    .catch Ljava/lang/RuntimeException; {:try_start_77c .. :try_end_796} :catch_798
    .catch Landroid/os/RemoteException; {:try_start_77c .. :try_end_796} :catch_b1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77c .. :try_end_796} :catch_7a4

    goto/16 :goto_7

    .line 1762
    .end local v25    # "outId":[I
    :catch_798
    move-exception v35

    .line 1763
    .local v35, "e":Ljava/lang/RuntimeException;
    :try_start_799
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_799 .. :try_end_7a2} :catch_7a4

    goto/16 :goto_7

    .line 1767
    .end local v33    # "context":Landroid/content/Context;
    .end local v35    # "e":Ljava/lang/RuntimeException;
    .end local v51    # "notification":Landroid/app/Notification;
    .end local v65    # "text":Ljava/lang/String;
    :catch_7a4
    move-exception v35

    .line 1768
    .local v35, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1772
    .end local v35    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v43    # "inm":Landroid/app/INotificationManager;
    .end local v56    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v62    # "root":Lcom/android/server/am/ActivityRecord;
    :pswitch_7b0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v43

    .line 1773
    .restart local v43    # "inm":Landroid/app/INotificationManager;
    if-eqz v43, :cond_7

    .line 1777
    :try_start_7b6
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x104049f

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v43

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_7c5
    .catch Ljava/lang/RuntimeException; {:try_start_7b6 .. :try_end_7c5} :catch_7c7
    .catch Landroid/os/RemoteException; {:try_start_7b6 .. :try_end_7c5} :catch_b19

    goto/16 :goto_7

    .line 1779
    :catch_7c7
    move-exception v35

    .line 1780
    .local v35, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1786
    .end local v35    # "e":Ljava/lang/RuntimeException;
    .end local v43    # "inm":Landroid/app/INotificationManager;
    :pswitch_7d3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1787
    :try_start_7d8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1788
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1789
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v50

    .line 1790
    .restart local v50    # "nmsg":Landroid/os/Message;
    sget v4, Lcom/android/server/am/ActivityManagerService;->POWER_CHECK_DELAY:I

    int-to-long v14, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1791
    monitor-exit v5

    goto/16 :goto_7

    .end local v50    # "nmsg":Landroid/os/Message;
    :catchall_7fc
    move-exception v4

    monitor-exit v5
    :try_end_7fe
    .catchall {:try_start_7d8 .. :try_end_7fe} :catchall_7fc

    throw v4

    .line 1794
    :pswitch_7ff
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1795
    :try_start_804
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/am/ActivityRecord;

    .line 1796
    .local v30, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_842

    .line 1797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_832

    .line 1799
    monitor-exit v5

    goto/16 :goto_7

    .line 1818
    .end local v30    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_82f
    move-exception v4

    monitor-exit v5
    :try_end_831
    .catchall {:try_start_804 .. :try_end_831} :catchall_82f

    throw v4

    .line 1801
    .restart local v30    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_832
    :try_start_832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1804
    :cond_842
    if-eqz v30, :cond_844

    .line 1818
    :cond_844
    monitor-exit v5
    :try_end_845
    .catchall {:try_start_832 .. :try_end_845} :catchall_82f

    goto/16 :goto_7

    .line 1822
    .end local v30    # "ar":Lcom/android/server/am/ActivityRecord;
    :pswitch_847
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1826
    :pswitch_850
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    .line 1827
    .local v53, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v67, v0

    .line 1828
    .local v67, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v53

    move/from16 v1, v67

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1832
    .end local v53    # "pid":I
    .end local v67    # "uid":I
    :pswitch_869
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/util/ArrayList;

    .line 1833
    .local v47, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v66, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, v66

    move-object/from16 v1, p0

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1838
    .local v66, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v66 .. v66}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 1842
    .end local v47    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v66    # "thread":Ljava/lang/Thread;
    :pswitch_881
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v5, v6, v4}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 1847
    :pswitch_894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 1851
    :pswitch_8ab
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 1855
    :pswitch_8c2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 1859
    :pswitch_8d9
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_92e

    const/16 v49, 0x1

    .line 1860
    .local v49, "nextState":Z
    :goto_8e1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v49

    if-eq v4, v0, :cond_7

    .line 1861
    sget-boolean v4, Lcom/android/server/am/ActivityManagerService;->DEBUG_IMMERSIVE:Z

    if-eqz v4, :cond_921

    .line 1862
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Lcom/android/server/am/ActivityRecord;

    .line 1863
    .local v58, "r":Lcom/android/server/am/ActivityRecord;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Applying new update lock state \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    .end local v58    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_921
    if-eqz v49, :cond_931

    .line 1866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 1859
    .end local v49    # "nextState":Z
    :cond_92e
    const/16 v49, 0x0

    goto :goto_8e1

    .line 1868
    .restart local v49    # "nextState":Z
    :cond_931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 1874
    .end local v49    # "nextState":Z
    :pswitch_93c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 1878
    :pswitch_945
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1879
    :try_start_94a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {v4, v14, v15, v6, v9}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    .line 1880
    monitor-exit v5

    goto/16 :goto_7

    :catchall_95a
    move-exception v4

    monitor-exit v5
    :try_end_95c
    .catchall {:try_start_94a .. :try_end_95c} :catchall_95a

    throw v4

    .line 1884
    :pswitch_95d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1885
    :try_start_962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 1886
    monitor-exit v5

    goto/16 :goto_7

    :catchall_96c
    move-exception v4

    monitor-exit v5
    :try_end_96e
    .catchall {:try_start_962 .. :try_end_96e} :catchall_96c

    throw v4

    .line 1890
    :pswitch_96f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1891
    :try_start_974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v41, v4, -0x1

    .restart local v41    # "i":I
    :goto_980
    if-ltz v41, :cond_9cc

    .line 1892
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1893
    .local v58, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_994
    .catchall {:try_start_974 .. :try_end_994} :catchall_9c9

    if-eqz v4, :cond_9a4

    .line 1895
    :try_start_996
    move-object/from16 v0, v58

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_9a7

    const/4 v4, 0x0

    :goto_9a1
    invoke-interface {v6, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_9a4
    .catch Landroid/os/RemoteException; {:try_start_996 .. :try_end_9a4} :catch_9a9
    .catchall {:try_start_996 .. :try_end_9a4} :catchall_9c9

    .line 1891
    :cond_9a4
    :goto_9a4
    add-int/lit8 v41, v41, -0x1

    goto :goto_980

    .line 1895
    :cond_9a7
    const/4 v4, 0x1

    goto :goto_9a1

    .line 1896
    :catch_9a9
    move-exception v36

    .line 1897
    .restart local v36    # "ex":Landroid/os/RemoteException;
    :try_start_9aa
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update preferences for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a4

    .line 1901
    .end local v36    # "ex":Landroid/os/RemoteException;
    .end local v41    # "i":I
    .end local v58    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_9c9
    move-exception v4

    monitor-exit v5
    :try_end_9cb
    .catchall {:try_start_9aa .. :try_end_9cb} :catchall_9c9

    throw v4

    .restart local v41    # "i":I
    :cond_9cc
    :try_start_9cc
    monitor-exit v5
    :try_end_9cd
    .catchall {:try_start_9cc .. :try_end_9cd} :catchall_9c9

    goto/16 :goto_7

    .line 1905
    .end local v41    # "i":I
    :pswitch_9cf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8007

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 1911
    :pswitch_9f6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v5, 0x4008

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1914
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8008

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    goto/16 :goto_7

    .line 1921
    :pswitch_a34
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1922
    :try_start_a39
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v58

    .line 1923
    .local v58, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v58, :cond_a60

    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a60

    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_a51
    .catchall {:try_start_a39 .. :try_end_a51} :catchall_a63

    if-eqz v4, :cond_a60

    .line 1925
    :try_start_a53
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v58

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v6}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_a60
    .catch Landroid/os/RemoteException; {:try_start_a53 .. :try_end_a60} :catch_b16
    .catchall {:try_start_a53 .. :try_end_a60} :catchall_a63

    .line 1929
    :cond_a60
    :goto_a60
    :try_start_a60
    monitor-exit v5

    goto/16 :goto_7

    .end local v58    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_a63
    move-exception v4

    monitor-exit v5
    :try_end_a65
    .catchall {:try_start_a60 .. :try_end_a65} :catchall_a63

    throw v4

    .line 1933
    :pswitch_a66
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_a73

    .line 1934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 1936
    :cond_a73
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    .line 1937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 1943
    :pswitch_a82
    :try_start_a82
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Ljava/util/Locale;

    .line 1944
    .local v45, "l":Ljava/util/Locale;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v63

    .line 1945
    .local v63, "service":Landroid/os/IBinder;
    invoke-static/range {v63 .. v63}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v48

    .line 1946
    .local v48, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storing locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for decryption UI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const-string v4, "SystemLocale"

    invoke-virtual/range {v45 .. v45}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v48

    invoke-interface {v0, v4, v5}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ac1
    .catch Landroid/os/RemoteException; {:try_start_a82 .. :try_end_ac1} :catch_ac3

    goto/16 :goto_7

    .line 1948
    .end local v45    # "l":Ljava/util/Locale;
    .end local v48    # "mountService":Landroid/os/storage/IMountService;
    .end local v63    # "service":Landroid/os/IBinder;
    :catch_ac3
    move-exception v35

    .line 1949
    .local v35, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Error storing locale for decryption UI"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1954
    .end local v35    # "e":Landroid/os/RemoteException;
    :pswitch_acf
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/app/Dialog;

    .line 1955
    .local v8, "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_7

    .line 1959
    .end local v8    # "d":Landroid/app/Dialog;
    :pswitch_ada
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1960
    :try_start_adf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_aea
    .catchall {:try_start_adf .. :try_end_aea} :catchall_b13

    move-result v41

    .line 1961
    .restart local v41    # "i":I
    :goto_aeb
    if-lez v41, :cond_b05

    .line 1962
    add-int/lit8 v41, v41, -0x1

    .line 1965
    :try_start_aef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/ITaskStackListener;

    invoke-interface {v4}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V
    :try_end_b02
    .catch Landroid/os/RemoteException; {:try_start_aef .. :try_end_b02} :catch_b03
    .catchall {:try_start_aef .. :try_end_b02} :catchall_b13

    goto :goto_aeb

    .line 1966
    :catch_b03
    move-exception v4

    goto :goto_aeb

    .line 1970
    :cond_b05
    :try_start_b05
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mTaskStackListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1971
    monitor-exit v5

    goto/16 :goto_7

    .end local v41    # "i":I
    :catchall_b13
    move-exception v4

    monitor-exit v5
    :try_end_b15
    .catchall {:try_start_b05 .. :try_end_b15} :catchall_b13

    throw v4

    .line 1926
    .restart local v58    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_b16
    move-exception v4

    goto/16 :goto_a60

    .line 1782
    .end local v58    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v43    # "inm":Landroid/app/INotificationManager;
    :catch_b19
    move-exception v4

    goto/16 :goto_7

    .line 1765
    .restart local v33    # "context":Landroid/content/Context;
    .restart local v51    # "notification":Landroid/app/Notification;
    .restart local v56    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v62    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v65    # "text":Ljava/lang/String;
    :catch_b1c
    move-exception v4

    goto/16 :goto_7

    .line 1441
    nop

    :pswitch_data_b20
    .packed-switch 0x1
        :pswitch_8
        :pswitch_128
        :pswitch_27a
        :pswitch_29b
        :pswitch_2b2
        :pswitch_2c4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_313
        :pswitch_3de
        :pswitch_511
        :pswitch_575
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5d9
        :pswitch_65c
        :pswitch_671
        :pswitch_6b0
        :pswitch_6bb
        :pswitch_7b0
        :pswitch_1e0
        :pswitch_7d3
        :pswitch_435
        :pswitch_48c
        :pswitch_7ff
        :pswitch_847
        :pswitch_850
        :pswitch_869
        :pswitch_894
        :pswitch_8ab
        :pswitch_8c2
        :pswitch_8d9
        :pswitch_93c
        :pswitch_945
        :pswitch_95d
        :pswitch_96f
        :pswitch_9cf
        :pswitch_9f6
        :pswitch_a34
        :pswitch_a66
        :pswitch_881
        :pswitch_a82
        :pswitch_acf
        :pswitch_ada
    .end packed-switch
.end method
