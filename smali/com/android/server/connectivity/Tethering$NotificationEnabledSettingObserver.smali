.class Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;
.super Landroid/database/ContentObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationEnabledSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 641
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 642
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 652
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 654
    :try_start_a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # invokes: Lcom/android/server/connectivity/Tethering;->updateTetheredNotification()V
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)V

    .line 655
    monitor-exit v1

    .line 656
    return-void

    .line 655
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method

.method public register()V
    .registers 4

    .prologue
    .line 645
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$NotificationEnabledSettingObserver;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 646
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "interface_throttle_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 648
    return-void
.end method
