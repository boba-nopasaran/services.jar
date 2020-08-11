.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 1503
    const-string v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1504
    .local v17, "encryptProgress":Ljava/lang/String;
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1505
    .local v15, "decrypt":Ljava/lang/String;
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), decrypt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1507
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encryptProgress("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), skip the command to vold."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4500(Lcom/android/server/MountService;)Landroid/os/storage/StorageVolume;

    move-result-object v22

    .line 1509
    .local v22, "primaryVolume":Landroid/os/storage/StorageVolume;
    if-eqz v22, :cond_7d

    .line 1510
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const-string v4, "removed"

    move-object/from16 v0, v22

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v4}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    .line 1518
    :cond_7d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 1519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1525
    :cond_92
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 1526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1634
    .end local v22    # "primaryVolume":Landroid/os/storage/StorageVolume;
    :cond_a7
    :goto_a7
    return-void

    .line 1533
    :cond_a8
    :try_start_a8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v3

    const-string v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "list"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "broadcast"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v3

    const/16 v4, 0x6e

    invoke-static {v3, v4}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v27

    .line 1536
    .local v27, "vols":[Ljava/lang/String;
    move-object/from16 v13, v27

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_d0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_130

    aget-object v28, v13, v19

    .line 1537
    .local v28, "volstr":Ljava/lang/String;
    const-string v3, " "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1539
    .local v26, "tok":[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v21, v26, v3

    .line 1540
    .local v21, "path":Ljava/lang/String;
    const-string v25, "removed"

    .line 1543
    .local v25, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ee} :catch_126

    .line 1544
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/StorageVolume;

    .line 1545
    .local v29, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v4
    :try_end_ff
    .catchall {:try_start_ee .. :try_end_ff} :catchall_123

    .line 1546
    if-nez v29, :cond_191

    :try_start_101
    const-string v3, "ro.mtk_multi_patition"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_119

    const-string v3, "usbotg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_191

    .line 1548
    :cond_119
    const-string v3, "MountService"

    const-string v4, "Error processing initial volume state:  volume == null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_120} :catch_126

    .line 1536
    :cond_120
    :goto_120
    add-int/lit8 v19, v19, 0x1

    goto :goto_d0

    .line 1545
    .end local v29    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_123
    move-exception v3

    :try_start_124
    monitor-exit v4
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    :try_start_125
    throw v3
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_126} :catch_126

    .line 1598
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "len$":I
    .end local v21    # "path":Ljava/lang/String;
    .end local v25    # "state":Ljava/lang/String;
    .end local v26    # "tok":[Ljava/lang/String;
    .end local v27    # "vols":[Ljava/lang/String;
    .end local v28    # "volstr":Ljava/lang/String;
    :catch_126
    move-exception v16

    .line 1599
    .local v16, "e":Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v4, "Error processing initial volume state"

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1605
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_130
    const-string v3, "ro.mtk_2sdcard_swap"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_145

    .line 1606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1615
    :cond_145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_15a

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4600(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1621
    :cond_15a
    const-string v3, ""

    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 1622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->copyLocaleFromMountService()V
    invoke-static {v3}, Lcom/android/server/MountService;->access$4900(Lcom/android/server/MountService;)V

    .line 1626
    :cond_16f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v3}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    if-eqz v3, :cond_a7

    .line 1632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/server/MountService;->access$4700(Lcom/android/server/MountService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_a7

    .line 1552
    .restart local v13    # "arr$":[Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v20    # "len$":I
    .restart local v21    # "path":Ljava/lang/String;
    .restart local v25    # "state":Ljava/lang/String;
    .restart local v26    # "tok":[Ljava/lang/String;
    .restart local v27    # "vols":[Ljava/lang/String;
    .restart local v28    # "volstr":Ljava/lang/String;
    .restart local v29    # "volume":Landroid/os/storage/StorageVolume;
    :cond_191
    const/4 v3, 0x2

    :try_start_192
    aget-object v3, v26, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1553
    .local v24, "st":I
    if-nez v24, :cond_2bc

    .line 1554
    const-string v25, "removed"

    .line 1567
    :goto_19c
    if-eqz v25, :cond_120

    .line 1568
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating valid state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v3, "ro.mtk_multi_patition"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_317

    .line 1571
    if-nez v29, :cond_30a

    const-string v3, "usbotg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30a

    .line 1573
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v30

    monitor-enter v30
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1db} :catch_126

    .line 1574
    :try_start_1db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1575
    .local v23, "size":I
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:before mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    new-instance v2, Landroid/os/storage/StorageVolume;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/os/storage/StorageVolume;-><init>(Ljava/io/File;IZZZIZJLandroid/os/UserHandle;)V

    .line 1577
    .local v2, "usbotgVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/MountService;->isVolumeRegistered(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$4800(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v14

    .line 1578
    .local v14, "bPathIncluded":Z
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:otg path is registered? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    if-nez v14, :cond_26e

    .line 1580
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice notifyVolumeChange:add volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    :cond_26e
    const-string v3, "MountService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "usbotg: mountservice onDaemonConnected:after mVolumes size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_2fb

    .line 1586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageVolume;->setStorageId(I)V
    :try_end_2b9
    .catchall {:try_start_1db .. :try_end_2b9} :catchall_307

    .line 1585
    add-int/lit8 v18, v18, 0x1

    goto :goto_294

    .line 1555
    .end local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .end local v14    # "bPathIncluded":Z
    .end local v18    # "i":I
    .end local v23    # "size":I
    :cond_2bc
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_2c5

    .line 1556
    :try_start_2c1
    const-string v25, "unmounted"

    goto/16 :goto_19c

    .line 1557
    :cond_2c5
    const/4 v3, 0x4

    move/from16 v0, v24

    if-ne v0, v3, :cond_2d5

    .line 1558
    const-string v25, "mounted"

    .line 1559
    const-string v3, "MountService"

    const-string v4, "Media already mounted on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19c

    .line 1560
    :cond_2d5
    const/4 v3, 0x7

    move/from16 v0, v24

    if-ne v0, v3, :cond_2e5

    .line 1561
    const-string v25, "shared"

    .line 1562
    const-string v3, "MountService"

    const-string v4, "Media shared on daemon connection"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19c

    .line 1564
    :cond_2e5
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Unexpected state %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2fb} :catch_126

    .line 1588
    .restart local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .restart local v14    # "bPathIncluded":Z
    .restart local v18    # "i":I
    .restart local v23    # "size":I
    :cond_2fb
    :try_start_2fb
    monitor-exit v30
    :try_end_2fc
    .catchall {:try_start_2fb .. :try_end_2fc} :catchall_307

    .line 1589
    :try_start_2fc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_305
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_305} :catch_126

    goto/16 :goto_120

    .line 1588
    .end local v2    # "usbotgVolume":Landroid/os/storage/StorageVolume;
    .end local v14    # "bPathIncluded":Z
    .end local v18    # "i":I
    .end local v23    # "size":I
    :catchall_307
    move-exception v3

    :try_start_308
    monitor-exit v30
    :try_end_309
    .catchall {:try_start_308 .. :try_end_309} :catchall_307

    :try_start_309
    throw v3

    .line 1591
    :cond_30a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V

    goto/16 :goto_120

    .line 1594
    :cond_317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    # invokes: Lcom/android/server/MountService;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    invoke-static {v3, v0, v1}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_322
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_322} :catch_126

    goto/16 :goto_120
.end method
