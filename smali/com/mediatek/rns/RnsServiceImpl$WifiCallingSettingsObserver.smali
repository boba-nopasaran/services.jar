.class Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;
.super Landroid/database/ContentObserver;
.source "RnsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/rns/RnsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiCallingSettingsObserver"
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
    .line 247
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 248
    iput-object p1, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->mHandler:Landroid/os/Handler;

    .line 249
    iput p2, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->mWhat:I

    .line 250
    return-void
.end method


# virtual methods
.method observe(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "when_to_make_wifi_calls"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    const-string v1, "user_selected_wfc_preference"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 262
    const-string v1, "rns_wifi_rove_in_rssi"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    const-string v1, "rns_wifi_rove_out_rssi"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 270
    return-void
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/mediatek/rns/RnsServiceImpl$WifiCallingSettingsObserver;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method
