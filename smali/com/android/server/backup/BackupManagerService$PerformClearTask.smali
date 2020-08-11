.class Lcom/android/server/backup/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 7980
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7981
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 7982
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 7983
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 7988
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7989
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7990
    .local v2, "stateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 7994
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_3d
    .catchall {:try_start_0 .. :try_end_22} :catchall_65

    .line 8002
    :try_start_22
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_79

    .line 8008
    :goto_27
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8010
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :goto_2e
    return-void

    .line 7995
    :catch_2f
    move-exception v3

    .line 8002
    :try_start_30
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_77

    .line 8008
    :goto_35
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2e

    .line 7997
    :catch_3d
    move-exception v0

    .line 7998
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport threw attempting to clear data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_65

    .line 8002
    :try_start_58
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_75

    .line 8008
    :goto_5d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2e

    .line 8000
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_65
    move-exception v3

    .line 8002
    :try_start_66
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_73

    .line 8008
    :goto_6b
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 8003
    :catch_73
    move-exception v4

    goto :goto_6b

    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_75
    move-exception v3

    goto :goto_5d

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_77
    move-exception v3

    goto :goto_35

    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "stateFile":Ljava/io/File;
    :catch_79
    move-exception v3

    goto :goto_27
.end method
