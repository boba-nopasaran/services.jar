.class Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;
.super Ljava/lang/Thread;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractClientSocketThread"
.end annotation


# static fields
.field static final ACK:Ljava/lang/String; = "ok"


# instance fields
.field private interactClientSocket:Landroid/net/LocalSocket;

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;


# direct methods
.method public constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Landroid/net/LocalSocket;)V
    .registers 4
    .param p2, "interactClientSocket"    # Landroid/net/LocalSocket;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z

    .line 126
    iput-object p2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    .line 127
    return-void
.end method


# virtual methods
.method actionDone()V
    .registers 3

    .prologue
    .line 130
    iget-object v1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z

    .line 132
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public run()V
    .registers 24

    .prologue
    .line 138
    const/16 v16, 0x0

    .line 139
    .local v16, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 140
    .local v17, "os":Ljava/io/OutputStream;
    const-string v11, ""

    .line 143
    .local v11, "IntentString":Ljava/lang/String;
    new-instance v6, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread$1;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;)V

    .line 150
    .local v6, "br":Landroid/content/BroadcastReceiver;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 151
    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 152
    .local v15, "inputStreamReader":Ljava/io/InputStreamReader;
    const/16 v2, 0x1000

    new-array v12, v2, [C

    .line 153
    .local v12, "buf":[C
    const/16 v19, -0x1

    .line 155
    .local v19, "readBytes":I
    invoke-virtual {v15, v12}, Ljava/io/InputStreamReader;->read([C)I

    move-result v19

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_9d

    .line 156
    new-instance v20, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v0, v12, v2, v1}, Ljava/lang/String;-><init>([CII)V

    .line 157
    .local v20, "request":Ljava/lang/String;
    const-string v2, "ActivityManagerPlusConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive String from client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v2, "ACTION_PREBOOT_IPO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 160
    const/4 v2, 0x1

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$302(Z)Z

    .line 161
    invoke-static {}, Lcom/android/internal/app/ShutdownManager;->getInstance()Lcom/android/internal/app/ShutdownManager;

    move-result-object v21

    .line 162
    .local v21, "stMgr":Lcom/android/internal/app/ShutdownManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ShutdownManager;->preRestoreStates(Landroid/content/Context;)V

    .line 163
    const-string v11, "android.intent.action.ACTION_PREBOOT_IPO"

    .line 172
    .end local v21    # "stMgr":Lcom/android/internal/app/ShutdownManager;
    :goto_6e
    const-string v2, "ActivityManagerPlusConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent broadcast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$400(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 180
    .end local v20    # "request":Ljava/lang/String;
    :cond_9d
    const/4 v14, 0x0

    .line 181
    .local v14, "i":I
    const/16 v22, 0xc8

    .line 182
    .local v22, "wait_time":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_a5} :catch_125
    .catchall {:try_start_d .. :try_end_a5} :catchall_1d1

    .line 183
    :goto_a5
    :try_start_a5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDone:Z
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_122

    if-nez v2, :cond_147

    .line 185
    :try_start_ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_b4
    .catch Ljava/lang/InterruptedException; {:try_start_ab .. :try_end_b4} :catch_ff
    .catchall {:try_start_ab .. :try_end_b4} :catchall_122

    .line 186
    add-int/lit8 v14, v14, 0x1

    goto :goto_a5

    .line 164
    .end local v14    # "i":I
    .end local v22    # "wait_time":I
    .restart local v20    # "request":Ljava/lang/String;
    :cond_b7
    :try_start_b7
    const-string v2, "ACTION_BOOT_IPO"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 165
    const-string v11, "android.intent.action.ACTION_BOOT_IPO"

    goto :goto_6e

    .line 167
    :cond_c4
    const-string v2, "ActivityManagerPlusConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized intent request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_de} :catch_125
    .catchall {:try_start_b7 .. :try_end_de} :catchall_1d1

    .line 210
    if-eqz v16, :cond_e3

    .line 212
    :try_start_e0
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_f0

    .line 217
    :cond_e3
    :goto_e3
    if-eqz v17, :cond_e8

    .line 219
    :try_start_e5
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_f5

    .line 225
    :cond_e8
    :goto_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_ef} :catch_fa

    .line 230
    .end local v12    # "buf":[C
    .end local v15    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v19    # "readBytes":I
    .end local v20    # "request":Ljava/lang/String;
    :goto_ef
    return-void

    .line 213
    .restart local v12    # "buf":[C
    .restart local v15    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v19    # "readBytes":I
    .restart local v20    # "request":Ljava/lang/String;
    :catch_f0
    move-exception v13

    .line 214
    .local v13, "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e3

    .line 220
    .end local v13    # "e":Ljava/io/IOException;
    :catch_f5
    move-exception v13

    .line 221
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    .line 226
    .end local v13    # "e":Ljava/io/IOException;
    :catch_fa
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ef

    .line 188
    .end local v13    # "e":Ljava/io/IOException;
    .end local v20    # "request":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v22    # "wait_time":I
    :catch_ff
    move-exception v13

    .line 189
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_100
    const-string v2, "ActivityManagerPlusConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wait "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but interrupted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_a5

    .line 193
    .end local v13    # "e":Ljava/lang/InterruptedException;
    :catchall_122
    move-exception v2

    monitor-exit v3
    :try_end_124
    .catchall {:try_start_100 .. :try_end_124} :catchall_122

    :try_start_124
    throw v2
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_125} :catch_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_1d1

    .line 206
    .end local v12    # "buf":[C
    .end local v14    # "i":I
    .end local v15    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v19    # "readBytes":I
    .end local v22    # "wait_time":I
    :catch_125
    move-exception v13

    .line 207
    .local v13, "e":Ljava/io/IOException;
    :try_start_126
    const-string v2, "ActivityManagerPlusConnection"

    const-string v3, "transfer data error"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_130
    .catchall {:try_start_126 .. :try_end_130} :catchall_1d1

    .line 210
    if-eqz v16, :cond_135

    .line 212
    :try_start_132
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_1c5

    .line 217
    :cond_135
    :goto_135
    if-eqz v17, :cond_13a

    .line 219
    :try_start_137
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_1cb

    .line 225
    :cond_13a
    :goto_13a
    :try_start_13a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_141} :catch_142

    goto :goto_ef

    .line 226
    :catch_142
    move-exception v13

    .line 227
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ef

    .line 193
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v12    # "buf":[C
    .restart local v14    # "i":I
    .restart local v15    # "inputStreamReader":Ljava/io/InputStreamReader;
    .restart local v19    # "readBytes":I
    .restart local v22    # "wait_time":I
    :cond_147
    :try_start_147
    monitor-exit v3
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_122

    .line 194
    :try_start_148
    const-string v2, "ActivityManagerPlusConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " completed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-double v4, v14

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    mul-double/2addr v4, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 197
    const/4 v2, 0x0

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->sBooting:Z
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$302(Z)Z

    .line 201
    :cond_180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 202
    new-instance v18, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .local v18, "osWriter":Ljava/io/OutputStreamWriter;
    const-string v2, "ok"

    const/4 v3, 0x0

    const-string v4, "ok"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 204
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_1a2} :catch_125
    .catchall {:try_start_148 .. :try_end_1a2} :catchall_1d1

    .line 210
    if-eqz v16, :cond_1a7

    .line 212
    :try_start_1a4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1bb

    .line 217
    :cond_1a7
    :goto_1a7
    if-eqz v17, :cond_1ac

    .line 219
    :try_start_1a9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1c0

    .line 225
    :cond_1ac
    :goto_1ac
    :try_start_1ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1ac .. :try_end_1b3} :catch_1b5

    goto/16 :goto_ef

    .line 226
    :catch_1b5
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_ef

    .line 213
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1bb
    move-exception v13

    .line 214
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a7

    .line 220
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1c0
    move-exception v13

    .line 221
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ac

    .line 213
    .end local v12    # "buf":[C
    .end local v14    # "i":I
    .end local v15    # "inputStreamReader":Ljava/io/InputStreamReader;
    .end local v18    # "osWriter":Ljava/io/OutputStreamWriter;
    .end local v19    # "readBytes":I
    .end local v22    # "wait_time":I
    :catch_1c5
    move-exception v13

    .line 214
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_135

    .line 220
    :catch_1cb
    move-exception v13

    .line 221
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13a

    .line 210
    .end local v13    # "e":Ljava/io/IOException;
    :catchall_1d1
    move-exception v2

    if-eqz v16, :cond_1d7

    .line 212
    :try_start_1d4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1d7} :catch_1e4

    .line 217
    :cond_1d7
    :goto_1d7
    if-eqz v17, :cond_1dc

    .line 219
    :try_start_1d9
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1dc} :catch_1e9

    .line 225
    :cond_1dc
    :goto_1dc
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->interactClientSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_1e3
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1e3} :catch_1ee

    .line 228
    :goto_1e3
    throw v2

    .line 213
    :catch_1e4
    move-exception v13

    .line 214
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d7

    .line 220
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1e9
    move-exception v13

    .line 221
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1dc

    .line 226
    .end local v13    # "e":Ljava/io/IOException;
    :catch_1ee
    move-exception v13

    .line 227
    .restart local v13    # "e":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e3
.end method
