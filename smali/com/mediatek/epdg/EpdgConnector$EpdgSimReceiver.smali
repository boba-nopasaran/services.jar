.class Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;
.super Ljava/lang/Object;
.source "EpdgConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgSimReceiver"
.end annotation


# static fields
.field private static final EAUTH_CMD:Ljava/lang/String; = "eauth="


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnector;


# direct methods
.method constructor <init>(Lcom/mediatek/epdg/EpdgConnector;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    return-void
.end method


# virtual methods
.method protected handleSimInput(Ljava/lang/String;)V
    .registers 10
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v5, "EpdgConnector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process input: RCV <-("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "eauth="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 291
    const-string v5, "eauth="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "data":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "parsed":[Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v6, 0x1

    aget-object v6, v3, v6

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 295
    .local v4, "rand":[B
    const/4 v1, 0x0

    .line 297
    .local v1, "autn":[B
    array-length v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_62

    .line 298
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 301
    :cond_62
    iget-object v5, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifySimAction(Ljava/lang/String;[B[B)V
    invoke-static {v5, v0, v4, v1}, Lcom/mediatek/epdg/EpdgConnector;->access$500(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;[B[B)V

    .line 303
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "autn":[B
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "parsed":[Ljava/lang/String;
    .end local v4    # "rand":[B
    :cond_67
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 189
    const/4 v8, 0x0

    .line 190
    .local v8, "retryCount":I
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 193
    .local v6, "flag":Landroid/net/LocalSocketAddress$Namespace;
    :cond_4
    :goto_4
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9, v13}, Lcom/mediatek/epdg/EpdgConnector;->access$002(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 197
    :try_start_9
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    new-instance v10, Landroid/net/LocalSocket;

    invoke-direct {v10}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9, v10}, Lcom/mediatek/epdg/EpdgConnector;->access$002(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 198
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v9, "wod_sim"

    invoke-direct {v0, v9, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 200
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_dc

    .line 230
    const/4 v8, 0x0

    .line 232
    const-string v9, "EpdgConnector"

    const-string v10, "[SIM]Connect successfully"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_2b
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 237
    .local v7, "inputStream":Ljava/io/InputStream;
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3c} :catch_120
    .catchall {:try_start_2b .. :try_end_3c} :catchall_19c

    .line 238
    :try_start_3c
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 239
    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_11d

    .line 241
    const/16 v9, 0x1000

    :try_start_4e
    new-array v1, v9, [B

    .line 244
    .local v1, "buffer":[B
    :cond_50
    :goto_50
    const/4 v9, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v7, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 246
    .local v2, "count":I
    if-gez v2, :cond_18f

    .line 248
    const-string v9, "EpdgConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Hit EOS while reading message:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_71} :catch_120
    .catchall {:try_start_4e .. :try_end_71} :catchall_19c

    .line 259
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 260
    :try_start_78
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_207

    move-result-object v9

    if-eqz v9, :cond_ad

    .line 262
    :try_start_80
    const-string v9, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "closing stream for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_a7} :catch_1ec
    .catchall {:try_start_80 .. :try_end_a7} :catchall_207

    .line 268
    :goto_a7
    :try_start_a7
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 270
    :cond_ad
    monitor-exit v10
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_207

    .line 273
    :try_start_ae
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 274
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bf} :catch_c1

    goto/16 :goto_4

    .line 276
    :catch_c1
    move-exception v5

    .line 277
    .local v5, "ex":Ljava/io/IOException;
    const-string v9, "EpdgConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed closing socket: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 201
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catch_dc
    move-exception v5

    .line 202
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    :try_start_e0
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    if-eqz v9, :cond_f1

    .line 206
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f1} :catch_25f

    .line 214
    :cond_f1
    :goto_f1
    const/16 v9, 0xa

    if-ne v8, v9, :cond_10f

    .line 215
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 216
    const-string v9, "EpdgConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[SIM]Error: can\'t connect native daemon:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_10f
    const-wide/16 v10, 0x1388

    :try_start_111
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_114
    .catch Ljava/lang/InterruptedException; {:try_start_111 .. :try_end_114} :catch_118

    .line 226
    :goto_114
    add-int/lit8 v8, v8, 0x1

    .line 227
    goto/16 :goto_4

    .line 222
    :catch_118
    move-exception v4

    .line 223
    .local v4, "er":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_114

    .line 239
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_11d
    move-exception v9

    :try_start_11e
    monitor-exit v10
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    :try_start_11f
    throw v9
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_120} :catch_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_19c

    .line 256
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catch_120
    move-exception v3

    .line 257
    .local v3, "e":Ljava/io/IOException;
    :try_start_121
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_19c

    .line 259
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 260
    :try_start_12b
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_225

    move-result-object v9

    if-eqz v9, :cond_160

    .line 262
    :try_start_133
    const-string v9, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "closing stream for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_15a} :catch_20a
    .catchall {:try_start_133 .. :try_end_15a} :catchall_225

    .line 268
    :goto_15a
    :try_start_15a
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v11, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v9, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 270
    :cond_160
    monitor-exit v10
    :try_end_161
    .catchall {:try_start_15a .. :try_end_161} :catchall_225

    .line 273
    :try_start_161
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 274
    iget-object v9, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v9}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_172} :catch_174

    goto/16 :goto_4

    .line 276
    :catch_174
    move-exception v5

    .line 277
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v9, "EpdgConnector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed closing socket: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :cond_18f
    if-lez v2, :cond_50

    .line 253
    :try_start_191
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v9}, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->handleSimInput(Ljava/lang/String;)V
    :try_end_19a
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_19a} :catch_120
    .catchall {:try_start_191 .. :try_end_19a} :catchall_19c

    goto/16 :goto_50

    .line 259
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_19c
    move-exception v9

    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$100(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 260
    :try_start_1a4
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_1a9
    .catchall {:try_start_1a4 .. :try_end_1a9} :catchall_242

    move-result-object v11

    if-eqz v11, :cond_1d9

    .line 262
    :try_start_1ac
    const-string v11, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$200(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1d3} :catch_228
    .catchall {:try_start_1ac .. :try_end_1d3} :catchall_242

    .line 268
    :goto_1d3
    :try_start_1d3
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSimOutputStream:Ljava/io/OutputStream;
    invoke-static {v11, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$202(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 270
    :cond_1d9
    monitor-exit v10
    :try_end_1da
    .catchall {:try_start_1d3 .. :try_end_1da} :catchall_242

    .line 273
    :try_start_1da
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_1eb

    .line 274
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgSimReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSimSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$000(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1eb} :catch_245

    .line 278
    :cond_1eb
    :goto_1eb
    throw v9

    .line 264
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catch_1ec
    move-exception v3

    .line 265
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_1ed
    const-string v9, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing output stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a7

    .line 270
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_207
    move-exception v9

    monitor-exit v10
    :try_end_209
    .catchall {:try_start_1ed .. :try_end_209} :catchall_207

    throw v9

    .line 264
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_20a
    move-exception v3

    .line 265
    :try_start_20b
    const-string v9, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing output stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15a

    .line 270
    :catchall_225
    move-exception v9

    monitor-exit v10
    :try_end_227
    .catchall {:try_start_20b .. :try_end_227} :catchall_225

    throw v9

    .line 264
    .end local v3    # "e":Ljava/io/IOException;
    :catch_228
    move-exception v3

    .line 265
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_229
    const-string v11, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d3

    .line 270
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_242
    move-exception v9

    monitor-exit v10
    :try_end_244
    .catchall {:try_start_229 .. :try_end_244} :catchall_242

    throw v9

    .line 276
    :catch_245
    move-exception v5

    .line 277
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1eb

    .line 208
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_25f
    move-exception v9

    goto/16 :goto_f1
.end method
