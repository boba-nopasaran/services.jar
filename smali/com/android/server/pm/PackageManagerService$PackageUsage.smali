.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# instance fields
.field private final WRITE_INTERVAL:I

.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 667
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_d
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->WRITE_INTERVAL:I

    .line 671
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    .line 672
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 673
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 675
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return-void

    .line 668
    :cond_2a
    const v0, 0x1b7740

    goto :goto_d
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$5202(Lcom/android/server/pm/PackageManagerService$PackageUsage;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;
    .param p1, "x1"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getFile()Landroid/util/AtomicFile;
    .registers 5

    .prologue
    .line 798
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 799
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 800
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "package-usage.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 801
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 781
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 783
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 784
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 785
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 786
    const/4 v1, 0x0

    .line 791
    :goto_12
    return-object v1

    .line 788
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 790
    :cond_1b
    if-ne v0, p3, :cond_22

    .line 791
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 793
    :cond_22
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private writeInternal()V
    .registers 15

    .prologue
    .line 705
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 706
    :try_start_5
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_95

    .line 707
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_92

    move-result-object v2

    .line 708
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 710
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_d
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 711
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 712
    .local v4, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x1a0

    const/16 v11, 0x3e8

    const/16 v12, 0x408

    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 714
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 715
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-wide v10, v5, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_38

    .line 718
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 719
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    iget-wide v10, v5, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 722
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_71} :catch_72
    .catchall {:try_start_d .. :try_end_71} :catchall_92

    goto :goto_38

    .line 727
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_72
    move-exception v0

    .line 728
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_78

    .line 729
    :try_start_75
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 731
    :cond_78
    const-string v7, "PackageManager"

    const-string v10, "Failed to write package usage times"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7f
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_92

    .line 734
    :try_start_80
    monitor-exit v8
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_95

    .line 735
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 736
    return-void

    .line 725
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_8b
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 726
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_72
    .catchall {:try_start_8b .. :try_end_91} :catchall_92

    goto :goto_7f

    .line 733
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_92
    move-exception v7

    :try_start_93
    monitor-exit v9
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v7

    .line 734
    :catchall_95
    move-exception v7

    monitor-exit v8
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_95

    throw v7
.end method


# virtual methods
.method isHistoricalPackageUsageAvailable()Z
    .registers 2

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method readLP()V
    .registers 16

    .prologue
    .line 739
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mFileLock:Ljava/lang/Object;

    monitor-enter v12

    .line 740
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->getFile()Landroid/util/AtomicFile;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_57

    move-result-object v2

    .line 741
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 743
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_8
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_a8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_a6
    .catchall {:try_start_8 .. :try_end_11} :catchall_a4

    .line 744
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_11
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 746
    .local v7, "sb":Ljava/lang/StringBuffer;
    :cond_16
    :goto_16
    const/16 v11, 0x20

    invoke-direct {p0, v4, v7, v11}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1b} :catch_4e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_71
    .catchall {:try_start_11 .. :try_end_1b} :catchall_9e

    move-result-object v5

    .line 747
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_2d

    .line 773
    :try_start_1e
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 775
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_22
    monitor-exit v12
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_57

    .line 776
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 777
    return-void

    .line 750
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_2d
    const/16 v11, 0xa

    :try_start_2f
    invoke-direct {p0, v4, v7, v11}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v10

    .line 751
    .local v10, "timeInMillisString":Ljava/lang/String;
    if-nez v10, :cond_5a

    .line 752
    new-instance v11, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to find last usage time for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_4e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_4e} :catch_71
    .catchall {:try_start_2f .. :try_end_4e} :catchall_9e

    .line 768
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_4e
    move-exception v1

    move-object v3, v4

    .line 769
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v1, "expected":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_50
    const/4 v11, 0x0

    :try_start_51
    iput-boolean v11, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mIsHistoricalPackageUsageAvailable:Z
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_a4

    .line 773
    :try_start_53
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_22

    .line 775
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_57
    move-exception v11

    monitor-exit v12
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_57

    throw v11

    .line 755
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "timeInMillisString":Ljava/lang/String;
    :cond_5a
    :try_start_5a
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_64} :catch_4e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_64} :catch_71
    .catchall {:try_start_5a .. :try_end_64} :catchall_9e

    .line 756
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_16

    .line 761
    :try_start_66
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_66 .. :try_end_6d} :catch_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_6d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6d} :catch_71
    .catchall {:try_start_66 .. :try_end_6d} :catchall_9e

    move-result-wide v8

    .line 766
    .local v8, "timeInMillis":J
    :try_start_6e
    iput-wide v8, v6, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_70} :catch_4e
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_70} :catch_71
    .catchall {:try_start_6e .. :try_end_70} :catchall_9e

    goto :goto_16

    .line 770
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "timeInMillis":J
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_71
    move-exception v0

    move-object v3, v4

    .line 771
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_73
    :try_start_73
    const-string v11, "PackageManager"

    const-string v13, "Failed to read package usage times"

    invoke-static {v11, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_a4

    .line 773
    :try_start_7a
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_57

    goto :goto_22

    .line 762
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_7e
    move-exception v0

    .line 763
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_7f
    new-instance v11, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as a long."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_9e} :catch_4e
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_9e} :catch_71
    .catchall {:try_start_7f .. :try_end_9e} :catchall_9e

    .line 773
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catchall_9e
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_a0
    :try_start_a0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11
    :try_end_a4
    .catchall {:try_start_a0 .. :try_end_a4} :catchall_57

    :catchall_a4
    move-exception v11

    goto :goto_a0

    .line 770
    :catch_a6
    move-exception v0

    goto :goto_73

    .line 768
    :catch_a8
    move-exception v1

    goto :goto_50
.end method

.method write(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 682
    if-eqz p1, :cond_6

    .line 683
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V

    .line 702
    :cond_5
    :goto_5
    return-void

    .line 686
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->WRITE_INTERVAL:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    :cond_1e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 691
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    const-string v1, "PackageUsage_DiskWriter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    goto :goto_5
.end method
