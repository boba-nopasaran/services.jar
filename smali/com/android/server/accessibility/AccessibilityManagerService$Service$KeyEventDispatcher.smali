.class final Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyEventDispatcher"
.end annotation


# static fields
.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .registers 5

    .prologue
    .line 2919
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2925
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    const-class v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    :goto_17
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_17
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .param p2, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 2919
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    return-void
.end method

.method private addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2974
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v1

    .line 2975
    .local v1, "sequence":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->obtainPendingEventLocked(Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    invoke-static {v2, p1, p2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/KeyEvent;II)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 2976
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2977
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2978
    return-object v0
.end method

.method private cancelAllPendingEventsLocked()V
    .registers 4

    .prologue
    .line 3024
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    if-eqz v1, :cond_1b

    .line 3025
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iget v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 3026
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    .line 3027
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3029
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    goto :goto_0

    .line 3031
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_1b
    return-void
.end method

.method private finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    .registers 4
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .prologue
    .line 3002
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    if-nez v0, :cond_b

    .line 3003
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->policyFlags:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V

    .line 3007
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    .line 3008
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->recyclePendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V
    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    .line 3009
    return-void
.end method

.method private removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    .registers 6
    .param p1, "sequence"    # I

    .prologue
    const/4 v2, 0x0

    .line 2982
    const/4 v1, 0x0

    .line 2983
    .local v1, "previous":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2985
    .local v0, "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :goto_4
    if-eqz v0, :cond_1c

    .line 2986
    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    if-ne v3, p1, :cond_18

    .line 2987
    if-eqz v1, :cond_13

    .line 2988
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2992
    :goto_10
    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 2998
    .end local v0    # "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :goto_12
    return-object v0

    .line 2990
    .restart local v0    # "current":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :cond_13
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mPendingEvents:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    goto :goto_10

    .line 2995
    :cond_18
    move-object v1, v0

    .line 2996
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    goto :goto_4

    :cond_1c
    move-object v0, v2

    .line 2998
    goto :goto_12
.end method

.method private sendKeyEventToInputFilter(Landroid/view/KeyEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, 0x0

    .line 3015
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_a

    .line 3016
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3018
    :cond_a
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p2, v0

    .line 3019
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3021
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 3

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2966
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->cancelAllPendingEventsLocked()V

    .line 2967
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_15

    .line 2968
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 2970
    :cond_15
    monitor-exit v1

    .line 2971
    return-void

    .line 2970
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 2933
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2934
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->addPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v1

    .line 2935
    .local v1, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2c

    .line 2937
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2939
    .local v0, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2945
    :try_start_20
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->event:Landroid/view/KeyEvent;

    iget v5, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-interface {v3, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onKeyEvent(Landroid/view/KeyEvent;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2f

    .line 2949
    :goto_2b
    return-void

    .line 2935
    .end local v0    # "message":Landroid/os/Message;
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3

    .line 2946
    .restart local v0    # "message":Landroid/os/Message;
    .restart local v1    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catch_2f
    move-exception v2

    .line 2947
    .local v2, "re":Landroid/os/RemoteException;
    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->sequence:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->setOnKeyEventResult(ZI)V

    goto :goto_2b
.end method

.method public setOnKeyEventResult(ZI)V
    .registers 7
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 2952
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2953
    :try_start_9
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->removePendingEventLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    move-result-object v0

    .line 2954
    .local v0, "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    if-eqz v0, :cond_1c

    .line 2955
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->this$1:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2958
    iput-boolean p1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;->handled:Z

    .line 2959
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$KeyEventDispatcher;->finishPendingEventLocked(Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;)V

    .line 2961
    :cond_1c
    monitor-exit v2

    .line 2962
    return-void

    .line 2961
    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1
.end method
