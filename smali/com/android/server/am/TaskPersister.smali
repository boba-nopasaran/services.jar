.class public Lcom/android/server/am/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskPersister$OtherDeviceTask;,
        Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;,
        Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;,
        Lcom/android/server/am/TaskPersister$WriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG_PERSISTER:Z = false

.field static final DEBUG_RESTORER:Z = false

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_INSTALL_WAIT_TIME:J = 0x5265c00L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final RECENTS_FILENAME:Ljava/lang/String; = "_task"

.field private static final RESTORED_TASKS_DIRNAME:Ljava/lang/String; = "restored_recent_tasks"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_EXTENSION:Ljava/lang/String; = ".xml"

.field static sImagesDir:Ljava/io/File;

.field static sRestoredTasksDir:Ljava/io/File;

.field static sTasksDir:Ljava/io/File;


# instance fields
.field private mExpiredTasksCleanupTime:J

.field private final mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

.field private mNextWriteTime:J

.field private mOtherDeviceTasksMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPackageUidMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskPersister$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/android/server/am/ActivityStackSupervisor;)V
    .registers 6
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    .line 141
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 144
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    .line 145
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    .line 147
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_51

    .line 148
    const-string v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure creating tasks directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_51
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    .line 153
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_84

    .line 155
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_84

    .line 156
    const-string v0, "TaskPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure creating images directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_84
    new-instance v0, Ljava/io/File;

    const-string v1, "restored_recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    .line 162
    iput-object p2, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 163
    iget-object v0, p2, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 165
    new-instance v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    const-string v1, "LazyTaskWriterThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;-><init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Landroid/util/ArraySet;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/TaskPersister;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/am/TaskPersister;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/am/TaskPersister;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->removeExpiredTasksIfNeeded()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/TaskPersister;
    .param p1, "x1"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method private addOtherDeviceTasksToRecentsLocked()V
    .registers 4

    .prologue
    .line 664
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 665
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 666
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskPersister;->addOtherDeviceTasksToRecentsLocked(Ljava/lang/String;)V

    .line 665
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 668
    :cond_1b
    monitor-exit v2

    .line 669
    return-void

    .line 668
    .end local v0    # "i":I
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private canAddOtherDeviceTaskChain(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    const/4 v7, 0x0

    .line 851
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 852
    .local v5, "validComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 853
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_70

    .line 855
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .line 857
    .local v4, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_21

    move v6, v7

    .line 894
    .end local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :goto_20
    return v6

    .line 864
    .restart local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :cond_21
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/am/TaskPersister;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2f

    move v6, v7

    .line 865
    goto :goto_20

    .line 868
    :cond_2f
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    if-eqz v6, :cond_50

    .line 869
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "j":I
    :goto_3b
    if-ltz v2, :cond_50

    .line 870
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/am/TaskPersister;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    move v6, v7

    .line 871
    goto :goto_20

    .line 869
    :cond_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    .line 876
    .end local v2    # "j":I
    :cond_50
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 853
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 883
    :cond_5b
    :try_start_5b
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-nez v6, :cond_67

    move v6, v7

    .line 885
    goto :goto_20

    .line 887
    :cond_67
    iget-object v6, v4, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_6c} :catch_6d

    goto :goto_58

    .line 888
    :catch_6d
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v6, v7

    .line 890
    goto :goto_20

    .line 894
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    :cond_70
    const/4 v6, 0x1

    goto :goto_20
.end method

.method private createTaskRecordLocked(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)Lcom/android/server/am/TaskRecord;
    .registers 16
    .param p1, "other"    # Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .prologue
    .line 770
    iget-object v3, p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 771
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 772
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 776
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    :try_start_4
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_17e
    .catchall {:try_start_4 .. :try_end_e} :catchall_17c

    .line 777
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 778
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 782
    :goto_15
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "event":I
    const/4 v11, 0x1

    if-eq v2, v11, :cond_177

    const/4 v11, 0x3

    if-eq v2, v11, :cond_177

    .line 783
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, "name":Ljava/lang/String;
    const/4 v11, 0x2

    if-ne v2, v11, :cond_107

    .line 786
    const-string v11, "task"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14e

    .line 788
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, p0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v12

    invoke-static {v5, v11, v12}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;I)Lcom/android/server/am/TaskRecord;

    move-result-object v9

    .line 793
    if-eqz v9, :cond_e1

    .line 794
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 795
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 797
    const/4 v11, 0x0

    iput v11, v9, Lcom/android/server/am/TaskRecord;->userId:I

    .line 799
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 800
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 801
    const/4 v11, -0x1

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 803
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 804
    .local v10, "uid":Ljava/lang/Integer;
    if-nez v10, :cond_88

    .line 806
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find uid for task="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in mPackageUidMap="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_82} :catch_10c
    .catchall {:try_start_e .. :try_end_82} :catchall_171

    .line 808
    const/4 v11, 0x0

    .line 838
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 841
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "uid":Ljava/lang/Integer;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_87
    return-object v11

    .line 810
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "uid":Ljava/lang/Integer;
    :cond_88
    :try_start_88
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v9, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iput v11, v9, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 811
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    .local v4, "i":I
    :goto_98
    if-ltz v4, :cond_107

    .line 812
    iget-object v11, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 813
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "uid":Ljava/lang/Integer;
    check-cast v10, Ljava/lang/Integer;

    .line 814
    .restart local v10    # "uid":Ljava/lang/Integer;
    if-nez v10, :cond_d8

    .line 816
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t find uid for activity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in mPackageUidMap="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_d2} :catch_10c
    .catchall {:try_start_88 .. :try_end_d2} :catchall_171

    .line 818
    const/4 v11, 0x0

    .line 838
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_87

    .line 820
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_d8
    :try_start_d8
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 811
    add-int/lit8 v4, v4, -0x1

    goto :goto_98

    .line 824
    .end local v0    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "i":I
    .end local v10    # "uid":Ljava/lang/Integer;
    :cond_e1
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to create task for backed-up file="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_107
    :goto_107
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_10a} :catch_10c
    .catchall {:try_start_d8 .. :try_end_10a} :catchall_171

    goto/16 :goto_15

    .line 834
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_10c
    move-exception v1

    move-object v7, v8

    .line 835
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_10e
    :try_start_10e
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failing file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v3}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_10e .. :try_end_148} :catchall_17c

    .line 838
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14b
    move-object v11, v9

    .line 841
    goto/16 :goto_87

    .line 828
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_14e
    :try_start_14e
    const-string v11, "TaskPersister"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "createTaskRecordLocked Unknown xml event="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_170} :catch_10c
    .catchall {:try_start_14e .. :try_end_170} :catchall_171

    goto :goto_107

    .line 838
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catchall_171
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_173
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_177
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    .line 839
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto :goto_14b

    .line 838
    .end local v2    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_17c
    move-exception v11

    goto :goto_173

    .line 834
    :catch_17e
    move-exception v1

    goto :goto_10e
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 324
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "newline":Ljava/lang/String;
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 327
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 329
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_54

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_34} :catch_35

    goto :goto_1a

    .line 334
    .end local v1    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_35
    move-exception v0

    .line 335
    .local v0, "ioe":Ljava/io/IOException;
    const-string v5, "TaskPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v5, 0x0

    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_53
    return-object v5

    .line 332
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_54
    :try_start_54
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_5a} :catch_35

    move-result-object v5

    goto :goto_53
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 902
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 919
    :goto_e
    return v2

    .line 906
    :cond_f
    :try_start_f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    .line 908
    .local v1, "uid":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    move v2, v3

    .line 910
    goto :goto_e

    .line 912
    :cond_1d
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_28

    .line 913
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    .line 915
    :cond_28
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_31} :catch_32

    goto :goto_e

    .line 917
    .end local v1    # "uid":I
    :catch_32
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move v2, v3

    .line 919
    goto :goto_e
.end method

.method private readOtherDeviceTasksFromDisk()V
    .registers 23

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 508
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->clear()V

    .line 509
    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 512
    sget-object v17, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_2b

    sget-object v17, Lcom/android/server/am/TaskPersister;->sRestoredTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .local v12, "taskFiles":[Ljava/io/File;
    if-nez v12, :cond_2d

    .line 515
    .end local v12    # "taskFiles":[Ljava/io/File;
    :cond_2b
    monitor-exit v18

    .line 575
    :goto_2c
    return-void

    .line 518
    .restart local v12    # "taskFiles":[Ljava/io/File;
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 519
    .local v6, "earliestMtime":J
    new-instance v16, Landroid/util/SparseArray;

    array-length v0, v12

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/util/SparseArray;-><init>(I)V

    .line 523
    .local v16, "tasksByAffiliateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3a
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_78

    .line 524
    aget-object v11, v12, v8

    .line 528
    .local v11, "taskFile":Ljava/io/File;
    invoke-static {v11}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->createFromFile(Ljava/io/File;)Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-result-object v10

    .line 530
    .local v10, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    if-nez v10, :cond_4f

    .line 535
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 523
    :cond_4c
    :goto_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 539
    :cond_4f
    iget v0, v10, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 540
    .local v13, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    if-nez v13, :cond_6b

    .line 541
    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .restart local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    iget v0, v10, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 544
    :cond_6b
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    .line 546
    .local v14, "taskMtime":J
    cmp-long v17, v6, v14

    if-lez v17, :cond_4c

    .line 547
    move-wide v6, v14

    goto :goto_4c

    .line 551
    .end local v10    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .end local v11    # "taskFile":Ljava/io/File;
    .end local v13    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v14    # "taskMtime":J
    :cond_78
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    if-lez v17, :cond_db

    .line 554
    const/4 v8, 0x0

    :goto_7f
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_d0

    .line 555
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 556
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 558
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 560
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 561
    .local v5, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    if-nez v5, :cond_ca

    .line 562
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .restart local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :cond_ca
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v8, v8, 0x1

    goto :goto_7f

    .line 569
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_d0
    const-wide/32 v20, 0x5265c00

    add-long v20, v20, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 574
    :cond_db
    monitor-exit v18

    goto/16 :goto_2c

    .end local v6    # "earliestMtime":J
    .end local v8    # "i":I
    .end local v12    # "taskFiles":[Ljava/io/File;
    .end local v16    # "tasksByAffiliateIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    :catchall_de
    move-exception v17

    monitor-exit v18
    :try_end_e0
    .catchall {:try_start_7 .. :try_end_e0} :catchall_de

    throw v17
.end method

.method private removeExpiredTasksIfNeeded()V
    .registers 25

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 583
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 584
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    .line 585
    .local v12, "noMoreTasks":Z
    if-nez v12, :cond_21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v14, v22

    if-gez v20, :cond_35

    .line 586
    :cond_21
    if-eqz v12, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_33

    .line 588
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    .line 590
    :cond_33
    monitor-exit v21

    .line 647
    :goto_34
    return-void

    .line 593
    :cond_35
    move-wide v6, v14

    .line 594
    .local v6, "earliestNonExpiredMtime":J
    const-wide v22, 0x7fffffffffffffffL

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .local v9, "i":I
    :goto_4d
    if-ltz v9, :cond_dc

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 601
    .local v5, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, "j":I
    :goto_63
    if-ltz v10, :cond_b9

    .line 603
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 604
    .local v4, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    const/16 v16, 0x1

    .line 605
    .local v16, "removeChain":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v11, v20, -0x1

    .local v11, "k":I
    :goto_73
    if-ltz v11, :cond_99

    .line 606
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .line 607
    .local v17, "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    .line 608
    .local v18, "taskLastModified":J
    const-wide/32 v22, 0x5265c00

    add-long v22, v22, v18

    cmp-long v20, v22, v14

    if-lez v20, :cond_96

    .line 611
    cmp-long v20, v6, v18

    if-lez v20, :cond_94

    .line 612
    move-wide/from16 v6, v18

    .line 614
    :cond_94
    const/16 v16, 0x0

    .line 605
    :cond_96
    add-int/lit8 v11, v11, -0x1

    goto :goto_73

    .line 617
    .end local v17    # "task":Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .end local v18    # "taskLastModified":J
    :cond_99
    if-eqz v16, :cond_b6

    .line 618
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v20

    add-int/lit8 v11, v20, -0x1

    :goto_a1
    if-ltz v11, :cond_b3

    .line 619
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 623
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 618
    add-int/lit8 v11, v11, -0x1

    goto :goto_a1

    .line 625
    .end local v8    # "file":Ljava/io/File;
    :cond_b3
    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 601
    :cond_b6
    add-int/lit8 v10, v10, -0x1

    goto :goto_63

    .line 628
    .end local v4    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v11    # "k":I
    .end local v16    # "removeChain":Z
    :cond_b9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_d8

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 630
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 598
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_d8
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_4d

    .line 637
    .end local v5    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v10    # "j":I
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f9

    .line 638
    const-wide/32 v22, 0x5265c00

    add-long v22, v22, v6

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/TaskPersister;->mExpiredTasksCleanupTime:J

    .line 646
    :goto_f3
    monitor-exit v21

    goto/16 :goto_34

    .end local v6    # "earliestNonExpiredMtime":J
    .end local v9    # "i":I
    .end local v12    # "noMoreTasks":Z
    .end local v14    # "now":J
    :catchall_f6
    move-exception v20

    monitor-exit v21
    :try_end_f8
    .catchall {:try_start_7 .. :try_end_f8} :catchall_f6

    throw v20

    .line 644
    .restart local v6    # "earliestNonExpiredMtime":J
    .restart local v9    # "i":I
    .restart local v12    # "noMoreTasks":Z
    .restart local v14    # "now":J
    :cond_f9
    const/16 v20, 0x0

    :try_start_fb
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_f6

    goto :goto_f3
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 483
    sget-object v0, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 484
    return-void
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 11
    .param p1, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    if-nez p1, :cond_a

    .line 455
    const-string v6, "TaskPersister"

    const-string v7, "File error accessing recents directory (too many files open?)."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_9
    return-void

    .line 458
    :cond_a
    const/4 v2, 0x0

    .local v2, "fileNdx":I
    :goto_b
    array-length v6, p1

    if-ge v2, v6, :cond_9

    .line 459
    aget-object v1, p1, v2

    .line 460
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "filename":Ljava/lang/String;
    const/16 v6, 0x5f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 462
    .local v5, "taskIdEnd":I
    if-lez v5, :cond_52

    .line 465
    const/4 v6, 0x0

    :try_start_1d
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_55

    move-result v4

    .line 472
    .local v4, "taskId":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 473
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeObsoleteFile: deleting file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 458
    .end local v4    # "taskId":I
    :cond_52
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 467
    :catch_55
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "TaskPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeObsoleteFile: Can\'t parse file="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_52
.end method

.method private removeThumbnails(Lcom/android/server/am/TaskRecord;)V
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 173
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "taskString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "queueNdx":I
    :goto_e
    if-ltz v1, :cond_2e

    .line 175
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 176
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v3, :cond_2b

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v3, v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 180
    iget-object v3, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 183
    :cond_2e
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    .registers 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 303
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 304
    .local v1, "xmlSerializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 305
    .local v0, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 311
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 313
    const-string v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 314
    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 315
    const-string v2, "task"

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 318
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 320
    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;
    .registers 9
    .param p1, "taskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;)",
            "Lcom/android/server/am/TaskRecord;"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v2, 0x0

    .line 341
    if-gez p1, :cond_5

    move-object v0, v2

    .line 351
    :cond_4
    :goto_4
    return-object v0

    .line 344
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_b
    if-ltz v1, :cond_1a

    .line 345
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 346
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v3, p1, :cond_4

    .line 344
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 350
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1a
    const-string v3, "TaskPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restore affiliation error looking for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 351
    goto :goto_4
.end method

.method private yieldIfQueueTooDeep()V
    .registers 7

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "stall":Z
    monitor-enter p0

    .line 188
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_12

    .line 192
    if-eqz v0, :cond_11

    .line 193
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 195
    :cond_11
    return-void

    .line 191
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method addOtherDeviceTasksToRecentsLocked(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 676
    iget-object v10, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 677
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 678
    .local v1, "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    if-nez v1, :cond_f

    .line 679
    monitor-exit v10

    .line 763
    :goto_e
    return-void

    .line 682
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_15
    if-ltz v2, :cond_d0

    .line 683
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 684
    .local v0, "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister;->canAddOtherDeviceTaskChain(Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 682
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 691
    :cond_26
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .line 693
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "j":I
    :goto_32
    if-ltz v3, :cond_40

    .line 694
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    invoke-direct {p0, v9}, Lcom/android/server/am/TaskPersister;->createTaskRecordLocked(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 695
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    if-nez v7, :cond_82

    .line 721
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_40
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_aa

    .line 727
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int v6, v9, v11

    .line 730
    .local v6, "spaceLeft":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v6, v9, :cond_aa

    .line 731
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v9, v11, v8}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 732
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "k":I
    :goto_73
    if-ltz v4, :cond_aa

    .line 734
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/TaskPersister;->wakeup(Lcom/android/server/am/TaskRecord;Z)V

    .line 732
    add-int/lit8 v4, v4, -0x1

    goto :goto_73

    .line 704
    .end local v4    # "k":I
    .end local v6    # "spaceLeft":I
    .restart local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_82
    if-nez v5, :cond_96

    .line 705
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 706
    const/4 v9, -0x1

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 707
    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 715
    :goto_8e
    move-object v5, v7

    .line 716
    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 693
    add-int/lit8 v3, v3, -0x1

    goto :goto_32

    .line 709
    :cond_96
    iput-object v7, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 710
    iget v9, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 711
    iget v9, v5, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 712
    iput-object v5, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 713
    iget v9, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v7, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    goto :goto_8e

    .line 762
    .end local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v1    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :catchall_a7
    move-exception v9

    monitor-exit v10
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_a7

    throw v9

    .line 750
    .restart local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .restart local v1    # "chains":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;>;"
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_aa
    :try_start_aa
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_b0
    if-ltz v3, :cond_c0

    .line 751
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    iget-object v9, v9, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 750
    add-int/lit8 v3, v3, -0x1

    goto :goto_b0

    .line 753
    :cond_c0
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 754
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 757
    iget-object v9, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 762
    .end local v0    # "chain":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskPersister$OtherDeviceTask;>;"
    .end local v3    # "j":I
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/TaskRecord;>;"
    :cond_d0
    monitor-exit v10
    :try_end_d1
    .catchall {:try_start_aa .. :try_end_d1} :catchall_a7

    goto/16 :goto_e
.end method

.method flush()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 234
    monitor-enter p0

    .line 235
    const-wide/16 v0, -0x1

    :try_start_5
    iput-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    .line 239
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_18
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    .line 242
    :goto_d
    :try_start_d
    iget-wide v0, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 243
    monitor-exit p0

    .line 244
    return-void

    .line 243
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0

    .line 240
    :catch_18
    move-exception v0

    goto :goto_d
.end method

.method getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "queueNdx":I
    :goto_9
    if-ltz v3, :cond_2a

    .line 289
    iget-object v4, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 290
    .local v2, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v4, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v4, :cond_27

    .line 291
    move-object v0, v2

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v1, v0

    .line 292
    .local v1, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 293
    iget-object v4, v1, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 297
    .end local v1    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :goto_26
    return-object v4

    .line 288
    .restart local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 297
    .end local v2    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_2a
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_26

    .line 298
    .end local v3    # "queueNdx":I
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v4
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 280
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 283
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    :goto_6
    return-object v0

    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    :cond_7
    invoke-static {p1}, Lcom/android/server/am/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_6
.end method

.method removeFromPackageCache(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v1, p0, Lcom/android/server/am/TaskPersister;->mOtherDeviceTasksMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 654
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_c

    .line 655
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mPackageUidMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_c
    monitor-exit v1

    .line 658
    return-void

    .line 657
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method restoreTasksFromOtherDeviceLocked()V
    .registers 1

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->readOtherDeviceTasksFromDisk()V

    .line 496
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->addOtherDeviceTasksToRecentsLocked()V

    .line 497
    return-void
.end method

.method restoreTasksLocked()Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 358
    .local v10, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    sget-object v17, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 359
    .local v9, "recentFiles":[Ljava/io/File;
    if-nez v9, :cond_2d

    .line 360
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to list files from "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :goto_2c
    return-object v15

    .line 364
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_2d
    const/4 v14, 0x0

    .local v14, "taskNdx":I
    :goto_2e
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v14, v0, :cond_1b2

    .line 365
    aget-object v12, v9, v14

    .line 367
    .local v12, "taskFile":Ljava/io/File;
    const/4 v7, 0x0

    .line 368
    .local v7, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 370
    .local v2, "deleteFile":Z
    :try_start_39
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_47} :catch_213
    .catchall {:try_start_39 .. :try_end_47} :catchall_210

    .line 371
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_47
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 372
    .local v5, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 375
    :goto_4e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "event":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v4, v0, :cond_18b

    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v4, v0, :cond_18b

    .line 377
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "name":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v4, v0, :cond_9f

    .line 381
    const-string v17, "task"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_163

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/android/server/am/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .line 386
    .local v11, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v11, :cond_110

    .line 387
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 392
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget v13, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 394
    .local v13, "taskId":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setNextTaskId(I)V

    .line 405
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    .end local v13    # "taskId":I
    :cond_9f
    :goto_9f
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_a2} :catch_a3
    .catchall {:try_start_47 .. :try_end_a2} :catchall_13c

    goto :goto_4e

    .line 407
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    :catch_a3
    move-exception v3

    move-object v7, v8

    .line 408
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_a5
    :try_start_a5
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to parse "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ". Error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failing file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_a5 .. :try_end_e7} :catchall_210

    .line 410
    const/4 v2, 0x1

    .line 412
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_10c

    .line 415
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting file="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 364
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_10c
    :goto_10c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2e

    .line 397
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_110
    :try_start_110
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to restore taskFile="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/am/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_13a} :catch_a3
    .catchall {:try_start_110 .. :try_end_13a} :catchall_13c

    goto/16 :goto_9f

    .line 412
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "name":Ljava/lang/String;
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :catchall_13c
    move-exception v17

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :goto_13e
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_162

    .line 415
    const-string v18, "TaskPersister"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleting file="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_162
    throw v17

    .line 401
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_163
    :try_start_163
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "restoreTasksLocked Unknown xml event="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_189} :catch_a3
    .catchall {:try_start_163 .. :try_end_189} :catchall_13c

    goto/16 :goto_9f

    .line 412
    .end local v6    # "name":Ljava/lang/String;
    :cond_18b
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 413
    if-eqz v2, :cond_216

    .line 415
    const-string v17, "TaskPersister"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Deleting file="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_10c

    .line 422
    .end local v2    # "deleteFile":Z
    .end local v4    # "event":I
    .end local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "taskFile":Ljava/io/File;
    :cond_1b2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    .line 426
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v14, v17, -0x1

    :goto_1bd
    if-ltz v14, :cond_1ea

    .line 427
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 428
    .restart local v11    # "task":Lcom/android/server/am/TaskRecord;
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 429
    iget v0, v11, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/am/TaskRecord;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 426
    add-int/lit8 v14, v14, -0x1

    goto :goto_1bd

    .line 432
    .end local v11    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1ea
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/server/am/TaskRecord;

    move-object/from16 v16, v0

    .line 433
    .local v16, "tasksArray":[Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 434
    new-instance v17, Lcom/android/server/am/TaskPersister$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/TaskPersister$1;-><init>(Lcom/android/server/am/TaskPersister;)V

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 448
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_2c

    .line 412
    .end local v16    # "tasksArray":[Lcom/android/server/am/TaskRecord;
    .restart local v2    # "deleteFile":Z
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "taskFile":Ljava/io/File;
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_210
    move-exception v17

    goto/16 :goto_13e

    .line 407
    :catch_213
    move-exception v3

    goto/16 :goto_a5

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "event":I
    .restart local v5    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_216
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_10c
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 13
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 247
    monitor-enter p0

    .line 249
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "queueNdx":I
    :goto_9
    if-ltz v4, :cond_25

    .line 250
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 251
    .local v3, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v5, v3, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    if-eqz v5, :cond_46

    .line 252
    move-object v0, v3

    check-cast v0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move-object v2, v0

    .line 253
    .local v2, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v5, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 255
    iput-object p1, v2, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 260
    .end local v2    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_25
    if-gez v4, :cond_31

    .line 261
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v6, p2, p1}, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_31
    iget-object v5, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_49

    .line 264
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 271
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 272
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_5b

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 275
    return-void

    .line 249
    .restart local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_46
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 265
    .end local v3    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :cond_49
    :try_start_49
    iget-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_3e

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    goto :goto_3e

    .line 272
    .end local v4    # "queueNdx":I
    :catchall_5b
    move-exception v5

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_5b

    throw v5
.end method

.method startPersisting()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/am/TaskPersister;->mLazyTaskWriterThread:Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->start()V

    .line 170
    return-void
.end method

.method wakeup(Lcom/android/server/am/TaskRecord;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "flush"    # Z

    .prologue
    .line 198
    monitor-enter p0

    .line 199
    if-eqz p1, :cond_50

    .line 201
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "queueNdx":I
    :goto_b
    if-ltz v1, :cond_26

    .line 202
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 203
    .local v0, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    instance-of v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    if-eqz v2, :cond_4d

    check-cast v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v0    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v2, v0, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    if-ne v2, p1, :cond_4d

    .line 205
    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-nez v2, :cond_26

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/am/TaskPersister;->removeThumbnails(Lcom/android/server/am/TaskRecord;)V

    .line 212
    :cond_26
    if-gez v1, :cond_36

    iget-boolean v2, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_36

    .line 213
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    invoke-direct {v3, p1}, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v1    # "queueNdx":I
    :cond_36
    :goto_36
    if-nez p2, :cond_41

    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5f

    .line 220
    :cond_41
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    .line 227
    :cond_45
    :goto_45
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_5c

    .line 230
    invoke-direct {p0}, Lcom/android/server/am/TaskPersister;->yieldIfQueueTooDeep()V

    .line 231
    return-void

    .line 201
    .restart local v1    # "queueNdx":I
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 217
    .end local v1    # "queueNdx":I
    :cond_50
    :try_start_50
    iget-object v2, p0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 228
    :catchall_5c
    move-exception v2

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_5c

    throw v2

    .line 221
    :cond_5f
    :try_start_5f
    iget-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_45

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xbb8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_5c

    goto :goto_45
.end method
