.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 642
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 643
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 647
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_5c6

    .line 876
    :cond_9
    :goto_9
    return-void

    .line 649
    :pswitch_a
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/MountService$UnmountCallBack;

    .line 651
    .local v24, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v25, 0x0

    .line 652
    .local v25, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 653
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v25, v0

    .line 654
    monitor-exit v27
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_4f

    .line 655
    if-nez v25, :cond_52

    .line 656
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_UPDATE volume is not exist!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 654
    :catchall_4f
    move-exception v26

    :try_start_50
    monitor-exit v27
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v26

    .line 660
    :cond_52
    const-string v26, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v26

    if-nez v26, :cond_e3

    .line 663
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_UPDATE stop unmount because of user changed to owner"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "mounted"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v26

    if-eqz v26, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_cc

    .line 667
    const-string v26, "MountService"

    const-string v27, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 670
    :cond_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.MEDIA_MOUNTED"

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 674
    :cond_e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.MEDIA_EJECT"

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 675
    const-string v26, "ro.mtk_2sdcard_swap"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v26

    if-eqz v26, :cond_15d

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "/storage/sdcard1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_15d

    .line 676
    const/16 v23, 0x0

    .line 677
    .local v23, "swapVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 678
    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v26

    const-string v28, "/storage/sdcard1"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v23, v0

    .line 679
    monitor-exit v27
    :try_end_148
    .catchall {:try_start_12d .. :try_end_148} :catchall_1d3

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.MEDIA_EJECT"

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 682
    .end local v23    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)I

    move-result v26

    if-lez v26, :cond_1d6

    .line 683
    const-wide/16 v26, 0x1f4

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    .line 688
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    const-string v26, "MountService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " registered = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    .line 692
    const-string v26, "MountService"

    const-string v27, "Updating external media status on PackageManager"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$2300()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1dc

    .line 694
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_9

    .line 679
    .restart local v23    # "swapVolume":Landroid/os/storage/StorageVolume;
    :catchall_1d3
    move-exception v26

    :try_start_1d4
    monitor-exit v27
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d3

    throw v26

    .line 685
    .end local v23    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_1d6
    const-wide/16 v26, 0x5dc

    invoke-static/range {v26 .. v27}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_16e

    .line 696
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/MountService;->finishMediaUpdate()V

    goto/16 :goto_9

    .line 705
    .end local v24    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v25    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_1f3
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v26, "MountService"

    const-string v27, "Updated status. Processing requests"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 709
    .local v19, "size":I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 710
    .local v20, "sizeArr":[I
    const/16 v21, 0x0

    .line 712
    .local v21, "sizeArrN":I
    const-string v26, "activity"

    invoke-static/range {v26 .. v26}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 714
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v9, 0x0

    .local v9, "i":I
    move/from16 v22, v21

    .end local v21    # "sizeArrN":I
    .local v22, "sizeArrN":I
    :goto_226
    move/from16 v0, v19

    if-ge v9, v0, :cond_43d

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/MountService$UnmountCallBack;

    .line 717
    .restart local v24    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v25, 0x0

    .line 718
    .restart local v25    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 719
    :try_start_245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v25, v0

    .line 720
    monitor-exit v27
    :try_end_264
    .catchall {:try_start_245 .. :try_end_264} :catchall_276

    .line 721
    if-nez v25, :cond_279

    .line 722
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_DONE volume is not exist!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    aput v9, v20, v22

    .line 714
    :goto_271
    add-int/lit8 v9, v9, 0x1

    move/from16 v22, v21

    .end local v21    # "sizeArrN":I
    .restart local v22    # "sizeArrN":I
    goto :goto_226

    .line 720
    :catchall_276
    move-exception v26

    :try_start_277
    monitor-exit v27
    :try_end_278
    .catchall {:try_start_277 .. :try_end_278} :catchall_276

    throw v26

    .line 726
    :cond_279
    const-string v26, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_30e

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_30e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v26

    if-nez v26, :cond_30e

    .line 729
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    aput v9, v20, v22

    .line 730
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_PM_DONE stop unmount because of user changed to owner"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "mounted"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v26

    if-eqz v26, :cond_2f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_2f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_2f7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_2f7

    .line 734
    const-string v26, "MountService"

    const-string v27, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 737
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.MEDIA_MOUNTED"

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_271

    .line 741
    .end local v21    # "sizeArrN":I
    .restart local v22    # "sizeArrN":I
    :cond_30e
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 742
    .local v16, "path":Ljava/lang/String;
    const/4 v14, 0x0

    .line 743
    .local v14, "needKill":Z
    const/4 v6, 0x0

    .line 744
    .local v6, "done":Z
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v26, v0

    if-nez v26, :cond_36b

    .line 745
    const/4 v6, 0x1

    .line 787
    :cond_31f
    :goto_31f
    if-nez v6, :cond_3ff

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_3ff

    .line 789
    const-string v26, "MountService"

    const-string v27, "Retrying to kill storage users again"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v29, v0

    add-int/lit8 v30, v29, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    const-wide/16 v28, 0x1e

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v21, v22

    .end local v22    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    goto/16 :goto_271

    .line 747
    .end local v21    # "sizeArrN":I
    .restart local v22    # "sizeArrN":I
    :cond_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v17

    .line 748
    .local v17, "pids":[I
    if-eqz v17, :cond_382

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_384

    .line 749
    :cond_382
    const/4 v6, 0x1

    goto :goto_31f

    .line 750
    :cond_384
    if-eqz v4, :cond_3f6

    .line 751
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v18

    .line 752
    .local v18, "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v18, :cond_3e4

    .line 753
    move-object/from16 v0, v17

    array-length v12, v0

    .line 754
    .local v12, "len":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_390
    if-ge v11, v12, :cond_394

    .line 755
    if-eqz v14, :cond_3bd

    .line 771
    .end local v11    # "k":I
    .end local v12    # "len":I
    :cond_394
    :goto_394
    if-eqz v14, :cond_3ec

    .line 773
    const-string v26, "unmount media"

    const/16 v27, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v17

    .line 776
    if-eqz v17, :cond_3ba

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    if-nez v26, :cond_31f

    .line 777
    :cond_3ba
    const/4 v6, 0x1

    goto/16 :goto_31f

    .line 758
    .restart local v11    # "k":I
    .restart local v12    # "len":I
    :cond_3bd
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3c1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3e1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 759
    .local v15, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v0, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v26, v0

    aget v27, v17, v11

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3c1

    .line 760
    const/4 v14, 0x1

    .line 761
    const-string v26, "MountService"

    const-string v27, "java process, need kill!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    .end local v15    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3e1
    add-int/lit8 v11, v11, 0x1

    goto :goto_390

    .line 768
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "k":I
    .end local v12    # "len":I
    :cond_3e4
    const-string v26, "MountService"

    const-string v27, "runningList from AMS is null!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_394

    .line 780
    :cond_3ec
    const-string v26, "MountService"

    const-string v27, "all native process, don\'t need kill!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v6, 0x1

    goto/16 :goto_31f

    .line 784
    .end local v18    # "runningList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_3f6
    const-string v26, "MountService"

    const-string v27, "Fail to get AMS while unmount!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31f

    .line 795
    .end local v17    # "pids":[I
    :cond_3ff
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v26, v0

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_414

    .line 796
    const-string v26, "MountService"

    const-string v27, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_414
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "sizeArrN":I
    .restart local v21    # "sizeArrN":I
    aput v9, v20, v22

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_271

    .line 805
    .end local v6    # "done":Z
    .end local v14    # "needKill":Z
    .end local v16    # "path":Ljava/lang/String;
    .end local v21    # "sizeArrN":I
    .end local v24    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v25    # "volume":Landroid/os/storage/StorageVolume;
    .restart local v22    # "sizeArrN":I
    :cond_43d
    add-int/lit8 v9, v22, -0x1

    :goto_43f
    if-ltz v9, :cond_9

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    aget v27, v20, v9

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 805
    add-int/lit8 v9, v9, -0x1

    goto :goto_43f

    .line 811
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v9    # "i":I
    .end local v19    # "size":I
    .end local v20    # "sizeArr":[I
    .end local v22    # "sizeArrN":I
    :pswitch_44f
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_MS"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/server/MountService$UnmountCallBack;

    .line 814
    .restart local v24    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v25, 0x0

    .line 815
    .restart local v25    # "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 816
    :try_start_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v26

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v25, v0

    .line 817
    monitor-exit v27
    :try_end_48a
    .catchall {:try_start_46b .. :try_end_48a} :catchall_495

    .line 818
    if-nez v25, :cond_498

    .line 819
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_MS volume is not exist!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 817
    :catchall_495
    move-exception v26

    :try_start_496
    monitor-exit v27
    :try_end_497
    .catchall {:try_start_496 .. :try_end_497} :catchall_495

    throw v26

    .line 822
    :cond_498
    const-string v26, "ro.mtk_owner_sdcard_support"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_529

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_529

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUserId:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)I

    move-result v26

    if-nez v26, :cond_529

    .line 825
    const-string v26, "MountService"

    const-string v27, "H_UNMOUNT_MS stop unmount because of user changed to owner"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "mounted"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mSetDefaultEnable:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v26

    if-eqz v26, :cond_512

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mIsTurnOnOffUsb:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_512

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mMountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2200(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_512

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Z

    move-result v26

    if-nez v26, :cond_512

    .line 829
    const-string v26, "MountService"

    const-string v27, "updateDefaultpath Environment.MEDIA_MOUNTED"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 832
    :cond_512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    const-string v27, "android.intent.action.MEDIA_MOUNTED"

    sget-object v28, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    .line 836
    :cond_529
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_9

    .line 841
    .end local v24    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v25    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_52e
    :try_start_52e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)V
    :try_end_537
    .catch Ljava/lang/Exception; {:try_start_52e .. :try_end_537} :catch_539

    goto/16 :goto_9

    .line 842
    :catch_539
    move-exception v8

    .line 843
    .local v8, "ex":Ljava/lang/Exception;
    const-string v26, "MountService"

    const-string v27, "Boot-time mount exception"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 848
    .end local v8    # "ex":Ljava/lang/Exception;
    :pswitch_547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)V

    .line 849
    const-string v26, "MountService"

    const-string v27, "Running fstrim idle maintenance"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :try_start_557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$2802(Lcom/android/server/MountService;J)J

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v27 .. v27}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_583
    .catch Ljava/lang/Exception; {:try_start_557 .. :try_end_583} :catch_5b4

    .line 862
    :goto_583
    :try_start_583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v26 .. v26}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v26

    const-string v27, "fstrim"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const-string v30, "dotrim"

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_5a7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_583 .. :try_end_5a7} :catch_5bd

    .line 869
    :goto_5a7
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 870
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_9

    .line 871
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_9

    .line 855
    .end local v5    # "callback":Ljava/lang/Runnable;
    :catch_5b4
    move-exception v7

    .line 856
    .local v7, "e":Ljava/lang/Exception;
    const-string v26, "MountService"

    const-string v27, "Unable to record last fstrim!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_583

    .line 864
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5bd
    move-exception v13

    .line 865
    .local v13, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v26, "MountService"

    const-string v27, "Failed to run fstrim!"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a7

    .line 647
    :pswitch_data_5c6
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1f3
        :pswitch_44f
        :pswitch_52e
        :pswitch_547
    .end packed-switch
.end method
