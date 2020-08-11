.class Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;
.super Landroid/database/ContentObserver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsOverLteSettingsObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWhat:I


# direct methods
.method constructor <init>(Landroid/os/Handler;I)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    .line 284
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 285
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 286
    iput p2, p0, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->mWhat:I

    .line 287
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "ims_switch"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl$ImsOverLteSettingsObserver;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-void
.end method
