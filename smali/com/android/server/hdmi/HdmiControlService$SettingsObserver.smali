.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 494
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 495
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x1

    .line 500
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "option":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    .line 502
    .local v0, "enabled":Z
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_92

    :cond_13
    :goto_13
    packed-switch v2, :pswitch_data_a8

    .line 525
    :cond_16
    :goto_16
    return-void

    .line 502
    :sswitch_17
    const-string v4, "hdmi_control_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v2, 0x0

    goto :goto_13

    :sswitch_21
    const-string v4, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v2, v3

    goto :goto_13

    :sswitch_2b
    const-string v4, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v2, 0x2

    goto :goto_13

    :sswitch_35
    const-string v4, "mhl_input_switching_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v2, 0x3

    goto :goto_13

    :sswitch_3f
    const-string v4, "mhl_power_charge_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v2, 0x4

    goto :goto_13

    .line 504
    :pswitch_49
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    goto :goto_16

    .line 507
    :pswitch_4f
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 508
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 510
    :cond_60
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Z)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(II)V

    goto :goto_16

    .line 513
    :pswitch_6a
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 514
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoDeviceOff(Z)V

    goto :goto_16

    .line 519
    :pswitch_7c
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    goto :goto_16

    .line 522
    :pswitch_82
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    const/16 v3, 0x66

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Z)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto :goto_16

    .line 502
    :sswitch_data_92
    .sparse-switch
        -0x77ca2448 -> :sswitch_17
        -0x4b40ad13 -> :sswitch_35
        -0x34cb9782 -> :sswitch_3f
        0x2b4f3cc8 -> :sswitch_21
        0x610a030f -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_49
        :pswitch_4f
        :pswitch_6a
        :pswitch_7c
        :pswitch_82
    .end packed-switch
.end method
