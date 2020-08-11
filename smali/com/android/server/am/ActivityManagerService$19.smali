.class Lcom/android/server/am/ActivityManagerService$19;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$report:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;

.field final synthetic val$sb_pid:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/StringBuilder;)V
    .registers 10
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 12946
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$19;->val$report:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$19;->val$logFile:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dropboxTag:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb_pid:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 12949
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$report:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 12950
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$report:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12952
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$logFile:Ljava/io/File;

    if-eqz v8, :cond_1f

    .line 12954
    :try_start_10
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$logFile:Ljava/io/File;

    const/high16 v10, 0x40000

    const-string v11, "\n\n[[TRUNCATED]]"

    invoke-static {v9, v10, v11}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_12c

    .line 12960
    :cond_1f
    :goto_1f
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v8, :cond_32

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v8, v8, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v8, :cond_32

    .line 12961
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v9, v9, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12964
    :cond_32
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logcat_for_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 12965
    .local v7, "setting":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v7, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 12966
    .local v4, "lines":I
    if-lez v4, :cond_ed

    .line 12967
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12970
    const/4 v2, 0x0

    .line 12972
    .local v2, "input":Ljava/io/InputStreamReader;
    :try_start_5d
    new-instance v8, Ljava/lang/ProcessBuilder;

    const/16 v9, 0xd

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/logcat"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-v"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "time"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "events"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "system"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "main"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "-b"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "crash"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "-t"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_b6} :catch_15f
    .catchall {:try_start_5d .. :try_end_b6} :catchall_151

    move-result-object v5

    .line 12977
    .local v5, "logcat":Ljava/lang/Process;
    :try_start_b7
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_be} :catch_164
    .catchall {:try_start_b7 .. :try_end_be} :catchall_151

    .line 12978
    :goto_be
    :try_start_be
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c5} :catch_161
    .catchall {:try_start_be .. :try_end_c5} :catchall_151

    .line 12979
    :goto_c5
    :try_start_c5
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_ce} :catch_15f
    .catchall {:try_start_c5 .. :try_end_ce} :catchall_151

    .line 12982
    .end local v2    # "input":Ljava/io/InputStreamReader;
    .local v3, "input":Ljava/io/InputStreamReader;
    const/16 v8, 0x2000

    :try_start_d0
    new-array v0, v8, [C

    .line 12983
    .local v0, "buf":[C
    :goto_d2
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "num":I
    if-lez v6, :cond_149

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_de} :catch_df
    .catchall {:try_start_d0 .. :try_end_de} :catchall_15c

    goto :goto_d2

    .line 12984
    .end local v0    # "buf":[C
    .end local v6    # "num":I
    :catch_df
    move-exception v1

    move-object v2, v3

    .line 12985
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :goto_e1
    :try_start_e1
    const-string v8, "ActivityManager"

    const-string v9, "Error running logcat"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_151

    .line 12987
    if-eqz v2, :cond_ed

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_158

    .line 12992
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "input":Ljava/io/InputStreamReader;
    :cond_ed
    :goto_ed
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dbox:Landroid/os/DropBoxManager;

    if-eqz v8, :cond_108

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_108

    .line 12993
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dropboxTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 12995
    :cond_108
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    if-eqz v8, :cond_12b

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mNotTargetException:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v8

    if-eqz v8, :cond_12b

    .line 12996
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$19;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/aee/ExceptionLog;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$19;->val$dropboxTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$19;->val$sb_pid:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lcom/mediatek/aee/ExceptionLog;->handle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12999
    :cond_12b
    return-void

    .line 12956
    .end local v4    # "lines":I
    .end local v7    # "setting":Ljava/lang/String;
    :catch_12c
    move-exception v1

    .line 12957
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerService$19;->val$logFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 12987
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buf":[C
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "lines":I
    .restart local v5    # "logcat":Ljava/lang/Process;
    .restart local v6    # "num":I
    .restart local v7    # "setting":Ljava/lang/String;
    :cond_149
    if-eqz v3, :cond_ed

    :try_start_14b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_14f

    goto :goto_ed

    :catch_14f
    move-exception v8

    goto :goto_ed

    .end local v0    # "buf":[C
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .end local v5    # "logcat":Ljava/lang/Process;
    .end local v6    # "num":I
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    :catchall_151
    move-exception v8

    :goto_152
    if-eqz v2, :cond_157

    :try_start_154
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_157
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_157} :catch_15a

    :cond_157
    :goto_157
    throw v8

    .restart local v1    # "e":Ljava/io/IOException;
    :catch_158
    move-exception v8

    goto :goto_ed

    .end local v1    # "e":Ljava/io/IOException;
    :catch_15a
    move-exception v9

    goto :goto_157

    .end local v2    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catchall_15c
    move-exception v8

    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "input":Ljava/io/InputStreamReader;
    goto :goto_152

    .line 12984
    .end local v5    # "logcat":Ljava/lang/Process;
    :catch_15f
    move-exception v1

    goto :goto_e1

    .line 12978
    .restart local v5    # "logcat":Ljava/lang/Process;
    :catch_161
    move-exception v8

    goto/16 :goto_c5

    .line 12977
    :catch_164
    move-exception v8

    goto/16 :goto_be
.end method
