.class Lcom/android/server/net/NetworkPolicyManagerService$10;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 638
    const-string v3, "changeReason"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 639
    .local v1, "reason":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_38

    .line 640
    const-string v3, "wifiConfiguration"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 642
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 643
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 644
    .local v2, "template":Landroid/net/NetworkTemplate;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 645
    :try_start_21
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 646
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$10;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 649
    :cond_37
    monitor-exit v4

    .line 652
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    :cond_38
    return-void

    .line 649
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "template":Landroid/net/NetworkTemplate;
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_39

    throw v3
.end method
