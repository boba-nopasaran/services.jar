.class Lcom/android/server/pm/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IILandroid/content/pm/IPackageDeleteObserver2;)V
    .registers 6

    .prologue
    .line 11337
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 11339
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v2, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11340
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$8;->val$userId:I

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$8;->val$flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v1

    .line 11341
    .local v1, "returnCode":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v2, :cond_1f

    .line 11343
    :try_start_17
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 11348
    :cond_1f
    :goto_1f
    return-void

    .line 11344
    :catch_20
    move-exception v0

    .line 11345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
