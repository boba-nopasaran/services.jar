.class Lcom/mediatek/mom/m;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 54
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    .line 77
    const-string v0, "MobileManagerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_1f
    :pswitch_1f
    return-void

    .line 62
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/mom/ListenerTriggerBase;

    .line 63
    monitor-enter v0

    .line 65
    :try_start_25
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 67
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->timeouted()V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    const-string v1, "MobileManagerHandler"

    const-string v2, "onTriggerListenerTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v0}, Lcom/mediatek/mom/ListenerTriggerBase;->onTriggerListenerTimeout()V

    .line 74
    :cond_3b
    monitor-exit v0

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw v1

    .line 58
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method
