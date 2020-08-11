.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->requestExtraDisplayDeviceRefreshInner(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .prologue
    .line 11172
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 11175
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 11176
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUpByReason(JI)V

    .line 11177
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_USER_BUILD:Z

    if-nez v0, :cond_1c

    .line 11178
    const-string v0, "WindowManager"

    const-string v2, "MHL plug out when portrait, call wakeUpByReason"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11179
    :cond_1c
    monitor-exit v1

    .line 11180
    return-void

    .line 11179
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method
