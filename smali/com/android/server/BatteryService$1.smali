.class Lcom/android/server/BatteryService$1;
.super Landroid/os/Handler;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Z)V
    .registers 3
    .param p2, "x0"    # Z

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v5, 0x4000000

    const/16 v4, 0x6f

    .line 170
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_60

    .line 172
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    const-string v2, "sys.car.acc"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$102(Lcom/android/server/BatteryService;I)I

    .line 176
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)I

    move-result v1

    if-nez v1, :cond_61

    .line 177
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v2

    # setter for: Lcom/android/server/BatteryService;->mLastPlugType:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;I)I

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->sendIntentLocked()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)V

    .line 194
    .end local v0    # "statusIntent":Landroid/content/Intent;
    :cond_55
    :goto_55
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    :cond_60
    return-void

    .line 184
    :cond_61
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastPlugType:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eqz v1, :cond_55

    .line 185
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)I

    move-result v2

    # setter for: Lcom/android/server/BatteryService;->mLastPlugType:I
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$202(Lcom/android/server/BatteryService;I)I

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0    # "statusIntent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    iget-object v1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->sendIntentLocked()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)V

    goto :goto_55
.end method
