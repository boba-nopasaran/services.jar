.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Context;ZLjava/lang/String;)V
    .registers 6
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 54
    :try_start_0
    const-string v1, "MasterClear"

    const-string v2, "Call mtehod: rebootWipeUserData"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 56
    const-string v1, "MasterClear"

    const-string v2, "Still running after master clear?!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_18
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_17} :catch_21

    .line 62
    :goto_17
    return-void

    .line 57
    :catch_18
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catch_21
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "MasterClear"

    const-string v2, "Can\'t perform master clear/factory reset"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
