.class Lcom/android/server/AlarmManagerService$ResultReceiver;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .prologue
    .line 2476
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .prologue
    .line 2479
    const-string v2, "AlarmManager"

    const-string v3, "onSendFinished begin"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2481
    const/4 v12, 0x0

    .line 2482
    .local v12, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_10
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_3c

    .line 2483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_105

    .line 2484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    move-object v12, v0

    .line 2488
    :cond_3c
    if-eqz v12, :cond_109

    .line 2489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2490
    .local v14, "nowELAPSED":J
    iget-object v8, v12, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2491
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2492
    iget v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v2, :cond_5a

    .line 2493
    const/4 v2, 0x0

    iput v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 2494
    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 2496
    :cond_5a
    iget-object v9, v12, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2497
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2498
    iget v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v2, :cond_72

    .line 2499
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 2500
    iget-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v4, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v4, v14, v4

    add-long/2addr v2, v4

    iput-wide v2, v9, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 2505
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v14    # "nowELAPSED":J
    :cond_72
    :goto_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 2506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v2, :cond_143

    .line 2507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_141

    .line 2509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished all broadcasts with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remaining inflights"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2511
    const/4 v10, 0x0

    :goto_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_138

    .line 2512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Remaining #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2511
    add-int/lit8 v10, v10, 0x1

    goto :goto_c6

    .line 2482
    :cond_105
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10

    .line 2503
    :cond_109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No in-flight alarm for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    goto/16 :goto_72

    .line 2528
    :catchall_135
    move-exception v2

    monitor-exit v13
    :try_end_137
    .catchall {:try_start_10 .. :try_end_137} :catchall_135

    throw v2

    .line 2514
    :cond_138
    :try_start_138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2528
    :cond_141
    :goto_141
    monitor-exit v13

    .line 2529
    return-void

    .line 2518
    :cond_143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16d

    .line 2519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$InFlight;

    .line 2520
    .local v11, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v11, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v11, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v5, v11, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Z)V

    goto :goto_141

    .line 2524
    .end local v11    # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_16d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 2525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ResultReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_182
    .catchall {:try_start_138 .. :try_end_182} :catchall_135

    goto :goto_141
.end method
