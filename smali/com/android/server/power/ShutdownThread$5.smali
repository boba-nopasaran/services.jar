.class final Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 348
    const-string v0, "ShutdownThread"

    const-string v1, "setBacklightBrightness: Off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_32

    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 350
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$500(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 351
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->access$502(Lcom/android/server/power/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 353
    :cond_32
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$600(Lcom/android/server/power/ShutdownThread;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 354
    return-void
.end method
