.class public Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;
.super Ljava/lang/Object;
.source "ActivityStackListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DumpHistoryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackListener;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackListener;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    # getter for: Lcom/android/server/am/ActivityStackListener;->mRun:Z
    invoke-static {v0}, Lcom/android/server/am/ActivityStackListener;->access$000(Lcom/android/server/am/ActivityStackListener;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 23
    iget-object v0, p0, Lcom/android/server/am/ActivityStackListener$DumpHistoryThread;->this$0:Lcom/android/server/am/ActivityStackListener;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackListener;->dumpHistory()V

    goto :goto_0

    .line 25
    :cond_e
    return-void
.end method
