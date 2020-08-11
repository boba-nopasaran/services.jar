.class Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V
    .registers 2

    .prologue
    .line 783
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 787
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 789
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.via.bypass.action.setfunction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_54

    .line 790
    const-string v7, "com.via.bypass.enable_bypass"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 791
    .local v3, "enablebypass":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 792
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const-string v8, "via_bypass"

    invoke-virtual {v7, v8, v10}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;Z)V

    .line 841
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_4d
    :goto_4d
    return-void

    .line 794
    .restart local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_4e
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->closeBypassFunction()V

    goto :goto_4d

    .line 796
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.via.bypass.action.settetherfunction"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 797
    const-string v7, "com.via.bypass.enable_bypass"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 798
    .restart local v3    # "enablebypass":Ljava/lang/Boolean;
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 800
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 801
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Enable the byass with Tethering"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # setter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSetBypassWithTether:Z
    invoke-static {v7, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$2202(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Z)Z

    .line 803
    invoke-virtual {v2, v11}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_4d

    .line 805
    :cond_8c
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disable the byass with Tethering"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-virtual {v7, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    .line 807
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    goto :goto_4d

    .line 809
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "enablebypass":Ljava/lang/Boolean;
    :cond_9e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.via.bypass.action.setbypass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    .line 810
    const-string v7, "com.via.bypass.bypass_code"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 811
    .local v1, "bypasscode":I
    if-ltz v1, :cond_c1

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v7

    if-gt v1, v7, :cond_c1

    .line 812
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypassMode(I)V
    invoke-static {v7, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V

    goto :goto_4d

    .line 814
    :cond_c1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v9

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V

    goto/16 :goto_4d

    .line 816
    .end local v1    # "bypasscode":I
    :cond_d2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.via.bypass.action.getbypass"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 817
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.via.bypass.action.getbypass_result"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v5, "reintent":Landroid/content/Intent;
    const-string v7, "com.via.bypass.bypass_code"

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4d

    .line 820
    .end local v5    # "reintent":Landroid/content/Intent;
    :cond_ff
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "via.cdma.action.ets.dev.changed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 821
    const-string v7, "set.ets.dev.result"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 823
    .local v6, "result":Z
    if-eqz v6, :cond_134

    .line 825
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v0

    .line 830
    .local v0, "bypass":I
    :goto_119
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0xe

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 831
    .local v4, "m":Landroid/os/Message;
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 832
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v7, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_4d

    .line 828
    .end local v0    # "bypass":I
    .end local v4    # "m":Landroid/os/Message;
    :cond_134
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I

    move-result v0

    .restart local v0    # "bypass":I
    goto :goto_119

    .line 833
    .end local v0    # "bypass":I
    .end local v6    # "result":Z
    :cond_13b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.RADIO_AVAILABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 834
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 835
    new-instance v5, Landroid/content/Intent;

    const-string v7, "via.cdma.action.set.ets.dev"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 836
    .restart local v5    # "reintent":Landroid/content/Intent;
    const-string v7, "via.cdma.extral.ets.dev"

    invoke-virtual {v5, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;->this$2:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v7, v7, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4d
.end method
