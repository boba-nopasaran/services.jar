.class Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;
.super Ljava/lang/Thread;
.source "ActivityManagerPlusConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerSocketThread"
.end annotation


# instance fields
.field private serverSocket:Landroid/net/LocalServerSocket;

.field final synthetic this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;


# direct methods
.method private constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;
    .param p2, "x1"    # Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->stopRun()V

    return-void
.end method

.method private stopRun()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v0, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 79
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    const/4 v3, 0x1

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v2, v3}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 85
    new-instance v2, Landroid/net/LocalServerSocket;

    const-string v3, "com.mediatek.ipomanager.ActivityManagerPlusConnection"

    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_49

    .line 93
    :cond_10
    :goto_10
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$200(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 94
    const-string v2, "ActivityManagerPlusConnection"

    const-string v3, "wait for new client coming!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_1f
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    .line 97
    .local v1, "interactClientSocket":Landroid/net/LocalSocket;
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # getter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$200(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 98
    const-string v2, "ActivityManagerPlusConnection"

    const-string v3, "new client coming!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v2, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;

    iget-object v3, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    invoke-direct {v2, v3, v1}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;-><init>(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Landroid/net/LocalSocket;)V

    invoke-virtual {v2}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$InteractClientSocketThread;->start()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3e} :catch_3f

    goto :goto_10

    .line 102
    .end local v1    # "interactClientSocket":Landroid/net/LocalSocket;
    :catch_3f
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v2, v4}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    goto :goto_10

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catch_49
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->this$0:Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;

    # setter for: Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->mProcessing:Z
    invoke-static {v2, v4}, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;->access$202(Lcom/mediatek/ipomanager/ActivityManagerPlusConnection;Z)Z

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    :goto_52
    return-void

    .line 108
    :cond_53
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_5c

    .line 110
    :try_start_57
    iget-object v2, p0, Lcom/mediatek/ipomanager/ActivityManagerPlusConnection$ServerSocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_64

    .line 115
    :cond_5c
    :goto_5c
    const-string v2, "ActivityManagerPlusConnection"

    const-string v3, "ServerSocketThread exit"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 111
    :catch_64
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c
.end method
