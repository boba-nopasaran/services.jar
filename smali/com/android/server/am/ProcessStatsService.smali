.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 65
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 5
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 85
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 87
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    .line 88
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 89
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    .prologue
    .line 564
    const-wide/16 v4, 0x3c

    mul-long/2addr v4, p2

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 566
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v2, :cond_1b

    .line 567
    const-string v4, "Unable to build stats!"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    :goto_1a
    return-void

    .line 570
    :cond_1b
    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 571
    .local v3, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v11, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v11, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 572
    .local v11, "stream":Ljava/io/InputStream;
    invoke-virtual {v3, v11}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 573
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v4, :cond_38

    .line 574
    const-string v4, "Failure reading: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a

    .line 577
    :cond_38
    if-eqz p7, :cond_40

    .line 578
    move-object/from16 v0, p6

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1a

    .line 580
    :cond_40
    if-nez p8, :cond_44

    if-eqz p9, :cond_56

    .line 581
    :cond_44
    if-nez p9, :cond_54

    const/4 v8, 0x1

    :goto_47
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_1a

    :cond_54
    const/4 v8, 0x0

    goto :goto_47

    :cond_56
    move-object v4, p1

    move-object/from16 v5, p6

    move-wide/from16 v6, p4

    move/from16 v8, p11

    .line 583
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_1a
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 589
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 593
    const-string v0, "    [--start-testing] [--stop-testing] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 58
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 639
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 641
    .local v12, "now":J
    const/16 v46, 0x0

    .line 642
    .local v46, "isCheckin":Z
    const/16 v23, 0x0

    .line 643
    .local v23, "isCompact":Z
    const/16 v47, 0x0

    .line 644
    .local v47, "isCsv":Z
    const/16 v38, 0x0

    .line 645
    .local v38, "currentOnly":Z
    const/16 v24, 0x0

    .line 646
    .local v24, "dumpDetails":Z
    const/16 v25, 0x0

    .line 647
    .local v25, "dumpFullDetails":Z
    const/16 v26, 0x0

    .line 648
    .local v26, "dumpAll":Z
    const/16 v50, 0x0

    .line 649
    .local v50, "quit":Z
    const/4 v2, 0x0

    .line 650
    .local v2, "aggregateHours":I
    const/16 v48, 0x0

    .line 651
    .local v48, "lastIndex":I
    const/16 v49, 0x2

    .line 652
    .local v49, "maxNum":I
    const/16 v27, 0x0

    .line 653
    .local v27, "activeOnly":Z
    const/4 v14, 0x0

    .line 654
    .local v14, "reqPackage":Ljava/lang/String;
    const/4 v6, 0x0

    .line 655
    .local v6, "csvSepScreenStats":Z
    const/4 v3, 0x2

    new-array v7, v3, [I

    fill-array-data v7, :array_7ca

    .line 656
    .local v7, "csvScreenStats":[I
    const/4 v8, 0x0

    .line 657
    .local v8, "csvSepMemStats":Z
    const/4 v3, 0x1

    new-array v9, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x3

    aput v4, v9, v3

    .line 658
    .local v9, "csvMemStats":[I
    const/4 v10, 0x1

    .line 659
    .local v10, "csvSepProcStats":Z
    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 660
    .local v11, "csvProcStats":[I
    if-eqz p3, :cond_43e

    .line 661
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_32
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-ge v0, v3, :cond_43e

    .line 662
    aget-object v28, p3, v45

    .line 663
    .local v28, "arg":Ljava/lang/String;
    const-string v3, "--checkin"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 664
    const/16 v46, 0x1

    .line 661
    :goto_47
    add-int/lit8 v45, v45, 0x1

    goto :goto_32

    .line 665
    :cond_4a
    const-string v3, "-c"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 666
    const/16 v23, 0x1

    goto :goto_47

    .line 667
    :cond_57
    const-string v3, "--csv"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 668
    const/16 v47, 0x1

    goto :goto_47

    .line 669
    :cond_64
    const-string v3, "--csv-screen"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 670
    add-int/lit8 v45, v45, 0x1

    .line 671
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_82

    .line 672
    const-string v3, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1030
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_81
    :goto_81
    return-void

    .line 676
    .restart local v28    # "arg":Ljava/lang/String;
    .restart local v45    # "i":I
    :cond_82
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 677
    .local v51, "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 678
    .local v40, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v7

    .line 680
    if-nez v7, :cond_c6

    .line 681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_81

    .line 685
    :cond_c6
    const/4 v3, 0x0

    aget-boolean v6, v51, v3

    .line 686
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_cb
    const-string v3, "--csv-mem"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 687
    add-int/lit8 v45, v45, 0x1

    .line 688
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_e9

    .line 689
    const-string v3, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_81

    .line 693
    :cond_e9
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 694
    .restart local v51    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 695
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v9

    .line 696
    if-nez v9, :cond_12e

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 698
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 701
    :cond_12e
    const/4 v3, 0x0

    aget-boolean v8, v51, v3

    .line 702
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_133
    const-string v3, "--csv-proc"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 703
    add-int/lit8 v45, v45, 0x1

    .line 704
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_152

    .line 705
    const-string v3, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 709
    :cond_152
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v51, v0

    .line 710
    .restart local v51    # "sep":[Z
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v40, v0

    .line 711
    .restart local v40    # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p3, v45

    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-static {v3, v4, v5, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v11

    .line 712
    if-nez v11, :cond_197

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v40, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 717
    :cond_197
    const/4 v3, 0x0

    aget-boolean v10, v51, v3

    .line 718
    goto/16 :goto_47

    .end local v40    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_19c
    const-string v3, "--details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    .line 719
    const/16 v24, 0x1

    goto/16 :goto_47

    .line 720
    :cond_1aa
    const-string v3, "--full-details"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 721
    const/16 v25, 0x1

    goto/16 :goto_47

    .line 722
    :cond_1b8
    const-string v3, "--hours"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ff

    .line 723
    add-int/lit8 v45, v45, 0x1

    .line 724
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_1d7

    .line 725
    const-string v3, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 730
    :cond_1d7
    :try_start_1d7
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1d7 .. :try_end_1dc} :catch_1df

    move-result v2

    goto/16 :goto_47

    .line 731
    :catch_1df
    move-exception v39

    .line 732
    .local v39, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --hours argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 736
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_1ff
    const-string v3, "--last"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_246

    .line 737
    add-int/lit8 v45, v45, 0x1

    .line 738
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_21e

    .line 739
    const-string v3, "Error: argument required for --last"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 744
    :cond_21e
    :try_start_21e
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_223
    .catch Ljava/lang/NumberFormatException; {:try_start_21e .. :try_end_223} :catch_226

    move-result v48

    goto/16 :goto_47

    .line 745
    :catch_226
    move-exception v39

    .line 746
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --last argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 750
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_246
    const-string v3, "--max"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28d

    .line 751
    add-int/lit8 v45, v45, 0x1

    .line 752
    move-object/from16 v0, p3

    array-length v3, v0

    move/from16 v0, v45

    if-lt v0, v3, :cond_265

    .line 753
    const-string v3, "Error: argument required for --max"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 758
    :cond_265
    :try_start_265
    aget-object v3, p3, v45

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26a
    .catch Ljava/lang/NumberFormatException; {:try_start_265 .. :try_end_26a} :catch_26d

    move-result v49

    goto/16 :goto_47

    .line 759
    :catch_26d
    move-exception v39

    .line 760
    .restart local v39    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: --max argument not an int -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v45

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 764
    .end local v39    # "e":Ljava/lang/NumberFormatException;
    :cond_28d
    const-string v3, "--active"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29d

    .line 765
    const/16 v27, 0x1

    .line 766
    const/16 v38, 0x1

    goto/16 :goto_47

    .line 767
    :cond_29d
    const-string v3, "--current"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ab

    .line 768
    const/16 v38, 0x1

    goto/16 :goto_47

    .line 769
    :cond_2ab
    const-string v3, "--commit"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2da

    .line 770
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 771
    :try_start_2ba
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 772
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 773
    const-string v3, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    const/16 v50, 0x1

    .line 775
    monitor-exit v4

    goto/16 :goto_47

    :catchall_2d7
    move-exception v3

    monitor-exit v4
    :try_end_2d9
    .catchall {:try_start_2ba .. :try_end_2d9} :catchall_2d7

    throw v3

    .line 776
    :cond_2da
    const-string v3, "--reset"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ff

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 778
    :try_start_2e9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 779
    const-string v3, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    const/16 v50, 0x1

    .line 781
    monitor-exit v4

    goto/16 :goto_47

    :catchall_2fc
    move-exception v3

    monitor-exit v4
    :try_end_2fe
    .catchall {:try_start_2e9 .. :try_end_2fe} :catchall_2fc

    throw v3

    .line 782
    :cond_2ff
    const-string v3, "--clear"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_351

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 784
    :try_start_30e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 785
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 786
    .local v44, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_342

    .line 787
    const/16 v41, 0x0

    .local v41, "fi":I
    :goto_325
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v41

    if-ge v0, v3, :cond_342

    .line 788
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 787
    add-int/lit8 v41, v41, 0x1

    goto :goto_325

    .line 791
    .end local v41    # "fi":I
    :cond_342
    const-string v3, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    const/16 v50, 0x1

    .line 793
    monitor-exit v4

    goto/16 :goto_47

    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_34e
    move-exception v3

    monitor-exit v4
    :try_end_350
    .catchall {:try_start_30e .. :try_end_350} :catchall_34e

    throw v3

    .line 794
    :cond_351
    const-string v3, "--write"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_372

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 796
    :try_start_360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 797
    const-string v3, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    const/16 v50, 0x1

    .line 799
    monitor-exit v4

    goto/16 :goto_47

    :catchall_36f
    move-exception v3

    monitor-exit v4
    :try_end_371
    .catchall {:try_start_360 .. :try_end_371} :catchall_36f

    throw v3

    .line 800
    :cond_372
    const-string v3, "--read"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39d

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 802
    :try_start_381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 803
    const-string v3, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const/16 v50, 0x1

    .line 805
    monitor-exit v4

    goto/16 :goto_47

    :catchall_39a
    move-exception v3

    monitor-exit v4
    :try_end_39c
    .catchall {:try_start_381 .. :try_end_39c} :catchall_39a

    throw v3

    .line 806
    :cond_39d
    const-string v3, "--start-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c3

    .line 807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 808
    :try_start_3ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 809
    const-string v3, "Started high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const/16 v50, 0x1

    .line 811
    monitor-exit v4

    goto/16 :goto_47

    :catchall_3c0
    move-exception v3

    monitor-exit v4
    :try_end_3c2
    .catchall {:try_start_3ac .. :try_end_3c2} :catchall_3c0

    throw v3

    .line 812
    :cond_3c3
    const-string v3, "--stop-testing"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e9

    .line 813
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 814
    :try_start_3d2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerService;->setTestPssMode(Z)V

    .line 815
    const-string v3, "Stopped high frequency sampling."

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const/16 v50, 0x1

    .line 817
    monitor-exit v4

    goto/16 :goto_47

    :catchall_3e6
    move-exception v3

    monitor-exit v4
    :try_end_3e8
    .catchall {:try_start_3d2 .. :try_end_3e8} :catchall_3e6

    throw v3

    .line 818
    :cond_3e9
    const-string v3, "-h"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f8

    .line 819
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 821
    :cond_3f8
    const-string v3, "-a"

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_408

    .line 822
    const/16 v24, 0x1

    .line 823
    const/16 v26, 0x1

    goto/16 :goto_47

    .line 824
    :cond_408
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_438

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_438

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_81

    .line 830
    :cond_438
    move-object/from16 v14, v28

    .line 835
    const/16 v24, 0x1

    goto/16 :goto_47

    .line 840
    .end local v28    # "arg":Ljava/lang/String;
    .end local v45    # "i":I
    :cond_43e
    if-nez v50, :cond_81

    .line 844
    if-eqz v47, :cond_4b3

    .line 845
    const-string v3, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    if-nez v6, :cond_463

    .line 847
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_44d
    array-length v3, v7

    move/from16 v0, v45

    if-ge v0, v3, :cond_463

    .line 848
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    aget v3, v7, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 847
    add-int/lit8 v45, v45, 0x1

    goto :goto_44d

    .line 852
    .end local v45    # "i":I
    :cond_463
    if-nez v8, :cond_47d

    .line 853
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_467
    array-length v3, v9

    move/from16 v0, v45

    if-ge v0, v3, :cond_47d

    .line 854
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    aget v3, v9, v45

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 853
    add-int/lit8 v45, v45, 0x1

    goto :goto_467

    .line 858
    .end local v45    # "i":I
    :cond_47d
    if-nez v10, :cond_49b

    .line 859
    const/16 v45, 0x0

    .restart local v45    # "i":I
    :goto_481
    array-length v3, v11

    move/from16 v0, v45

    if-ge v0, v3, :cond_49b

    .line 860
    const-string v3, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 861
    sget-object v3, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v4, v11, v45

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 859
    add-int/lit8 v45, v45, 0x1

    goto :goto_481

    .line 864
    .end local v45    # "i":I
    :cond_49b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 866
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    :try_start_4aa
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 886
    monitor-exit v16

    goto/16 :goto_81

    :catchall_4b0
    move-exception v3

    monitor-exit v16
    :try_end_4b2
    .catchall {:try_start_4aa .. :try_end_4b2} :catchall_4b0

    throw v3

    .line 888
    :cond_4b3
    if-eqz v2, :cond_4d8

    .line 889
    const-string v3, "AGGREGATED OVER LAST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_81

    .line 893
    :cond_4d8
    if-lez v48, :cond_5e7

    .line 894
    const-string v3, "LAST STATS AT INDEX "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 896
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v48

    if-lt v0, v3, :cond_519

    .line 897
    const-string v3, "Only have "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " data sets"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 900
    :cond_519
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 901
    .local v42, "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 902
    .local v15, "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 903
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_571

    .line 904
    if-nez v46, :cond_544

    if-eqz v23, :cond_54b

    :cond_544
    const-string v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 905
    :cond_54b
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_81

    .line 909
    :cond_571
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 910
    .local v43, "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 911
    .local v37, "checkedIn":Z
    if-nez v46, :cond_585

    if-eqz v23, :cond_58c

    .line 913
    :cond_585
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_81

    .line 915
    :cond_58c
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 916
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    if-eqz v37, :cond_5a3

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 918
    :cond_5a3
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    if-nez v24, :cond_5ae

    if-eqz v25, :cond_5da

    .line 920
    :cond_5ae
    if-nez v25, :cond_5d7

    const/16 v20, 0x1

    :goto_5b2
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v21, v26

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 922
    if-eqz v26, :cond_81

    .line 923
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_81

    .line 920
    :cond_5d7
    const/16 v20, 0x0

    goto :goto_5b2

    :cond_5da
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 926
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto/16 :goto_81

    .line 932
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5e7
    const/16 v52, 0x0

    .line 933
    .local v52, "sepNeeded":Z
    if-nez v26, :cond_5ed

    if-eqz v46, :cond_72a

    .line 934
    :cond_5ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 936
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v46, :cond_672

    const/4 v3, 0x1

    :goto_5f9
    :try_start_5f9
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v44

    .line 937
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v44, :cond_723

    .line 938
    if-eqz v46, :cond_674

    const/16 v53, 0x0

    .line 939
    .local v53, "start":I
    :goto_605
    if-gez v53, :cond_609

    .line 940
    const/16 v53, 0x0

    .line 942
    :cond_609
    move/from16 v45, v53

    .restart local v45    # "i":I
    :goto_60b
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I
    :try_end_60e
    .catchall {:try_start_5f9 .. :try_end_60e} :catchall_6d5

    move-result v3

    move/from16 v0, v45

    if-ge v0, v3, :cond_723

    .line 945
    :try_start_613
    new-instance v42, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 946
    .restart local v42    # "file":Landroid/util/AtomicFile;
    new-instance v15, Lcom/android/internal/app/ProcessStats;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 947
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 948
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_67b

    .line 949
    if-nez v46, :cond_63a

    if-eqz v23, :cond_641

    :cond_63a
    const-string v3, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    :cond_641
    const-string v3, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    const-string v3, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_66f
    .catch Ljava/lang/Throwable; {:try_start_613 .. :try_end_66f} :catch_6ba
    .catchall {:try_start_613 .. :try_end_66f} :catchall_6d5

    .line 942
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v42    # "file":Landroid/util/AtomicFile;
    :cond_66f
    :goto_66f
    add-int/lit8 v45, v45, 0x1

    goto :goto_60b

    .line 936
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    .end local v53    # "start":I
    :cond_672
    const/4 v3, 0x0

    goto :goto_5f9

    .line 938
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_674
    :try_start_674
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I
    :try_end_677
    .catchall {:try_start_674 .. :try_end_677} :catchall_6d5

    move-result v3

    sub-int v53, v3, v49

    goto :goto_605

    .line 956
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v45    # "i":I
    .restart local v53    # "start":I
    :cond_67b
    :try_start_67b
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v43

    .line 957
    .restart local v43    # "fileStr":Ljava/lang/String;
    const-string v3, ".ci"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v37

    .line 958
    .restart local v37    # "checkedIn":Z
    if-nez v46, :cond_68f

    if-eqz v23, :cond_6de

    .line 960
    :cond_68f
    move-object/from16 v0, p2

    invoke-virtual {v15, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 981
    :goto_694
    if-eqz v46, :cond_66f

    .line 983
    invoke-virtual/range {v42 .. v42}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v16, ".ci"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6b9
    .catch Ljava/lang/Throwable; {:try_start_67b .. :try_end_6b9} :catch_6ba
    .catchall {:try_start_67b .. :try_end_6b9} :catchall_6d5

    goto :goto_66f

    .line 986
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    :catch_6ba
    move-exception v39

    .line 987
    .local v39, "e":Ljava/lang/Throwable;
    :try_start_6bb
    const-string v3, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_6d4
    .catchall {:try_start_6bb .. :try_end_6d4} :catchall_6d5

    goto :goto_66f

    .line 993
    .end local v39    # "e":Ljava/lang/Throwable;
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45    # "i":I
    .end local v53    # "start":I
    :catchall_6d5
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 962
    .restart local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v37    # "checkedIn":Z
    .restart local v42    # "file":Landroid/util/AtomicFile;
    .restart local v43    # "fileStr":Ljava/lang/String;
    .restart local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v45    # "i":I
    .restart local v53    # "start":I
    :cond_6de
    if-eqz v52, :cond_713

    .line 963
    :try_start_6e0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 967
    :goto_6e3
    const-string v3, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget-object v3, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    if-eqz v37, :cond_6fa

    const-string v3, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    :cond_6fa
    const-string v3, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    if-eqz v25, :cond_716

    .line 975
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v22, v27

    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_694

    .line 965
    :cond_713
    const/16 v52, 0x1

    goto :goto_6e3

    :cond_716
    move-object/from16 v16, p2

    move-object/from16 v17, v14

    move-wide/from16 v18, v12

    move/from16 v20, v27

    .line 978
    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_721
    .catch Ljava/lang/Throwable; {:try_start_6e0 .. :try_end_721} :catch_6ba
    .catchall {:try_start_6e0 .. :try_end_721} :catchall_6d5

    goto/16 :goto_694

    .line 993
    .end local v15    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v37    # "checkedIn":Z
    .end local v42    # "file":Landroid/util/AtomicFile;
    .end local v43    # "fileStr":Ljava/lang/String;
    .end local v45    # "i":I
    .end local v53    # "start":I
    :cond_723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 996
    .end local v44    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_72a
    if-nez v46, :cond_81

    .line 997
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 998
    if-eqz v23, :cond_771

    .line 999
    :try_start_733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v14}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1016
    :goto_73c
    monitor-exit v4
    :try_end_73d
    .catchall {:try_start_733 .. :try_end_73d} :catchall_7c6

    .line 1017
    if-nez v38, :cond_81

    .line 1018
    if-eqz v52, :cond_744

    .line 1019
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1021
    :cond_744
    const-string v3, "AGGREGATED OVER LAST 24 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    const-wide/16 v18, 0x18

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1025
    const-string v3, "AGGREGATED OVER LAST 3 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    const-wide/16 v18, 0x3

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v12

    move-object/from16 v22, v14

    invoke-direct/range {v16 .. v27}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_81

    .line 1001
    :cond_771
    if-eqz v52, :cond_776

    .line 1002
    :try_start_773
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1004
    :cond_776
    const-string v3, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    if-nez v24, :cond_781

    if-eqz v25, :cond_7b4

    .line 1006
    :cond_781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v29, v0

    if-nez v25, :cond_7b1

    const/16 v34, 0x1

    :goto_78b
    move-object/from16 v30, p2

    move-object/from16 v31, v14

    move-wide/from16 v32, v12

    move/from16 v35, v26

    move/from16 v36, v27

    invoke-virtual/range {v29 .. v36}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 1008
    if-eqz v26, :cond_7ae

    .line 1009
    const-string v3, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1014
    :cond_7ae
    :goto_7ae
    const/16 v52, 0x1

    goto :goto_73c

    .line 1006
    :cond_7b1
    const/16 v34, 0x0

    goto :goto_78b

    .line 1012
    :cond_7b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v18, p2

    move-object/from16 v19, v14

    move-wide/from16 v20, v12

    move/from16 v22, v27

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_7ae

    .line 1016
    :catchall_7c6
    move-exception v3

    monitor-exit v4
    :try_end_7c8
    .catchall {:try_start_773 .. :try_end_7c8} :catchall_7c6

    throw v3

    .line 655
    nop

    :array_7ca
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 358
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_b

    array-length v6, v3

    if-gt v6, p1, :cond_d

    .line 359
    :cond_b
    const/4 v4, 0x0

    .line 379
    :goto_c
    return-object v4

    .line 361
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    array-length v6, v3

    if-ge v5, v6, :cond_40

    .line 365
    aget-object v1, v3, v5

    .line 366
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_34

    const-string v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 364
    :cond_31
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 372
    :cond_34
    if-nez p2, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 376
    :cond_3c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 378
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_40
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_c
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 16
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x2c

    const/4 v8, 0x0

    .line 412
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 414
    .local v5, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v2, v9, :cond_80

    .line 415
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_2a

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 416
    .local v0, "c":C
    :goto_1b
    if-eq v0, v10, :cond_2c

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_2c

    const/16 v9, 0x20

    if-eq v0, v9, :cond_2c

    if-eqz v0, :cond_2c

    .line 414
    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .end local v0    # "c":C
    :cond_2a
    move v0, v8

    .line 415
    goto :goto_1b

    .line 419
    .restart local v0    # "c":C
    :cond_2c
    if-ne v0, v10, :cond_6d

    const/4 v3, 0x1

    .line 420
    .local v3, "isSep":Z
    :goto_2f
    if-nez v5, :cond_6f

    .line 422
    aput-boolean v3, p3, v8

    .line 427
    :cond_33
    add-int/lit8 v9, v2, -0x1

    if-ge v5, v9, :cond_7d

    .line 428
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 429
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    array-length v9, p0

    if-ge v4, v9, :cond_4f

    .line 430
    aget-object v9, p0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v7, 0x0

    .line 436
    :cond_4f
    if-eqz v7, :cond_7d

    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid word \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8

    .line 448
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_6c
    :goto_6c
    return-object v1

    .restart local v0    # "c":C
    :cond_6d
    move v3, v8

    .line 419
    goto :goto_2f

    .line 423
    .restart local v3    # "isSep":Z
    :cond_6f
    if-eqz v0, :cond_33

    aget-boolean v9, p3, v8

    if-eq v9, v3, :cond_33

    .line 424
    const-string v9, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v9, p4, v8

    goto :goto_6c

    .line 429
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 441
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_7d
    add-int/lit8 v5, v2, 0x1

    goto :goto_27

    .line 444
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 445
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    :goto_87
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_6c

    .line 446
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_87
.end method

.method private updateFile()V
    .registers 6

    .prologue
    .line 258
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 261
    return-void
.end method

.method private writeStateLocked(Z)V
    .registers 4
    .param p1, "sync"    # Z

    .prologue
    .line 216
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v1, :cond_5

    .line 222
    :goto_4
    return-void

    .line 219
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 220
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    goto :goto_4
.end method


# virtual methods
.method public addSysMemUsageLocked(JJJJJ)V
    .registers 24
    .param p1, "cachedMem"    # J
    .param p3, "freeMem"    # J
    .param p5, "zramMem"    # J
    .param p7, "kernelMem"    # J
    .param p9, "nativeMem"    # J

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 185
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 622
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3f

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    :goto_3e
    return-void

    .line 630
    :cond_3f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 632
    .local v0, "ident":J
    :try_start_43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 634
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3e

    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    move-object v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 399
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 400
    if-eqz p2, :cond_1d

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 403
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 405
    const/4 v0, 0x1

    .line 407
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public getCurrentMemoryState()I
    .registers 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 557
    :try_start_3
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v1

    return v0

    .line 558
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "current":Landroid/os/Parcel;
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    :try_start_13
    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_5a

    .line 458
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 459
    .local v4, "now":J
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 460
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v4, v7, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 461
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v7, v0, v4, v5, v9}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 462
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_57

    .line 463
    if-eqz p1, :cond_81

    .line 464
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_32
    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 465
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_81

    .line 466
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_5a

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_3e
    if-ltz v3, :cond_81

    .line 468
    :try_start_40
    new-instance v8, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x10000000

    invoke-static {v8, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 470
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_54} :catch_61
    .catchall {:try_start_40 .. :try_end_54} :catchall_5a

    .line 466
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_54
    add-int/lit8 v3, v3, -0x1

    goto :goto_3e

    .line 462
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_57
    move-exception v7

    :try_start_58
    monitor-exit v8
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    .line 478
    :catchall_5a
    move-exception v7

    iget-object v8, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 471
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    .restart local v4    # "now":J
    :catch_61
    move-exception v1

    .line 472
    .local v1, "e":Ljava/io/IOException;
    :try_start_62
    const-string v8, "ProcessStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure opening procstat file "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_5a

    goto :goto_54

    .line 478
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_81
    iget-object v7, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    return-object v7
.end method

.method public getMemFactorLocked()I
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "versionCode"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "className"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 30
    .param p1, "minTime"    # J

    .prologue
    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 488
    :try_start_1c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 490
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_12a
    .catchall {:try_start_1c .. :try_end_27} :catchall_145

    .line 491
    :try_start_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 492
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-wide v14, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v6, v14, v15, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v24, v0

    sub-long v4, v22, v24

    .line 497
    .local v4, "curTime":J
    monitor-exit v20
    :try_end_6f
    .catchall {:try_start_27 .. :try_end_6f} :catchall_142

    .line 498
    cmp-long v19, v4, p1

    if-gez v19, :cond_1a3

    .line 500
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    :try_start_79
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 501
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1a3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1a3

    .line 502
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 503
    sget-object v19, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/app/ProcessStats;

    .line 504
    .local v17, "stats":Lcom/android/internal/app/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 505
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .line 506
    .local v11, "i":I
    :goto_a7
    if-ltz v11, :cond_196

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    cmp-long v19, v20, p1

    if-gez v19, :cond_196

    .line 508
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v20, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 509
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    .line 510
    new-instance v12, Lcom/android/internal/app/ProcessStats;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 511
    .local v12, "moreStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 512
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_150

    .line 513
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    .line 514
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v19, "Added stats: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v19, ", over "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v20, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 520
    const-string v19, "ProcessStatsService"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_128} :catch_12a
    .catchall {:try_start_79 .. :try_end_128} :catchall_145

    goto/16 :goto_a7

    .line 547
    .end local v4    # "curTime":J
    .end local v6    # "current":Landroid/os/Parcel;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v14    # "now":J
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :catch_12a
    move-exception v7

    .line 548
    .local v7, "e":Ljava/io/IOException;
    :try_start_12b
    const-string v19, "ProcessStatsService"

    const-string v20, "Failed building output pipe"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_12b .. :try_end_136} :catchall_145

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 552
    const/16 v19, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    :goto_141
    return-object v19

    .line 497
    .restart local v6    # "current":Landroid/os/Parcel;
    :catchall_142
    move-exception v19

    :try_start_143
    monitor-exit v20
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw v19
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_145} :catch_12a
    .catchall {:try_start_144 .. :try_end_145} :catchall_145

    .line 550
    .end local v6    # "current":Landroid/os/Parcel;
    :catchall_145
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v19

    .line 522
    .restart local v4    # "curTime":J
    .restart local v6    # "current":Landroid/os/Parcel;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .restart local v14    # "now":J
    .restart local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_150
    :try_start_150
    const-string v20, "ProcessStatsService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Failure reading "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v19, v11, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "; "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a7

    .line 527
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    :cond_196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 528
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 531
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v17    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_1a3
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 532
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 534
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v18, Lcom/android/server/am/ProcessStatsService$3;

    const-string v19, "ProcessStats pipe output"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 545
    .local v18, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 546
    const/16 v19, 0x0

    aget-object v19, v8, v19
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_1c2} :catch_12a
    .catchall {:try_start_150 .. :try_end_1c2} :catchall_145

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_141
.end method

.method public isMemFactorLowered()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 107
    :catch_5
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 110
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :cond_11
    throw v0
.end method

.method performWriteState()V
    .registers 7

    .prologue
    .line 267
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 268
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 269
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 270
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 271
    if-nez v0, :cond_e

    .line 272
    monitor-exit v5

    .line 294
    :goto_d
    return-void

    .line 274
    :cond_e
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 275
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 276
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_38

    .line 279
    const/4 v3, 0x0

    .line 281
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 284
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2c} :catch_3b
    .catchall {:try_start_1b .. :try_end_2c} :catchall_52

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 277
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    .line 286
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_3b
    move-exception v1

    .line 287
    .local v1, "e":Ljava/io/IOException;
    :try_start_3c
    const-string v4, "ProcessStatsService"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_52

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d

    .line 290
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 292
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 9
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .prologue
    const/4 v2, 0x0

    .line 298
    :try_start_1
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 299
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 300
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 301
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_48

    .line 302
    const-string v3, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_29} :catch_2a

    .line 352
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_29
    return v2

    .line 347
    :catch_2a
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 349
    const-string v3, "ProcessStatsService"

    const-string v4, "Error reading process statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 352
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_48
    const/4 v2, 0x1

    goto :goto_29
.end method

.method public setMemFactorLocked(IZJ)Z
    .registers 26
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v14, :cond_af

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 134
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 135
    if-eqz p2, :cond_17

    .line 136
    add-int/lit8 p1, p1, 0x4

    .line 138
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v14, :cond_eb

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_4a

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v15, v15, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    aget-wide v16, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, p3, v18

    add-long v16, v16, v18

    aput-wide v16, v14, v15

    .line 143
    :cond_4a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move/from16 v0, p1

    iput v0, v14, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v14, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v14}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    .line 147
    .local v9, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v4, v14, -0x1

    .local v4, "ipkg":I
    :goto_6a
    if-ltz v4, :cond_e9

    .line 148
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 149
    .local v12, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v6, v14, -0x1

    .local v6, "iuid":I
    :goto_78
    if-ltz v6, :cond_e6

    .line 150
    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SparseArray;

    .line 151
    .local v13, "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, "iver":I
    :goto_86
    if-ltz v7, :cond_e3

    .line 152
    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 153
    .local v8, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v11, v8, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 154
    .local v11, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "isvc":I
    :goto_96
    if-ltz v5, :cond_e0

    .line 155
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 156
    .local v10, "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isRestarting()Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 157
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setRestarting(ZIJ)V

    .line 154
    :cond_ac
    :goto_ac
    add-int/lit8 v5, v5, -0x1

    goto :goto_96

    .line 133
    .end local v4    # "ipkg":I
    .end local v5    # "isvc":I
    .end local v6    # "iuid":I
    .end local v7    # "iver":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_af
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 158
    .restart local v4    # "ipkg":I
    .restart local v5    # "isvc":I
    .restart local v6    # "iuid":I
    .restart local v7    # "iver":I
    .restart local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    .restart local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .restart local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .restart local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_b2
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v14

    if-eqz v14, :cond_ac

    .line 159
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_c5

    .line 160
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 162
    :cond_c5
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_d2

    .line 163
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 165
    :cond_d2
    iget v14, v10, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_ac

    .line 166
    const/4 v14, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v10, v14, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_ac

    .line 151
    .end local v10    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_e0
    add-int/lit8 v7, v7, -0x1

    goto :goto_86

    .line 149
    .end local v5    # "isvc":I
    .end local v8    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v11    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    :cond_e3
    add-int/lit8 v6, v6, -0x1

    goto :goto_78

    .line 147
    .end local v7    # "iver":I
    .end local v13    # "vers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_e6
    add-int/lit8 v4, v4, -0x1

    goto :goto_6a

    .line 173
    .end local v6    # "iuid":I
    .end local v12    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :cond_e9
    const/4 v14, 0x1

    .line 175
    .end local v4    # "ipkg":I
    .end local v9    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;>;"
    :goto_ea
    return v14

    :cond_eb
    const/4 v14, 0x0

    goto :goto_ea
.end method

.method public shouldWriteNowLocked(J)Z
    .registers 12
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 188
    iget-wide v2, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v4, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-lez v1, :cond_2b

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    .line 193
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 197
    :cond_2a
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public shutdownLocked()V
    .registers 3

    .prologue
    .line 201
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 203
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 205
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 383
    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 384
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_b

    .line 392
    :cond_a
    return-void

    .line 387
    :cond_b
    :goto_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_a

    .line 388
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "file":Ljava/lang/String;
    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_b
.end method

.method public writeStateAsyncLocked()V
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 209
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .registers 11
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 226
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 227
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v2, :cond_42

    .line 228
    :cond_f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 229
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 230
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndUptime:J

    .line 231
    if-eqz p2, :cond_2b

    .line 232
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 234
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 235
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 236
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 238
    :cond_42
    if-eqz p2, :cond_4c

    .line 239
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 240
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 242
    :cond_4c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 243
    const-string v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    if-nez p1, :cond_85

    .line 245
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    monitor-exit v3

    .line 255
    :goto_84
    return-void

    .line 252
    :cond_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_8a

    .line 254
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    goto :goto_84

    .line 252
    .end local v0    # "now":J
    :catchall_8a
    move-exception v2

    :try_start_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v2
.end method

.method public writeStateSyncLocked()V
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 213
    return-void
.end method
