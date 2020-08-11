.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 587
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 588
    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 589
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 590
    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 591
    return-void
.end method

.method private delay(J)V
    .registers 10
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 594
    cmp-long v2, p1, v4

    if-lez v2, :cond_13

    .line 595
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    .line 598
    .local v0, "bedtime":J
    :cond_c
    :try_start_c
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_1f

    .line 602
    :goto_f
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_14

    .line 608
    .end local v0    # "bedtime":J
    :cond_13
    :goto_13
    return-void

    .line 605
    .restart local v0    # "bedtime":J
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    .line 606
    cmp-long v2, p1, v4

    if-gtz v2, :cond_c

    goto :goto_13

    .line 600
    :catch_1f
    move-exception v2

    goto :goto_f
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 611
    const/4 v9, -0x8

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 612
    monitor-enter p0

    .line 613
    :try_start_5
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 614
    .local v5, "pattern":[J
    array-length v4, v5

    .line 615
    .local v4, "len":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$1300(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    .line 616
    .local v6, "repeat":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v7

    .line 617
    .local v7, "uid":I
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static {v9}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v8

    .line 618
    .local v8, "usageHint":I
    const/4 v2, 0x0

    .line 619
    .local v2, "index":I
    const-wide/16 v0, 0x0

    .local v0, "duration":J
    move v3, v2

    .line 621
    .end local v2    # "index":I
    .local v3, "index":I
    :goto_22
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_93

    .line 623
    if-ge v3, v4, :cond_2e

    .line 624
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-wide v10, v5, v3

    add-long/2addr v0, v10

    move v3, v2

    .line 628
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_2e
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 629
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v9, :cond_6f

    move v2, v3

    .line 649
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_36
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 650
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_8b

    .line 651
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v10

    monitor-enter v10

    .line 652
    :try_start_47
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v9, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v9, p0, :cond_52

    .line 653
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 655
    :cond_52
    iget-boolean v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v9, :cond_6d

    .line 658
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v9, v11}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v11, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v9, v11}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 660
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v9}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 662
    :cond_6d
    monitor-exit v10
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_8e

    .line 663
    return-void

    .line 633
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6f
    if-ge v3, v4, :cond_82

    .line 636
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_73
    aget-wide v0, v5, v3

    .line 637
    const-wide/16 v10, 0x0

    cmp-long v9, v0, v10

    if-lez v9, :cond_91

    .line 638
    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII)V
    invoke-static {v9, v0, v1, v7, v8}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;JII)V

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_22

    .line 641
    :cond_82
    if-gez v6, :cond_86

    move v2, v3

    .line 642
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_36

    .line 644
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_86
    move v2, v6

    .line 645
    .end local v3    # "index":I
    .restart local v2    # "index":I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_22

    .line 650
    .end local v0    # "duration":J
    .end local v3    # "index":I
    .end local v4    # "len":I
    .end local v5    # "pattern":[J
    .end local v6    # "repeat":I
    .end local v7    # "uid":I
    .end local v8    # "usageHint":I
    :catchall_8b
    move-exception v9

    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_73 .. :try_end_8d} :catchall_8b

    throw v9

    .line 662
    .restart local v0    # "duration":J
    .restart local v2    # "index":I
    .restart local v4    # "len":I
    .restart local v5    # "pattern":[J
    .restart local v6    # "repeat":I
    .restart local v7    # "uid":I
    .restart local v8    # "usageHint":I
    :catchall_8e
    move-exception v9

    :try_start_8f
    monitor-exit v10
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v9

    :cond_91
    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_22

    :cond_93
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_36
.end method