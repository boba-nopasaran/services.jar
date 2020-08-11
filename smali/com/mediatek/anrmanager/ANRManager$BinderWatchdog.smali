.class public final Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "BinderWatchdog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;,
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    return-void
.end method

.method private static a(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 474
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_b

    if-nez p0, :cond_d

    :cond_b
    move-object v0, v1

    .line 486
    :goto_c
    return-object v0

    .line 478
    :cond_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 480
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    .line 481
    iget v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v3, p0, :cond_14

    iget v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcTid:I

    if-ne v3, p1, :cond_14

    .line 482
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout binder pid found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_4f
    move-object v0, v1

    .line 486
    goto :goto_c
.end method

.method private static final a(ILjava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    const-string v0, "(\\S+.+transaction).+from\\s+(\\d+):(\\d+)\\s+to\\s+(\\d+):(\\d+).+start\\s+(\\d+\\.+\\d+).+android\\s+(\\d+-\\d+-\\d+\\s+\\d+:\\d+:\\d+\\.\\d+)"

    .line 546
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 548
    const/4 v2, 0x0

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 550
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 552
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    if-eqz v5, :cond_35

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4b

    .line 555
    :cond_35
    const-string v0, "ANRManager"

    const-string v1, "Filepath isn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_3c} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3c} :catch_1f8
    .catchall {:try_start_11 .. :try_end_3c} :catchall_1e5

    .line 607
    if-eqz v2, :cond_41

    .line 609
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 615
    :cond_41
    :goto_41
    return-void

    .line 610
    :catch_42
    move-exception v0

    .line 611
    const-string v1, "ANRManager"

    const-string v2, "IOException when close buffer reader:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 559
    :cond_4b
    :try_start_4b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_55} :catch_1fb
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_55} :catch_1f8
    .catchall {:try_start_4b .. :try_end_55} :catchall_1e5

    .line 562
    :cond_55
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a3

    .line 564
    const-string v5, "transaction"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_190

    .line 565
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 566
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 567
    new-instance v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;

    invoke-direct {v5}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;-><init>()V

    .line 568
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    .line 569
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    .line 570
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    .line 571
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    .line 572
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    .line 573
    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    .line 574
    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v8

    float-to-long v8, v2

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    .line 576
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-wide v6, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    const-wide/16 v8, 0x3e8

    cmp-long v2, v6, v8

    if-ltz v2, :cond_107

    .line 578
    iget-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 579
    iget-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    .line 581
    iget-object v2, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    const-string v2, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transcation binderList pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_107
    const-string v2, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " android time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " spent time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v5, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_175
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_175} :catch_177
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_175} :catch_1bb
    .catchall {:try_start_55 .. :try_end_175} :catchall_1f6

    goto/16 :goto_55

    .line 601
    :catch_177
    move-exception v0

    .line 602
    :goto_178
    :try_start_178
    const-string v2, "ANRManager"

    const-string v3, "FileNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_1f6

    .line 607
    if-eqz v1, :cond_41

    .line 609
    :try_start_181
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_186

    goto/16 :goto_41

    .line 610
    :catch_186
    move-exception v0

    .line 611
    const-string v1, "ANRManager"

    const-string v2, "IOException when close buffer reader:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 590
    :cond_190
    :try_start_190
    const-string v5, "node"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_55

    const-string v5, "node"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0x14

    if-ge v2, v5, :cond_55

    .line 596
    :cond_1a3
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 597
    invoke-static {v0, p1}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->a(ILjava/util/ArrayList;)V
    :try_end_1ba
    .catch Ljava/io/FileNotFoundException; {:try_start_190 .. :try_end_1ba} :catch_177
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1ba} :catch_1bb
    .catchall {:try_start_190 .. :try_end_1ba} :catchall_1f6

    goto :goto_1a7

    .line 603
    :catch_1bb
    move-exception v0

    .line 604
    :goto_1bc
    :try_start_1bc
    const-string v2, "ANRManager"

    const-string v3, "IOException when gettting Binder. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c3
    .catchall {:try_start_1bc .. :try_end_1c3} :catchall_1f6

    .line 607
    if-eqz v1, :cond_41

    .line 609
    :try_start_1c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_1ca

    goto/16 :goto_41

    .line 610
    :catch_1ca
    move-exception v0

    .line 611
    const-string v1, "ANRManager"

    const-string v2, "IOException when close buffer reader:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 607
    :cond_1d4
    if-eqz v1, :cond_41

    .line 609
    :try_start_1d6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1d9} :catch_1db

    goto/16 :goto_41

    .line 610
    :catch_1db
    move-exception v0

    .line 611
    const-string v1, "ANRManager"

    const-string v2, "IOException when close buffer reader:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_41

    .line 607
    :catchall_1e5
    move-exception v0

    move-object v1, v2

    :goto_1e7
    if-eqz v1, :cond_1ec

    .line 609
    :try_start_1e9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_1ed

    .line 612
    :cond_1ec
    :goto_1ec
    throw v0

    .line 610
    :catch_1ed
    move-exception v1

    .line 611
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ec

    .line 607
    :catchall_1f6
    move-exception v0

    goto :goto_1e7

    .line 603
    :catch_1f8
    move-exception v0

    move-object v1, v2

    goto :goto_1bc

    .line 601
    :catch_1fb
    move-exception v0

    move-object v1, v2

    goto/16 :goto_178
.end method

.method private static final a(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-static {p0, v0}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->a(ILjava/util/ArrayList;)V

    .line 620
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3f

    .line 621
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 622
    if-eqz v0, :cond_14

    .line 623
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 624
    if-eq v0, p0, :cond_14

    .line 625
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 626
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    if-eqz p2, :cond_14

    .line 628
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_14

    .line 635
    :cond_3f
    return-void
.end method

.method static synthetic b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 3

    .prologue
    .line 364
    invoke-static {p0, p1, p2}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->a(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    return-void
.end method

.method private static final d()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 490
    const/4 v0, 0x0

    .line 493
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v2, "/sys/kernel/debug/binder/timeout_log"

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_e} :catch_5b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_76
    .catchall {:try_start_2 .. :try_end_e} :catchall_91

    move-result v2

    if-nez v2, :cond_21

    .line 520
    :cond_11
    if-eqz v1, :cond_16

    .line 522
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_18

    :cond_16
    :goto_16
    move-object v0, v1

    .line 527
    :cond_17
    :goto_17
    return-object v0

    .line 523
    :catch_18
    move-exception v0

    .line 524
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 498
    :cond_21
    :try_start_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_26} :catch_5b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_76
    .catchall {:try_start_21 .. :try_end_26} :catchall_91

    .line 500
    :try_start_26
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_30} :catch_b1
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_aa
    .catchall {:try_start_26 .. :try_end_30} :catchall_a5

    .line 503
    :cond_30
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 504
    new-instance v3, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    invoke-direct {v3, v1}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;-><init>(Ljava/lang/String;)V

    .line 505
    if-eqz v3, :cond_44

    iget v1, v3, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-lez v1, :cond_44

    .line 506
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_47} :catch_b6
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_47} :catch_af
    .catchall {:try_start_30 .. :try_end_47} :catchall_a8

    move-result v1

    const/16 v3, 0x40

    if-le v1, v3, :cond_30

    .line 520
    :cond_4c
    if-eqz v2, :cond_17

    .line 522
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_17

    .line 523
    :catch_52
    move-exception v1

    .line 524
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 514
    :catch_5b
    move-exception v0

    move-object v2, v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 515
    :goto_60
    :try_start_60
    const-string v3, "ANRManager"

    const-string v4, "FileNotFoundException"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_a8

    .line 520
    if-eqz v2, :cond_17

    .line 522
    :try_start_69
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_17

    .line 523
    :catch_6d
    move-exception v1

    .line 524
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 516
    :catch_76
    move-exception v0

    move-object v2, v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 517
    :goto_7b
    :try_start_7b
    const-string v3, "ANRManager"

    const-string v4, "IOException when gettting Binder. "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_a8

    .line 520
    if-eqz v2, :cond_17

    .line 522
    :try_start_84
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_17

    .line 523
    :catch_88
    move-exception v1

    .line 524
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 520
    :catchall_91
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    :goto_94
    if-eqz v2, :cond_17

    .line 522
    :try_start_96
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9b

    goto/16 :goto_17

    .line 523
    :catch_9b
    move-exception v1

    .line 524
    const-string v2, "ANRManager"

    const-string v3, "IOException when close buffer reader:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 520
    :catchall_a5
    move-exception v2

    move-object v2, v1

    goto :goto_94

    :catchall_a8
    move-exception v1

    goto :goto_94

    .line 516
    :catch_aa
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_7b

    :catch_af
    move-exception v1

    goto :goto_7b

    .line 514
    :catch_b1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_60

    :catch_b6
    move-exception v1

    goto :goto_60
.end method

.method public static final getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    if-lez p0, :cond_4

    if-nez p1, :cond_6

    .line 445
    :cond_4
    const/4 v0, 0x0

    .line 470
    :goto_5
    return-object v0

    .line 448
    :cond_6
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeoutBinderFromPid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    .line 454
    if-eqz v0, :cond_b3

    iget v4, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v4, p0, :cond_b3

    .line 455
    add-int/lit8 v1, v1, 0x1

    .line 456
    iget v4, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 457
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderFromPid pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget v0, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :goto_86
    const/4 v0, 0x5

    if-lt v1, v0, :cond_b3

    :cond_89
    move-object v0, v2

    .line 470
    goto/16 :goto_5

    .line 461
    :cond_8c
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderFromPid pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    :cond_b3
    move v0, v1

    move v1, v0

    .line 468
    goto :goto_37
.end method

.method public static final getTimeoutBinderPidList(II)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    if-gtz p0, :cond_4

    .line 409
    const/4 v0, 0x0

    .line 439
    :goto_3
    return-object v0

    .line 412
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->d()Ljava/util/ArrayList;

    move-result-object v3

    .line 416
    const/4 v2, 0x0

    .line 417
    invoke-static {p0, p1, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->a(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    .line 418
    :goto_15
    if-eqz v2, :cond_5b

    .line 419
    iget v4, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    if-lez v4, :cond_8f

    .line 420
    add-int/lit8 v0, v0, 0x1

    .line 421
    iget v4, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 422
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderPidList pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget v4, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :goto_58
    const/4 v4, 0x5

    if-lt v0, v4, :cond_8f

    .line 435
    :cond_5b
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_99

    .line 436
    :cond_63
    invoke-static {p0, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 426
    :cond_68
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTimeoutBinderPidList pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 432
    :cond_8f
    iget v4, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    iget v2, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstTid:I

    invoke-static {v4, v2, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->a(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v2

    goto/16 :goto_15

    :cond_99
    move-object v0, v1

    .line 439
    goto/16 :goto_3
.end method
