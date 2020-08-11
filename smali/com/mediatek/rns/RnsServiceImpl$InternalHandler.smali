.class Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;
.super Landroid/os/Handler;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/rns/RnsServiceImpl;


# direct methods
.method public constructor <init>(Lcom/mediatek/rns/RnsServiceImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    .line 1174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1175
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    iget v1, p1, Landroid/os/Message;->what:I

    # setter for: Lcom/mediatek/rns/RnsServiceImpl;->mHandoverEvent:I
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2102(Lcom/mediatek/rns/RnsServiceImpl;I)I

    .line 1180
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_56

    .line 1211
    const-string v0, "RnsServiceImpl"

    const-string v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :goto_13
    :sswitch_13
    return-void

    .line 1182
    :sswitch_14
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiRssiUpdate(I)V
    invoke-static {v0, v1}, Lcom/mediatek/rns/RnsServiceImpl;->access$2200(Lcom/mediatek/rns/RnsServiceImpl;I)V

    goto :goto_13

    .line 1187
    :sswitch_1c
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1188
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventApplyWifiCallSettings()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$2300(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_13

    .line 1191
    :sswitch_27
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiDisconnect()V

    goto :goto_13

    .line 1194
    :sswitch_2d
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1195
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleEventRatConnectivityChange()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$2400(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_13

    .line 1198
    :sswitch_38
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventWifiStateChangedAction()V

    goto :goto_13

    .line 1201
    :sswitch_3e
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleDefaultPdnRequest()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$500(Lcom/mediatek/rns/RnsServiceImpl;)V

    .line 1202
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    invoke-virtual {v0}, Lcom/mediatek/rns/RnsServiceImpl;->handleEventImsOverLteSettings()V

    goto :goto_13

    .line 1205
    :sswitch_49
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisabledExpired()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$2500(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_13

    .line 1208
    :sswitch_4f
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$InternalHandler;->this$0:Lcom/mediatek/rns/RnsServiceImpl;

    # invokes: Lcom/mediatek/rns/RnsServiceImpl;->handleWifiDisableAction()V
    invoke-static {v0}, Lcom/mediatek/rns/RnsServiceImpl;->access$2600(Lcom/mediatek/rns/RnsServiceImpl;)V

    goto :goto_13

    .line 1180
    nop

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_13
        0xa -> :sswitch_1c
        0x64 -> :sswitch_27
        0x65 -> :sswitch_4f
        0x66 -> :sswitch_49
        0x3e8 -> :sswitch_2d
        0x2710 -> :sswitch_38
        0x186a0 -> :sswitch_3e
    .end sparse-switch
.end method
