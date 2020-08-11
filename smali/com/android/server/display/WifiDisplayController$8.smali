.class Lcom/android/server/display/WifiDisplayController$8;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestPeers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 7
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 984
    const-string v2, "ro.mtk_wfd_sink_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mSinkEnabled:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1020
    :goto_16
    return-void

    .line 988
    :cond_17
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 989
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received list of peers. mDiscoverPeersInProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_3b
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 994
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4c
    :goto_4c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_105

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 995
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    # getter for: Lcom/android/server/display/WifiDisplayController;->DEBUG:Z
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$200()Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 996
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # invokes: Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1300(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_7a
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 1001
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1002
    :cond_9c
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_be

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 1004
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 1007
    :cond_be
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f4

    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$1600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 1008
    const-string v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block scan result on block mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mBlockMac:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$1600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .line 1011
    :cond_f4
    # invokes: Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1700(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1012
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1200(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4c

    .line 1017
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_105
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$8;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleScanResults()V
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$1800(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_16
.end method
