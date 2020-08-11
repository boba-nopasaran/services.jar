.class Lcom/android/server/net/NetworkHttpMonitor$1;
.super Ljava/lang/Object;
.source "NetworkHttpMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkHttpMonitor;->sendKeepAlive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkHttpMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkHttpMonitor;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 151
    monitor-enter p0

    .line 152
    const/4 v8, 0x0

    .line 153
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mServer:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/net/NetworkHttpMonitor;->access$300(Lcom/android/server/net/NetworkHttpMonitor;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "/generate_204"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "checkUrl":Ljava/lang/String;
    const-string v9, "NetworkHttpMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_11d

    .line 156
    :try_start_3b
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 158
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 159
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 160
    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 161
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 163
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 164
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 165
    .local v6, "status":I
    const/16 v9, 0xcc

    if-ne v6, v9, :cond_93

    .line 166
    .local v4, "isConnected":Z
    :goto_65
    const-string v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v4, :cond_95

    .line 168
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->isFirewallEnabled()Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 169
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # invokes: Lcom/android/server/net/NetworkHttpMonitor;->resetFirewallStatus()V
    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->access$400(Lcom/android/server/net/NetworkHttpMonitor;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_8c} :catch_e6
    .catchall {:try_start_3b .. :try_end_8c} :catchall_139

    .line 191
    :cond_8c
    :goto_8c
    if-eqz v8, :cond_91

    .line 192
    :try_start_8e
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 195
    .end local v4    # "isConnected":Z
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_91
    :goto_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_11d

    .line 196
    return-void

    .restart local v6    # "status":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_93
    move v4, v10

    .line 165
    goto :goto_65

    .line 171
    .restart local v4    # "isConnected":Z
    :cond_95
    const/16 v9, 0x12e

    if-eq v6, v9, :cond_a1

    const/16 v9, 0x12d

    if-eq v6, v9, :cond_a1

    const/16 v9, 0x12f

    if-ne v6, v9, :cond_8c

    .line 174
    :cond_a1
    :try_start_a1
    const-string v9, "Location"

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, "loc":Ljava/lang/String;
    const-string v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "new loc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->getWebLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8c

    .line 177
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    invoke-virtual {v9}, Lcom/android/server/net/NetworkHttpMonitor;->isFirewallEnabled()Z

    move-result v9

    if-nez v9, :cond_120

    .line 178
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 179
    const/4 v9, 0x1

    # setter for: Lcom/android/server/net/NetworkHttpMonitor;->mIsFirewallEnabled:Z
    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->access$602(Z)Z
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_e5} :catch_e6
    .catchall {:try_start_a1 .. :try_end_e5} :catchall_139

    goto :goto_8c

    .line 186
    .end local v4    # "isConnected":Z
    .end local v5    # "loc":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_e6
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/IOException;
    :try_start_e7
    const-string v9, "NetworkHttpMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ioe:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_116
    .catchall {:try_start_e7 .. :try_end_116} :catchall_139

    .line 191
    if-eqz v8, :cond_91

    .line 192
    :try_start_118
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_91

    .line 195
    .end local v2    # "checkUrl":Ljava/lang/String;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_11d
    move-exception v9

    monitor-exit p0
    :try_end_11f
    .catchall {:try_start_118 .. :try_end_11f} :catchall_11d

    throw v9

    .line 181
    .restart local v2    # "checkUrl":Ljava/lang/String;
    .restart local v4    # "isConnected":Z
    .restart local v5    # "loc":Ljava/lang/String;
    .restart local v6    # "status":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_120
    :try_start_120
    iget-object v9, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/net/NetworkHttpMonitor$1;->this$0:Lcom/android/server/net/NetworkHttpMonitor;

    # getter for: Lcom/android/server/net/NetworkHttpMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/server/net/NetworkHttpMonitor;->access$500(Lcom/android/server/net/NetworkHttpMonitor;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_137} :catch_e6
    .catchall {:try_start_120 .. :try_end_137} :catchall_139

    goto/16 :goto_8c

    .line 191
    .end local v4    # "isConnected":Z
    .end local v5    # "loc":Ljava/lang/String;
    .end local v6    # "status":I
    .end local v7    # "url":Ljava/net/URL;
    :catchall_139
    move-exception v9

    if-eqz v8, :cond_13f

    .line 192
    :try_start_13c
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_13f
    throw v9
    :try_end_140
    .catchall {:try_start_13c .. :try_end_140} :catchall_11d
.end method
