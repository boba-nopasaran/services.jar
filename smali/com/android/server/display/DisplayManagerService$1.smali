.class Lcom/android/server/display/DisplayManagerService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedPermitted(Lcom/android/server/display/DisplayDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;

.field final synthetic val$device:Lcom/android/server/display/DisplayDevice;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V
    .registers 3

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$1;->val$device:Lcom/android/server/display/DisplayDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1242
    :try_start_7
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$1;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$1;->val$device:Lcom/android/server/display/DisplayDevice;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    .line 1243
    monitor-exit v1

    .line 1244
    return-void

    .line 1243
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method
