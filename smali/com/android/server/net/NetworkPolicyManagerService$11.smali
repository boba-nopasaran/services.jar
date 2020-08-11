.class Lcom/android/server/net/NetworkPolicyManagerService$11;
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
    .line 659
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 666
    const-string v4, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkInfo;

    .line 667
    .local v17, "netInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_11

    .line 693
    :goto_10
    return-void

    .line 669
    :cond_11
    const-string v4, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiInfo;

    .line 670
    .local v16, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v14

    .line 672
    .local v14, "meteredHint":Z
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 673
    .local v3, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 674
    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 675
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_5d

    if-eqz v14, :cond_5d

    .line 678
    new-instance v2, Landroid/net/NetworkPolicy;

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    const/4 v4, -0x1

    const-string v5, "UTC"

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    .line 681
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    .line 692
    :cond_58
    :goto_58
    monitor-exit v18

    goto :goto_10

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    :catchall_5a
    move-exception v4

    monitor-exit v18
    :try_end_5c
    .catchall {:try_start_30 .. :try_end_5c} :catchall_5a

    throw v4

    .line 683
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    :cond_5d
    if-eqz v2, :cond_58

    :try_start_5f
    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v4, :cond_58

    .line 686
    iput-boolean v14, v2, Landroid/net/NetworkPolicy;->metered:Z

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_6c
    .catchall {:try_start_5f .. :try_end_6c} :catchall_5a

    goto :goto_58
.end method
