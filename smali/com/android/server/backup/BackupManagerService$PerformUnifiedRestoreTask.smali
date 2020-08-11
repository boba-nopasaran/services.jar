.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformUnifiedRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    }
.end annotation


# instance fields
.field private mAcceptSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgent:Landroid/app/IBackupAgent;

.field mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private mCount:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mFinished:Z

.field private mIsSystemRestore:Z

.field mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

.field private mPmToken:I

.field private mRestoreDescription:Landroid/app/backup/RestoreDescription;

.field private mSavedStateName:Ljava/io/File;

.field private mStageName:Ljava/io/File;

.field private mStartRealtime:J

.field private mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

.field mStateDir:Ljava/io/File;

.field private mStatus:I

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V
    .registers 22
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "observer"    # Landroid/app/backup/IRestoreObserver;
    .param p4, "restoreSetToken"    # J
    .param p6, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p7, "pmToken"    # I
    .param p8, "isFullSystemRestore"    # Z
    .param p9, "filterSet"    # [Ljava/lang/String;

    .prologue
    .line 7017
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7018
    sget-object v7, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7019
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    .line 7021
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7022
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 7023
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    .line 7024
    move/from16 v0, p7

    iput v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    .line 7025
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 7026
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    .line 7027
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    .line 7029
    if-eqz p6, :cond_37

    .line 7031
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 7032
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    move-object/from16 v0, p6

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7093
    :cond_36
    :goto_36
    return-void

    .line 7035
    :cond_37
    if-nez p9, :cond_66

    .line 7037
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    .line 7039
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->packagesToNames(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p9

    .line 7041
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Full restore; asking for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p9

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " apps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7045
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_66
    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v0, p9

    array-length v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    .line 7050
    const/4 v4, 0x0

    .line 7051
    .local v4, "hasSystem":Z
    const/4 v3, 0x0

    .line 7052
    .local v3, "hasSettings":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_73
    move-object/from16 v0, p9

    array-length v7, v0

    if-ge v5, v7, :cond_ad

    .line 7054
    :try_start_78
    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    aget-object v8, p9, v5

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 7055
    .local v6, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "android"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 7056
    const/4 v4, 0x1

    .line 7052
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_8e
    :goto_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 7059
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_91
    const-string v7, "com.android.providers.settings"

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 7060
    const/4 v3, 0x1

    goto :goto_8e

    .line 7064
    :cond_9d
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 7065
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_78 .. :try_end_aa} :catch_ab

    goto :goto_8e

    .line 7067
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :catch_ab
    move-exception v7

    goto :goto_8e

    .line 7071
    :cond_ad
    if-eqz v4, :cond_c0

    .line 7073
    :try_start_af
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v8, 0x0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_af .. :try_end_c0} :catch_d7

    .line 7078
    :cond_c0
    :goto_c0
    if-eqz v3, :cond_36

    .line 7080
    :try_start_c2
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.android.providers.settings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c2 .. :try_end_d2} :catch_d4

    goto/16 :goto_36

    .line 7081
    :catch_d4
    move-exception v7

    goto/16 :goto_36

    .line 7074
    :catch_d7
    move-exception v7

    goto :goto_c0
.end method

.method static synthetic access$2000(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Landroid/content/pm/PackageInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 6947
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    .prologue
    .line 6947
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method private dispatchNextRestore()V
    .registers 13

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 7267
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7269
    .local v4, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_start_4
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    .line 7270
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    if-eqz v7, :cond_2d

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 7272
    .local v5, "pkgName":Ljava/lang/String;
    :goto_16
    if-nez v5, :cond_2f

    .line 7273
    const-string v7, "BackupManagerService"

    const-string v8, "Failure getting next package name"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7274
    const/16 v7, 0xb0f

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7275
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_1fd
    .catchall {:try_start_4 .. :try_end_29} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7361
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_2c
    return-void

    .line 7270
    :cond_2d
    const/4 v5, 0x0

    goto :goto_16

    .line 7277
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_2f
    :try_start_2f
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    sget-object v8, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    if-ne v7, v8, :cond_62

    .line 7280
    const-string v7, "BackupManagerService"

    const-string v8, "No more packages; finishing restore"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStartRealtime:J

    sub-long/2addr v8, v10

    long-to-int v3, v8

    .line 7283
    .local v3, "millis":I
    const/16 v7, 0xb12

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7284
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_5e} :catch_1fd
    .catchall {:try_start_2f .. :try_end_5e} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_2c

    .line 7289
    .end local v3    # "millis":I
    :cond_62
    :try_start_62
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Next restore package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7291
    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendOnRestorePackage(Ljava/lang/String;)V

    .line 7293
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v7, v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v2

    .line 7294
    .local v2, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    if-nez v2, :cond_b6

    .line 7295
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No metadata for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7296
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    const-string v10, "Package metadata missing"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7298
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_b1} :catch_1fd
    .catchall {:try_start_62 .. :try_end_b1} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7303
    :cond_b6
    :try_start_b6
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;
    :try_end_c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b6 .. :try_end_c4} :catch_131
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c4} :catch_1fd
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_214

    .line 7315
    :try_start_c4
    iget v7, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v7, v8, :cond_18f

    .line 7319
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x20000

    and-int/2addr v7, v8

    if-nez v7, :cond_161

    .line 7321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > installed version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7323
    .local v1, "message":Ljava/lang/String;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7324
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7326
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_12c} :catch_1fd
    .catchall {:try_start_c4 .. :try_end_12c} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7305
    .end local v1    # "message":Ljava/lang/String;
    :catch_131
    move-exception v0

    .line 7308
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_132
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package not present: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7309
    const/16 v7, 0xb10

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    const-string v10, "Package missing on device"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7311
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_15c} :catch_1fd
    .catchall {:try_start_132 .. :try_end_15c} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7329
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_161
    :try_start_161
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > installed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " but restoreAnyVersion"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7335
    :cond_18f
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " restore version ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is compatible with installed version ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v9, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7341
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 7342
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mRestoreDescription:Landroid/app/backup/RestoreDescription;

    invoke-virtual {v7}, Landroid/app/backup/RestoreDescription;->getDataType()I

    move-result v6

    .line 7343
    .local v6, "type":I
    if-ne v6, v10, :cond_1d9

    .line 7344
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1d4
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_1d4} :catch_1fd
    .catchall {:try_start_161 .. :try_end_1d4} :catchall_214

    .line 7359
    :goto_1d4
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7345
    :cond_1d9
    if-ne v6, v11, :cond_1de

    .line 7346
    :try_start_1db
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    goto :goto_1d4

    .line 7349
    :cond_1de
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unrecognized restore type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7350
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_1f8
    .catch Landroid/os/RemoteException; {:try_start_1db .. :try_end_1f8} :catch_1fd
    .catchall {:try_start_1db .. :try_end_1f8} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .line 7353
    .end local v2    # "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "type":I
    :catch_1fd
    move-exception v0

    .line 7354
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1fe
    const-string v7, "BackupManagerService"

    const-string v8, "Can\'t get next target from transport; ending restore"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    const/16 v7, 0xb0f

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7356
    sget-object v4, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :try_end_20f
    .catchall {:try_start_1fe .. :try_end_20f} :catchall_214

    .line 7359
    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_2c

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_214
    move-exception v7

    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    throw v7
.end method

.method private finalizeRestore()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 7749
    :try_start_2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_56

    .line 7755
    :goto_7
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_12

    .line 7757
    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_5f

    .line 7764
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 7768
    iget v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    if-lez v1, :cond_68

    .line 7771
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmToken:I

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_26} :catch_73

    .line 7781
    :goto_26
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->restoreFinished(I)V

    .line 7785
    iget-boolean v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    if-eqz v1, :cond_47

    .line 7786
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 7787
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    .line 7788
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    .line 7792
    :cond_47
    const-string v1, "BackupManagerService"

    const-string v2, "Restore complete."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7793
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7794
    return-void

    .line 7750
    :catch_56
    move-exception v0

    .line 7751
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BackupManagerService"

    const-string v2, "Error finishing restore"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 7758
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5f
    move-exception v0

    .line 7759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died at restoreFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 7776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_68
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26

    .line 7772
    :catch_73
    move-exception v1

    goto :goto_26
.end method

.method private packagesToNames(Ljava/util/List;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 7096
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 7097
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    .line 7098
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_16

    .line 7099
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 7098
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 7101
    :cond_16
    return-object v2
.end method

.method private restoreFinished()V
    .registers 7

    .prologue
    .line 7560
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v1

    .line 7561
    .local v1, "token":I
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v1, v4, v5, p0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 7562
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1, v3}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 7569
    .end local v1    # "token":I
    :goto_16
    return-void

    .line 7565
    :catch_17
    move-exception v0

    .line 7566
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to finalize restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_16
.end method

.method private restoreFull()V
    .registers 6

    .prologue
    .line 7539
    :try_start_0
    new-instance v1, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;

    invoke-direct {v1, p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;-><init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;)V

    .line 7541
    .local v1, "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spinning threads for stream restore of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7544
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "unified-stream-feeder"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    .line 7555
    .end local v1    # "feeder":Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$StreamFeederThread;
    :goto_2b
    return-void

    .line 7548
    :catch_2c
    move-exception v0

    .line 7552
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to construct pipes for stream restore!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7553
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_2b
.end method

.method private restoreKeyValue()V
    .registers 11

    .prologue
    const/16 v9, 0xb10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7368
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7371
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v3, :cond_1f

    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 7374
    :cond_1f
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data exists for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but app has no agent; skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7377
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Package has no agent"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7379
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7413
    :goto_4d
    return-void

    .line 7383
    :cond_4e
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v3, v2}, Lcom/android/server/backup/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;

    move-result-object v1

    .line 7384
    .local v1, "metaInfo":Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;
    iget-object v3, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->sigHashes:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v3, v4}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_87

    .line 7385
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature mismatch restoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7386
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Signature mismatch"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7388
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_4d

    .line 7393
    :cond_87
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v6}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 7396
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_c0

    .line 7397
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find backup agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7398
    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const-string v4, "Restore agent missing"

    aput-object v4, v3, v7

    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7400
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_4d

    .line 7406
    :cond_c0
    :try_start_c0
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget v4, v1, Lcom/android/server/backup/PackageManagerBackupAgent$Metadata;->versionCode:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    .line 7407
    iget v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cd} :catch_ce

    goto :goto_4d

    .line 7408
    :catch_ce
    move-exception v0

    .line 7409
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when attempting restore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7410
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 7411
    sget-object v3, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v3}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_4d
.end method

.method private startRestore()V
    .registers 12

    .prologue
    const/16 v10, 0x14

    const/4 v6, 0x0

    const/16 v9, -0x3e8

    .line 7183
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->sendStartRestore(I)V

    .line 7186
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mIsSystemRestore:Z

    if-eqz v5, :cond_15

    .line 7187
    invoke-static {v6}, Lcom/android/server/AppWidgetBackupBridge;->restoreStarting(I)V

    .line 7191
    :cond_15
    :try_start_15
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 7192
    .local v4, "transportDir":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    .line 7195
    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 7196
    .local v3, "pmPackage":Landroid/content/pm/PackageInfo;
    const-string v5, "@pm@"

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7197
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7199
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAcceptSet:Ljava/util/List;

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/PackageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/PackageInfo;

    .line 7200
    .local v2, "packages":[Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-wide v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mToken:J

    invoke-interface {v5, v6, v7, v2}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7201
    iget v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    if-eqz v5, :cond_78

    .line 7202
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transport error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; no restore possible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7203
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7204
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7262
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :cond_77
    :goto_77
    return-void

    .line 7208
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_78
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .line 7209
    .local v0, "desc":Landroid/app/backup/RestoreDescription;
    if-nez v0, :cond_a8

    .line 7210
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available; halting"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7212
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_90} :catch_91

    goto :goto_77

    .line 7254
    .end local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .end local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .end local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .end local v4    # "transportDir":Ljava/lang/String;
    :catch_91
    move-exception v1

    .line 7256
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to contact transport for restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7257
    iput v9, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7258
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v10, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7259
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_77

    .line 7215
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "desc":Landroid/app/backup/RestoreDescription;
    .restart local v2    # "packages":[Landroid/content/pm/PackageInfo;
    .restart local v3    # "pmPackage":Landroid/content/pm/PackageInfo;
    .restart local v4    # "transportDir":Ljava/lang/String;
    :cond_a8
    :try_start_a8
    const-string v5, "@pm@"

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_da

    .line 7216
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Required metadata but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/backup/RestoreDescription;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7217
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7218
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto :goto_77

    .line 7223
    :cond_da
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 7224
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v6, "@pm@"

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7225
    new-instance v5, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    .line 7226
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    .line 7230
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->initiateOneRestore(Landroid/content/pm/PackageInfo;I)V

    .line 7240
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mPmAgent:Lcom/android/server/backup/PackageManagerBackupAgent;

    invoke-virtual {v5}, Lcom/android/server/backup/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v5

    if-nez v5, :cond_77

    .line 7241
    const-string v5, "BackupManagerService"

    const-string v6, "No restore metadata available, so not restoring"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7242
    const/16 v5, 0xb10

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "@pm@"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "Package manager restore metadata missing"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7245
    const/16 v5, -0x3e8

    iput v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    .line 7246
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7247
    sget-object v5, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v5}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_13a} :catch_91

    goto/16 :goto_77
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 7108
    sget-object v0, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 7137
    :goto_d
    return-void

    .line 7110
    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->startRestore()V

    goto :goto_d

    .line 7114
    :pswitch_12
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->dispatchNextRestore()V

    goto :goto_d

    .line 7118
    :pswitch_16
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreKeyValue()V

    goto :goto_d

    .line 7122
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFull()V

    goto :goto_d

    .line 7126
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->restoreFinished()V

    goto :goto_d

    .line 7130
    :pswitch_22
    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->finalizeRestore()V

    .line 7134
    :goto_29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mFinished:Z

    goto :goto_d

    .line 7132
    :cond_2d
    const-string v0, "BackupManagerService"

    const-string v1, "Duplicate finish"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 7108
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
    .end packed-switch
.end method

.method executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    .registers 5
    .param p1, "nextState"    # Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .prologue
    .line 7934
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7935
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7936
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7937
    return-void
.end method

.method public handleTimeout()V
    .registers 5

    .prologue
    .line 7923
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout restoring application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7924
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "restore timeout"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7927
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 7928
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7929
    return-void
.end method

.method initiateOneRestore(Landroid/content/pm/PackageInfo;I)V
    .registers 21
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "appVersionCode"    # I

    .prologue
    .line 7417
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7419
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initiateOneRestore packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7422
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".restore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    .line 7423
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".stage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 7424
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    .line 7425
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStateDir:Ljava/io/File;

    invoke-direct {v2, v3, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mSavedStateName:Ljava/io/File;

    .line 7431
    const-string v2, "android"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    const/16 v17, 0x1

    .line 7433
    .local v17, "staging":Z
    :goto_97
    if-eqz v17, :cond_10a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    .line 7435
    .local v9, "downloadFile":Ljava/io/File;
    :goto_9d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v6

    .line 7438
    .local v6, "token":I
    const/high16 v2, 0x3c000000    # 0.0078125f

    :try_start_a7
    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 7443
    .local v16, "stage":Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_cd

    .line 7444
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SElinux restorecon failed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7447
    :cond_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    if-eqz v2, :cond_10f

    .line 7450
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting restore data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7451
    const/16 v2, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7452
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7453
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 7454
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_106} :catch_17f

    .line 7525
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :goto_106
    return-void

    .line 7431
    .end local v6    # "token":I
    .end local v9    # "downloadFile":Ljava/io/File;
    .end local v17    # "staging":Z
    :cond_107
    const/16 v17, 0x0

    goto :goto_97

    .line 7433
    .restart local v17    # "staging":Z
    :cond_10a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    goto :goto_9d

    .line 7461
    .restart local v6    # "token":I
    .restart local v9    # "downloadFile":Ljava/io/File;
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_10f
    if-eqz v17, :cond_1ce

    .line 7462
    :try_start_111
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7463
    const/high16 v2, 0x10000000

    invoke-static {v9, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 7466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 7471
    new-instance v11, Landroid/app/backup/BackupDataInput;

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 7472
    .local v11, "in":Landroid/app/backup/BackupDataInput;
    new-instance v13, Landroid/app/backup/BackupDataOutput;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v13, v2}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 7473
    .local v13, "out":Landroid/app/backup/BackupDataOutput;
    const/16 v2, 0x2000

    new-array v8, v2, [B

    .line 7474
    .local v8, "buffer":[B
    :goto_142
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v2

    if-eqz v2, :cond_1c7

    .line 7475
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 7476
    .local v12, "key":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v15

    .line 7479
    .local v15, "size":I
    const-string v2, "\uffed\uffedwidget"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 7481
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring widget state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7483
    new-array v2, v15, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    .line 7484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_17e
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_17e} :catch_17f

    goto :goto_142

    .line 7514
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .end local v15    # "size":I
    .end local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :catch_17f
    move-exception v10

    .line 7515
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to call app for restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7516
    const/16 v2, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 7523
    sget-object v2, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    goto/16 :goto_106

    .line 7486
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "buffer":[B
    .restart local v11    # "in":Landroid/app/backup/BackupDataInput;
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "out":Landroid/app/backup/BackupDataOutput;
    .restart local v15    # "size":I
    .restart local v16    # "stage":Landroid/os/ParcelFileDescriptor;
    :cond_1b6
    :try_start_1b6
    array-length v2, v8

    if-le v15, v2, :cond_1bb

    .line 7487
    new-array v8, v15, [B

    .line 7489
    :cond_1bb
    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v15}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 7490
    invoke-virtual {v13, v12, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 7491
    invoke-virtual {v13, v8, v15}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto/16 :goto_142

    .line 7495
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7499
    .end local v8    # "buffer":[B
    .end local v11    # "in":Landroid/app/backup/BackupDataInput;
    .end local v13    # "out":Landroid/app/backup/BackupDataOutput;
    :cond_1ce
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 7500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 7503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 7511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v2, v6, v4, v5, v0}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    .line 7512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_210} :catch_17f

    goto/16 :goto_106
.end method

.method keyValueAgentCleanup()V
    .registers 4

    .prologue
    .line 7805
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7806
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7807
    :try_start_a
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_98

    .line 7808
    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_96

    .line 7809
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 7824
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 7828
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_7b

    .line 7831
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 7839
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7b

    .line 7841
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore complete, killing host process of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7843
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$800(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_7b} :catch_94

    .line 7854
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7855
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7856
    :try_start_88
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7857
    monitor-exit v1

    .line 7858
    return-void

    .line 7857
    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_91

    throw v0

    .line 7847
    :catch_94
    move-exception v0

    goto :goto_7b

    .line 7808
    :catch_96
    move-exception v0

    goto :goto_1c

    .line 7807
    :catch_98
    move-exception v0

    goto/16 :goto_13
.end method

.method keyValueAgentErrorCleanup()V
    .registers 3

    .prologue
    .line 7800
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 7801
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 7802
    return-void
.end method

.method public operationComplete()V
    .registers 7

    .prologue
    .line 7869
    sget-object v2, Lcom/android/server/backup/BackupManagerService$6;->$SwitchMap$com$android$server$backup$BackupManagerService$UnifiedRestoreState:[I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_68

    .line 7910
    :pswitch_d
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected restore callback into state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mState:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7911
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentErrorCleanup()V

    .line 7912
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->FINAL:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7917
    .local v0, "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :goto_2c
    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->executeNextState(Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;)V

    .line 7918
    return-void

    .line 7874
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_30
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7875
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 7882
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_33
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7883
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 7889
    .end local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    :pswitch_36
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 7890
    .local v1, "size":I
    const/16 v2, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7894
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->keyValueAgentCleanup()V

    .line 7899
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    if-eqz v2, :cond_65

    .line 7900
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mWidgetData:[B

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->restoreWidgetData(Ljava/lang/String;[B)V

    .line 7903
    :cond_65
    sget-object v0, Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;

    .line 7904
    .restart local v0    # "nextState":Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    goto :goto_2c

    .line 7869
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_30
        :pswitch_d
        :pswitch_33
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method sendEndRestore()V
    .registers 4

    .prologue
    .line 7965
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_b

    .line 7967
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mStatus:I

    invoke-interface {v1, v2}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 7973
    :cond_b
    :goto_b
    return-void

    .line 7968
    :catch_c
    move-exception v0

    .line 7969
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7970
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_b
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 7952
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_f

    .line 7953
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_f

    .line 7955
    :try_start_8
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iget v2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mCount:I

    invoke-interface {v1, v2, p1}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 7962
    :cond_f
    :goto_f
    return-void

    .line 7956
    :catch_10
    move-exception v0

    .line 7957
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer died in onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7958
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_f
.end method

.method sendStartRestore(I)V
    .registers 5
    .param p1, "numPackages"    # I

    .prologue
    .line 7941
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    if-eqz v1, :cond_9

    .line 7943
    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 7949
    :cond_9
    :goto_9
    return-void

    .line 7944
    :catch_a
    move-exception v0

    .line 7945
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "Restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7946
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    goto :goto_9
.end method
