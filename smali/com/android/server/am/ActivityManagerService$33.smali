.class Lcom/android/server/am/ActivityManagerService$33;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->updateWallpaperState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$isFg:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Z)V
    .registers 3

    .prologue
    .line 21725
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p2, p0, Lcom/android/server/am/ActivityManagerService$33;->val$isFg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 21727
    monitor-enter p0

    .line 21728
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$33;->val$isFg:Z

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mIsWallpaperFg:Z

    .line 21729
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWallpaperProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mIsWallpaperFg:Z

    if-eqz v0, :cond_1c

    .line 21730
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$33;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWallpaperProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 21732
    :cond_1c
    monitor-exit p0

    .line 21733
    return-void

    .line 21732
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method
