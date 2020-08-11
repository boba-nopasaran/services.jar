.class final Lcom/android/server/BatteryService$LocalService;
.super Landroid/os/BatteryManagerInternal;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .prologue
    .line 977
    iput-object p1, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/BatteryManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .prologue
    .line 977
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public getBatteryLevel()I
    .registers 3

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 995
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1000(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v0

    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    monitor-exit v1

    return v0

    .line 996
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getBatteryLevelLow()Z
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1002
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryLevelLow:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$2400(Lcom/android/server/BatteryService;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1003
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getInvalidCharger()I
    .registers 3

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1009
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 1010
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getPlugType()I
    .registers 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 988
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v0

    monitor-exit v1

    return v0

    .line 989
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isPowered(I)Z
    .registers 4
    .param p1, "plugTypeSet"    # I

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 981
    :try_start_7
    iget-object v0, p0, Lcom/android/server/BatteryService$LocalService;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->isPoweredLocked(I)Z
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$2300(Lcom/android/server/BatteryService;I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 982
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
