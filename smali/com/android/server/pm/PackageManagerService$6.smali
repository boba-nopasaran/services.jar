.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .registers 4

    .prologue
    .line 9017
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 9019
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v11, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9021
    new-instance v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v6, v11}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 9022
    .local v6, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentStatus:I

    iput v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 9023
    const/4 v11, -0x1

    iput v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 9024
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 9025
    new-instance v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>()V

    iput-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 9026
    iget v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v11, v9, :cond_42

    .line 9027
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v11, v12}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 9028
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 9029
    :try_start_31
    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v12, v13, v6}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 9030
    monitor-exit v11
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_10f

    .line 9031
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v12, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v13, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 9037
    :cond_42
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v11, :cond_112

    move v8, v9

    .line 9038
    .local v8, "update":Z
    :goto_49
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v11, :cond_115

    move v4, v10

    .line 9039
    .local v4, "flags":I
    :goto_4e
    if-nez v8, :cond_11d

    const v11, 0x8000

    and-int/2addr v11, v4

    if-eqz v11, :cond_11d

    move v2, v9

    .line 9046
    .local v2, "doRestore":Z
    :goto_57
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v11, :cond_61

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v9, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 9047
    :cond_61
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v7, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v12, v7, 0x1

    iput v12, v11, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 9049
    .local v7, "token":I
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$6;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v1, v11, v12, v6}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 9050
    .local v1, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v11, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9051
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1000()Z

    move-result v11

    if-eqz v11, :cond_97

    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "+ starting restore round-trip "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9053
    :cond_97
    iget v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    if-ne v11, v9, :cond_dd

    if-eqz v2, :cond_dd

    .line 9058
    const-string v9, "backup"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 9060
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_12c

    .line 9061
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_cd

    const-string v9, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "token "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to BM for possible restore"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9064
    :cond_cd
    const/4 v9, 0x0

    :try_start_ce
    invoke-interface {v0, v9}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v9

    if-eqz v9, :cond_120

    .line 9065
    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v9, v7}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_dd} :catch_135
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_dd} :catch_122

    .line 9081
    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :cond_dd
    :goto_dd
    if-nez v2, :cond_10e

    .line 9084
    # getter for: Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_fd

    const-string v9, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No restore - queue post-install for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9085
    :cond_fd
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v11, 0x9

    invoke-virtual {v9, v11, v7, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 9086
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v9, v5}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9088
    .end local v5    # "msg":Landroid/os/Message;
    :cond_10e
    return-void

    .line 9030
    .end local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v2    # "doRestore":Z
    .end local v4    # "flags":I
    .end local v7    # "token":I
    .end local v8    # "update":Z
    :catchall_10f
    move-exception v9

    :try_start_110
    monitor-exit v11
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v9

    :cond_112
    move v8, v10

    .line 9037
    goto/16 :goto_49

    .line 9038
    .restart local v8    # "update":Z
    :cond_115
    iget-object v11, v6, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v11, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_4e

    .restart local v4    # "flags":I
    :cond_11d
    move v2, v10

    .line 9039
    goto/16 :goto_57

    .line 9067
    .restart local v0    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v1    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v2    # "doRestore":Z
    .restart local v7    # "token":I
    :cond_120
    const/4 v2, 0x0

    goto :goto_dd

    .line 9071
    :catch_122
    move-exception v3

    .line 9072
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "PackageManager"

    const-string v11, "Exception trying to enqueue restore"

    invoke-static {v9, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9073
    const/4 v2, 0x0

    .line 9074
    goto :goto_dd

    .line 9076
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_12c
    const-string v9, "PackageManager"

    const-string v11, "Backup Manager not found!"

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9077
    const/4 v2, 0x0

    goto :goto_dd

    .line 9069
    :catch_135
    move-exception v9

    goto :goto_dd
.end method
