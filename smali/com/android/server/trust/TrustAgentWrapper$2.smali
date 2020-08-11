.class Lcom/android/server/trust/TrustAgentWrapper$2;
.super Landroid/os/Handler;
.source "TrustAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e0

    .line 190
    :cond_5
    :goto_5
    return-void

    .line 111
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_31

    .line 112
    const-string v0, "TrustAgentWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Agent is not connected, cannot grant trust: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 116
    :cond_31
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 118
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_d3

    const/4 v6, 0x1

    .line 119
    .local v6, "initiatedByUser":Z
    :goto_45
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 120
    .local v4, "durationMs":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_99

    .line 122
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d6

    .line 127
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMaximumTimeToLock:J
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$400(Lcom/android/server/trust/TrustAgentWrapper;)J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 135
    .local v8, "duration":J
    :goto_6b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v10, v0, v8

    .line 136
    .local v10, "expiration":J
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$600(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$700(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v13, 0x10000000

    invoke-static {v1, v2, v3, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$502(Lcom/android/server/trust/TrustAgentWrapper;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 138
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$800(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mAlarmPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$500(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 141
    .end local v8    # "duration":J
    .end local v10    # "expiration":J
    :cond_99
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d8

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$300(Lcom/android/server/trust/TrustAgentWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_bf
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/trust/TrustArchive;->logGrantTrust(ILandroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 144
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IZ)V

    goto/16 :goto_5

    .line 118
    .end local v4    # "durationMs":J
    .end local v6    # "initiatedByUser":Z
    :cond_d3
    const/4 v6, 0x0

    goto/16 :goto_45

    .line 133
    .restart local v4    # "durationMs":J
    .restart local v6    # "initiatedByUser":Z
    :cond_d6
    move-wide v8, v4

    .restart local v8    # "duration":J
    goto :goto_6b

    .line 141
    .end local v8    # "duration":J
    :cond_d8
    const/4 v3, 0x0

    goto :goto_bf

    .line 148
    .end local v4    # "durationMs":J
    .end local v6    # "initiatedByUser":Z
    :pswitch_da
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logTrustTimeout(ILandroid/content/ComponentName;)V

    .line 149
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # invokes: Lcom/android/server/trust/TrustAgentWrapper;->onTrustTimeout()V
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1100(Lcom/android/server/trust/TrustAgentWrapper;)V

    .line 152
    :pswitch_f6
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 153
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 154
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$100(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_128

    .line 156
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustArchive;->logRevokeTrust(ILandroid/content/ComponentName;)V

    .line 158
    :cond_128
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IZ)V

    goto/16 :goto_5

    .line 161
    :pswitch_13a
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {v0}, Lcom/android/server/trust/TrustAgentWrapper;->destroy()V

    .line 162
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->resetAgent(Landroid/content/ComponentName;I)V

    goto/16 :goto_5

    .line 165
    :pswitch_156
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/IBinder;

    .line 166
    .local v12, "token":Landroid/os/IBinder;
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_18f

    const/4 v7, 0x1

    .line 167
    .local v7, "result":Z
    :goto_15f
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1200(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v12, :cond_5

    .line 168
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mSetTrustAgentFeaturesToken:Landroid/os/IBinder;
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1202(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 169
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1300(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v7, :cond_5

    .line 172
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustDisabledByDpm:Z
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$1302(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 173
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IZ)V

    goto/16 :goto_5

    .line 166
    .end local v7    # "result":Z
    :cond_18f
    const/4 v7, 0x0

    goto :goto_15f

    .line 181
    .end local v12    # "token":Landroid/os/IBinder;
    :pswitch_191
    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1de

    const/4 v0, 0x1

    :goto_198
    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v1, v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1402(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 182
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v0

    if-nez v0, :cond_1af

    .line 183
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$202(Lcom/android/server/trust/TrustAgentWrapper;Z)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/trust/TrustAgentWrapper;->mMessage:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$302(Lcom/android/server/trust/TrustAgentWrapper;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 186
    :cond_1af
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/server/trust/TrustAgentWrapper;->access$000(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mManagingTrust:Z
    invoke-static {v3}, Lcom/android/server/trust/TrustAgentWrapper;->access$1400(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/trust/TrustArchive;->logManagingTrust(ILandroid/content/ComponentName;Z)V

    .line 187
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->access$1000(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$2;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    # getter for: Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I
    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->access$900(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IZ)V

    goto/16 :goto_5

    .line 181
    :cond_1de
    const/4 v0, 0x0

    goto :goto_198

    .line 109
    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f6
        :pswitch_da
        :pswitch_13a
        :pswitch_156
        :pswitch_191
    .end packed-switch
.end method
