.class Lcom/android/server/MountService$UmsEnableCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UmsEnableCallBack"
.end annotation


# instance fields
.field final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "force"    # Z

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 550
    iput-object p3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    .line 551
    return-void
.end method


# virtual methods
.method handleFinished()V
    .registers 9

    .prologue
    .line 555
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mIsUsbConnected:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 556
    const/4 v2, 0x0

    .line 557
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 558
    :try_start_10
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v2, v0

    .line 559
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_5d

    .line 560
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "checking"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "android.intent.action.MEDIA_CHECKING"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 562
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "mounted"

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v4}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 563
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 577
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :goto_41
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # operator-- for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1410(Lcom/android/server/MountService;)I

    .line 578
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUMSCount:I
    invoke-static {v3}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)I

    move-result v3

    if-gtz v3, :cond_5c

    .line 579
    new-instance v3, Lcom/android/server/MountService$UmsEnableCallBack$1;

    invoke-direct {v3, p0}, Lcom/android/server/MountService$UmsEnableCallBack$1;-><init>(Lcom/android/server/MountService$UmsEnableCallBack;)V

    invoke-virtual {v3}, Lcom/android/server/MountService$UmsEnableCallBack$1;->start()V

    .line 585
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$1602(Lcom/android/server/MountService;Z)Z

    .line 587
    :cond_5c
    return-void

    .line 559
    .restart local v2    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v3

    .line 565
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_60
    # getter for: Lcom/android/server/MountService;->TURNONUSB_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$1200()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 566
    :try_start_65
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v3}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v1

    .line 567
    .local v1, "unmountSwap":Z
    invoke-super {p0}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    .line 570
    if-eqz v1, :cond_7f

    .line 571
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    const-string v5, "/storage/sdcard1"

    iget-object v6, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 575
    :goto_7a
    monitor-exit v4

    goto :goto_41

    .end local v1    # "unmountSwap":Z
    :catchall_7c
    move-exception v3

    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_65 .. :try_end_7e} :catchall_7c

    throw v3

    .line 573
    .restart local v1    # "unmountSwap":Z
    :cond_7f
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/MountService$UmsEnableCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v5, p0, Lcom/android/server/MountService$UmsEnableCallBack;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/MountService$UmsEnableCallBack;->method:Ljava/lang/String;

    const/4 v7, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_89
    .catchall {:try_start_7f .. :try_end_89} :catchall_7c

    goto :goto_7a
.end method
