.class Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrBroadcastQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrBroadcastQueue"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrderedBroadcastsPid()I
    .registers 5

    .prologue
    .line 157
    const/4 v1, -0x1

    .line 158
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_20

    .line 159
    iget-object v2, p0, Lcom/android/server/am/BroadcastQueue$AnrBroadcastQueue;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 160
    .local v0, "br":Lcom/android/server/am/BroadcastRecord;
    if-eqz v0, :cond_20

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_20

    .line 161
    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 164
    .end local v0    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_20
    return v1
.end method
