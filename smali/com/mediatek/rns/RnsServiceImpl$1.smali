.class Lcom/mediatek/rns/RnsServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x2710

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 170
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 172
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    monitor-enter p0

    .line 173
    :try_start_19
    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_76

    :cond_2b
    :goto_2b
    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v8, v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 175
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_78

    .line 176
    const-string v6, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: NETWORK_STATE_CHANGED_ACTION connected = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiConnected:Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 179
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const/16 v8, -0x7f

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastRssi:I
    invoke-static {v6, v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$102(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 180
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v8

    const/16 v9, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_75
    :goto_75
    return-void

    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_76
    move v6, v7

    .line 173
    goto :goto_2b

    .line 175
    :catchall_78
    move-exception v6

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v6

    .line 182
    :cond_7b
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v11, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_75

    .line 185
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_93
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 186
    monitor-enter p0

    .line 187
    :try_start_9c
    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_e2

    :goto_a8
    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v8, v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$302(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 190
    monitor-exit p0
    :try_end_ac
    .catchall {:try_start_9c .. :try_end_ac} :catchall_e4

    .line 191
    const-string v6, "RnsServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: WIFI_STATE_CHANGED_ACTION enable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiEnabled:Z
    invoke-static {v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$300(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v11, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_75

    :cond_e2
    move v6, v7

    .line 187
    goto :goto_a8

    .line 190
    :catchall_e4
    move-exception v6

    :try_start_e5
    monitor-exit p0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v6

    .line 193
    :cond_e7
    const-string v8, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 194
    const-string v6, "newRssi"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 195
    .local v3, "rssi":I
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v8

    invoke-virtual {v8, v7, v3, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_75

    .line 196
    .end local v3    # "rssi":I
    :cond_10a
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_215

    .line 197
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 199
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_75

    .line 200
    const-string v8, "RnsServiceImpl"

    const-string v9, "onReceive: CONNECTIVITY_ACTION_IMMEDIATE"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 202
    .local v2, "nwType":I
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "subtypename":Ljava/lang/String;
    const-string v8, "RnsServiceImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "nwType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " typename = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " subtypename = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v8, "MOBILE_IMS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b1

    const-string v8, "LTE"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b1

    .line 207
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$402(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 208
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_181

    .line 209
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 225
    :cond_181
    :goto_181
    const-string v6, "RnsServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLteImsConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEpdgImsConnected = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 211
    :cond_1b1
    const-string v8, "Wi-Fi"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_181

    const-string v8, "IMS"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_181

    .line 212
    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v8, v9}, Lcom/mediatek/rns/RnsServiceImpl;->access$602(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 213
    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static {v8, v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$702(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 214
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->needToSendAlertWarning()Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$800(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_1e3

    .line 215
    const-string v6, "RnsServiceImpl"

    const-string v8, "send Rove Out Alert warning for connection update"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->sendRoveOutAlert()V
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$900(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 218
    :cond_1e3
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-nez v6, :cond_20e

    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$1000(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_20e

    .line 219
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsWifiDisabling:Z
    invoke-static {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1002(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    .line 220
    const-string v6, "RnsServiceImpl"

    const-string v8, "Epdg is disconnected & disable wifi"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiMgr:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$1200(Lcom/mediatek/rns/RnsServiceImpl;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    iget-object v8, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mWifiDisableFlag:I
    invoke-static {v8}, Lcom/mediatek/rns/RnsServiceImpl;->access$1100(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiManager;->setWifiDisabledByEpdg(I)Z

    .line 223
    :cond_20e
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mIsEpdgConnectionChanged:Z
    invoke-static {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$702(Lcom/mediatek/rns/RnsServiceImpl;Z)Z

    goto/16 :goto_181

    .line 228
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "nwType":I
    .end local v4    # "subtypename":Ljava/lang/String;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_215
    const-string v6, "android.net.conn.CONNECTIVITY_ACTION_HANDOVER_END"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 232
    const-string v6, "RnsServiceImpl"

    const-string v8, "Reset RNS state for handover is end"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->isHandoverInProgress()Z
    invoke-static {v6}, Lcom/mediatek/rns/RnsServiceImpl;->access$1300(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 234
    iget-object v6, p0, Lcom/mediatek/rns/RnsServiceImpl$1;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mState:I
    invoke-static {v6, v7}, Lcom/mediatek/rns/RnsServiceImpl;->access$1402(Lcom/mediatek/rns/RnsServiceImpl;I)I

    goto/16 :goto_75
.end method
