.class Lcom/mediatek/rns/RnsServiceImpl$4;
.super Landroid/telephony/PhoneStateListener;
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
    .line 350
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 7
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/16 v4, -0x74

    .line 354
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v0

    .line 355
    .local v0, "newSignalRsrp":I
    if-lez v0, :cond_9

    .line 373
    :cond_8
    :goto_8
    return-void

    .line 358
    :cond_9
    const-string v1, "RnsServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Signal Rsrp is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-lt v0, v4, :cond_2b

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v1

    if-le v1, v4, :cond_35

    :cond_2b
    if-gt v0, v4, :cond_73

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$1600(Lcom/mediatek/rns/RnsServiceImpl;)I

    move-result v1

    if-lt v1, v4, :cond_73

    .line 361
    :cond_35
    monitor-enter p0

    .line 362
    :try_start_36
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1, v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 363
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_70

    .line 364
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isEpdgImsConnected:Z
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$600(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->isLteImsConnected:Z
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$400(Lcom/mediatek/rns/RnsServiceImpl;)Z

    move-result v1

    if-eqz v1, :cond_4e

    if-gt v0, v4, :cond_8

    .line 365
    :cond_4e
    const-string v1, "RnsServiceImpl"

    const-string v2, "Perform handover"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # getter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandler:Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
    invoke-static {v2}, Lcom/mediatek/rns/RnsServiceImpl;->access$200(Lcom/mediatek/rns/RnsServiceImpl;)Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;

    move-result-object v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 363
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1

    .line 370
    :cond_73
    monitor-enter p0

    .line 371
    :try_start_74
    iget-object v1, p0, Lcom/mediatek/rns/RnsServiceImpl$4;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mLastSignalRsrp:I
    invoke-static {v1, v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$1602(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 372
    monitor-exit p0

    goto :goto_8

    :catchall_7b
    move-exception v1

    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_7b

    throw v1
.end method
