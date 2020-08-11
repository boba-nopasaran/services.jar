.class Lcom/mediatek/audioprofile/AudioProfileService$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/audioprofile/AudioProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileService;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileService;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerModeChanged(I)V
    .registers 9
    .param p1, "newRingerMode"    # I

    .prologue
    const/4 v6, 0x0

    .line 223
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 224
    .local v1, "ringerMode":I
    if-eq v1, p1, :cond_2f

    .line 225
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode is not latest: new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", latest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2f
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$100(Lcom/mediatek/audioprofile/AudioProfileService;)I

    move-result v3

    if-ne v1, v3, :cond_50

    .line 229
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged with same ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_4f
    :goto_4f
    return-void

    .line 231
    :cond_50
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # setter for: Lcom/mediatek/audioprofile/AudioProfileService;->mRingerMode:I
    invoke-static {v3, v1}, Lcom/mediatek/audioprofile/AudioProfileService;->access$102(Lcom/mediatek/audioprofile/AudioProfileService;I)I

    .line 234
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mExt:Lcom/mediatek/common/audioprofile/IAudioProfileExtension;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$200(Lcom/mediatek/audioprofile/AudioProfileService;)Lcom/mediatek/common/audioprofile/IAudioProfileExtension;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension;->onRingerModeChanged(I)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 238
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mActiveProfileKey:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$300(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .line 239
    .local v0, "activeScenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const-string v3, "AudioProfileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRingerModeChanged: ringermode changed by other app, change profile! ringerMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    packed-switch v1, :pswitch_data_118

    .line 273
    const-string v3, "AudioProfileService"

    const-string v4, "undefined RingerMode!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 246
    :pswitch_8e
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 247
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to SILENT, change profile to silent"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto :goto_4f

    .line 255
    :pswitch_b5
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 256
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to VIBRATE, change profile to meeting!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mPredefinedKeys:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$400(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_4f

    .line 264
    :pswitch_dd
    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    sget-object v3, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v0}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 265
    :cond_ed
    const-string v3, "AudioProfileService"

    const-string v4, "RingerMode change to NORMAL, change profile to last active profile!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/mediatek/audioprofile/AudioProfileService;->access$000(Lcom/mediatek/audioprofile/AudioProfileService;)Landroid/media/AudioManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 267
    .local v2, "systemVolume":I
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileService;->syncRingerVolumeToProfile(Ljava/lang/String;I)V

    .line 268
    iget-object v3, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    iget-object v4, p0, Lcom/mediatek/audioprofile/AudioProfileService$1;->this$0:Lcom/mediatek/audioprofile/AudioProfileService;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileService;->mLastActiveProfileKey:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileService;->access$500(Lcom/mediatek/audioprofile/AudioProfileService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/mediatek/audioprofile/AudioProfileService;->setActiveProfile(Ljava/lang/String;Z)V

    goto/16 :goto_4f

    .line 242
    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_b5
        :pswitch_dd
    .end packed-switch
.end method
