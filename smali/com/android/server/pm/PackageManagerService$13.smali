.class Lcom/android/server/pm/PackageManagerService$13;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageMoveObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 4

    .prologue
    .line 13911
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13920
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install result for move: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13926
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 13927
    :try_start_21
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 13928
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_32

    .line 13929
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 13931
    :cond_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_43

    .line 13933
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 13934
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_58

    .line 13942
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v4, -0x6

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    .line 13945
    :goto_42
    return-void

    .line 13931
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "status":I
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2

    .line 13936
    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "status":I
    :sswitch_46
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_42

    .line 13939
    :sswitch_4f
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_42

    .line 13934
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_46
        0x6 -> :sswitch_4f
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 13914
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
