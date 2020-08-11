.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 530
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 7

    .prologue
    .line 624
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 625
    :try_start_5
    const-string v3, "NotificationService"

    const-string v5, "clearEffects"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$202(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_4d

    move-result-wide v0

    .line 632
    .local v0, "identity":J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 633
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_23

    .line 634
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_48
    .catchall {:try_start_16 .. :try_end_23} :catchall_50

    .line 638
    :cond_23
    :try_start_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :goto_26
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_4d

    move-result-wide v0

    .line 645
    :try_start_30
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_55

    .line 647
    :try_start_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 652
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 653
    monitor-exit v4

    .line 654
    return-void

    .line 636
    :catch_48
    move-exception v3

    .line 638
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 653
    .end local v0    # "identity":J
    :catchall_4d
    move-exception v3

    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_4d

    throw v3

    .line 638
    .restart local v0    # "identity":J
    :catchall_50
    move-exception v3

    :try_start_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 647
    :catchall_55
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_4d
.end method

.method public onClearAll(III)V
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 565
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 567
    monitor-exit v7

    .line 568
    return-void

    .line 567
    :catchall_12
    move-exception v0

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;I)V
    .registers 10
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "actionIndex"    # I

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 591
    :try_start_5
    invoke-static {p3, p4}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;I)V

    .line 592
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 593
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_2e

    .line 594
    const-string v1, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    monitor-exit v2

    .line 599
    :goto_2d
    return-void

    .line 598
    :cond_2e
    monitor-exit v2

    goto :goto_2d

    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 19
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "userId"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 607
    return-void
.end method

.method public onNotificationClick(IILjava/lang/String;)V
    .registers 20
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v15

    .line 573
    :try_start_7
    invoke-static/range {p3 .. p3}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;)V

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 575
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v13, :cond_36

    .line 576
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No notification with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    monitor-exit v15

    .line 585
    :goto_35
    return-void

    .line 579
    :cond_36
    iget-object v14, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 580
    .local v14, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const/16 v7, 0x10

    const/16 v8, 0x40

    const/4 v9, 0x0

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 584
    monitor-exit v15

    goto :goto_35

    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v14    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catchall_5c
    move-exception v1

    monitor-exit v15
    :try_end_5e
    .catchall {:try_start_7 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 28
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "userId"    # I

    .prologue
    .line 659
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNotification error pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; will crashApplication(uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p9

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 663
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 665
    .local v16, "ident":J
    :try_start_6c
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad notification posted from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p3

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_9a} :catch_9e

    .line 670
    :goto_9a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 671
    return-void

    .line 668
    :catch_9e
    move-exception v4

    goto :goto_9a
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 702
    if-eqz p2, :cond_22

    move v3, v1

    :goto_5
    if-eqz p3, :cond_24

    :goto_7
    invoke-static {p1, v3, v1}, Lcom/android/server/EventLogTags;->writeNotificationExpansion(Ljava/lang/String;II)V

    .line 703
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 704
    :try_start_f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 705
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_20

    .line 706
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 708
    :cond_20
    monitor-exit v2

    .line 709
    return-void

    .end local v0    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_22
    move v3, v2

    .line 702
    goto :goto_5

    :cond_24
    move v1, v2

    goto :goto_7

    .line 708
    :catchall_26
    move-exception v1

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_26

    throw v1
.end method

.method public onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p1, "newlyVisibleKeys"    # [Ljava/lang/String;
    .param p2, "noLongerVisibleKeys"    # [Ljava/lang/String;

    .prologue
    .line 678
    const-string v5, ";"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-static {v6, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/EventLogTags;->writeNotificationVisibilityChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 682
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_15
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_17
    if-ge v1, v3, :cond_34

    aget-object v2, v0, v1

    .line 683
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 684
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v4, :cond_2a

    .line 682
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 685
    :cond_2a
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    goto :goto_27

    .line 696
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_31
    move-exception v5

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_31

    throw v5

    .line 691
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    :cond_34
    move-object v0, p2

    :try_start_35
    array-length v3, v0

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v3, :cond_51

    aget-object v2, v0, v1

    .line 692
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 693
    .restart local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v4, :cond_4a

    .line 691
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 694
    :cond_4a
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onVisibilityChanged(Z)V

    goto :goto_47

    .line 696
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_51
    monitor-exit v6
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_31

    .line 697
    return-void
.end method

.method public onPanelHidden()V
    .registers 1

    .prologue
    .line 619
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 620
    return-void
.end method

.method public onPanelRevealed(Z)V
    .registers 2
    .param p1, "clearEffects"    # Z

    .prologue
    .line 611
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed()V

    .line 612
    if-eqz p1, :cond_8

    .line 613
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 615
    :cond_8
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 8
    .param p1, "status"    # I

    .prologue
    .line 534
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 536
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput p1, v3, Lcom/android/server/notification/NotificationManagerService;->mDisabledNotifications:I

    .line 537
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v3, 0x40000

    and-int/2addr v3, p1

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    :goto_11
    # setter for: Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z
    invoke-static {v5, v3}, Lcom/android/server/notification/NotificationManagerService;->access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 539
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_48

    move-result-wide v0

    .line 543
    .local v0, "identity":J
    :try_start_21
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 544
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_2e

    .line 545
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_43
    .catchall {:try_start_21 .. :try_end_2e} :catchall_4b

    .line 549
    :cond_2e
    :try_start_2e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 552
    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    :goto_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_48

    move-result-wide v0

    .line 554
    :try_start_35
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_50

    .line 556
    :try_start_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 559
    .end local v0    # "identity":J
    :cond_3f
    monitor-exit v4

    .line 560
    return-void

    .line 537
    :cond_41
    const/4 v3, 0x0

    goto :goto_11

    .line 547
    .restart local v0    # "identity":J
    :catch_43
    move-exception v3

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 559
    .end local v0    # "identity":J
    :catchall_48
    move-exception v3

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_48

    throw v3

    .line 549
    .restart local v0    # "identity":J
    :catchall_4b
    move-exception v3

    :try_start_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 556
    :catchall_50
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_48
.end method
