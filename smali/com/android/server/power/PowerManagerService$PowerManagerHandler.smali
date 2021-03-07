.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3351
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 3352
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3353
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3357
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_d0

    .line 3420
    :cond_a
    :goto_a
    return-void

    .line 3359
    :pswitch_b
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/server/power/PowerManagerService;->isDarkTop(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 3360
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.car.hud.show"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3361
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "show"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3362
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3364
    .end local v0    # "i":Landroid/content/Intent;
    :cond_2e
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    goto :goto_a

    .line 3368
    :pswitch_34
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_a

    .line 3371
    :pswitch_3a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_a

    .line 3374
    :pswitch_40
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_a

    .line 3377
    :pswitch_46
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3378
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3379
    invoke-virtual {p0, v7}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3380
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/power/PowerManagerService;->shouldForceOffExternalDevice(I)Z
    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3381
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setGPSEnable(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3382
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->closeAndBackupWiFiBT()V

    .line 3385
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3386
    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a

    .line 3391
    :pswitch_6f
    const-string v2, "PowerManagerService"

    const-string v3, "MSG_FORCE_EXT_DEVICES_OFF ..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setGPSEnable(Z)V
    invoke-static {v2, v4}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3393
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->closeWiFiBT()V

    goto :goto_a

    .line 3397
    :pswitch_81
    invoke-virtual {p0, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3398
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3399
    invoke-virtual {p0, v6}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 3400
#by boba 07.03.2021
#car_sleep_off_ext_device
#    const-string v2, "ro.car_sleep_off_ext_device"
const-string v2, "persist.car_sleep_off_ext_dev"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3401
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_a

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3402
    const-string v2, "ro.cta"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a8

    .line 3403
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setGPSEnable(Z)V
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;Z)V

    .line 3404
    :cond_a8
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->restoreWiFiBT()V

    .line 3407
    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3408
    const-wide/16 v2, 0xfa0

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 3413
    .end local v1    # "prop":Ljava/lang/String;
    :pswitch_b9
    const-string v2, "PowerManagerService"

    const-string v3, "MSG_FORCE_EXT_DEVICES_ON ..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    const-string v2, "ro.cta"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_a

    .line 3415
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setGPSEnable(Z)V
    invoke-static {v2, v5}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;Z)V

    goto/16 :goto_a

    .line 3357
    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3a
        :pswitch_40
        :pswitch_46
        :pswitch_6f
        :pswitch_81
        :pswitch_b9
        :pswitch_b
    .end packed-switch
.end method
