.class Lcom/android/server/notification/NotificationManagerService$9;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$sendDelete:Z

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V
    .registers 13

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iput-object p7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    iput-boolean p12, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$sendDelete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_56

    const/4 v9, 0x0

    .line 2705
    .local v9, "listenerName":Ljava/lang/String;
    :goto_5
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    invoke-static/range {v0 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2709
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$id:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$userId:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v11

    .line 2710
    .local v11, "index":I
    if-ltz v11, :cond_8f

    .line 2711
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 2715
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_47

    .line 2716
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 2719
    :cond_47
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    and-int/2addr v0, v2

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustHaveFlags:I

    if-eq v0, v2, :cond_5f

    .line 2720
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_1f .. :try_end_55} :catchall_6c

    .line 2734
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_55
    return-void

    .line 2704
    .end local v9    # "listenerName":Ljava/lang/String;
    .end local v11    # "index":I
    :cond_56
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 2722
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v9    # "listenerName":Ljava/lang/String;
    .restart local v11    # "index":I
    :cond_5f
    :try_start_5f
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$mustNotHaveFlags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_6f

    .line 2723
    monitor-exit v1

    goto :goto_55

    .line 2733
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v11    # "index":I
    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_5f .. :try_end_6e} :catchall_6c

    throw v0

    .line 2726
    .restart local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    .restart local v11    # "index":I
    :cond_6f
    :try_start_6f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2728
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$sendDelete:Z

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$reason:I

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    invoke-static {v0, v6, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$3300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2729
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingUid:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$9;->val$callingPid:I

    const/16 v10, 0xc

    # invokes: Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;I)V

    .line 2731
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2733
    .end local v6    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_6c

    goto :goto_55
.end method
