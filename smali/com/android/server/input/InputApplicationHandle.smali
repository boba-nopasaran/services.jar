.class public final Lcom/android/server/input/InputApplicationHandle;
.super Ljava/lang/Object;
.source "InputApplicationHandle.java"


# instance fields
.field public final appWindowToken:Ljava/lang/Object;

.field public dispatchingTimeoutNanos:J

.field public name:Ljava/lang/String;

.field public pid:I

.field private ptr:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "appWindowToken"    # Ljava/lang/Object;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private native nativeDispose()V
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/input/InputApplicationHandle;->nativeDispose()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 59
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void

    .line 59
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
