.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;
.super Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;
.source "VoiceInteractionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceInteractionManagerServiceStub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;
    }
.end annotation


# instance fields
.field private mCurUser:I

.field mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSafeMode:Z

.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .registers 3

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;-><init>()V

    .line 686
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;

    invoke-direct {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(ILjava/lang/String;)I
    .registers 9
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 520
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller does not hold the permission android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 523
    :catchall_15
    move-exception v4

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v4

    :cond_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 525
    if-nez p2, :cond_23

    .line 526
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in deleteKeyphraseSoundModel"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 530
    :cond_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 531
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 532
    .local v0, "caller":J
    const/4 v3, 0x0

    .line 534
    .local v3, "deleted":Z
    :try_start_2c
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_54

    move-result v3

    .line 535
    if-eqz v3, :cond_4e

    const/4 v4, 0x0

    .line 537
    :goto_37
    if-eqz v3, :cond_4a

    .line 538
    monitor-enter p0

    .line 540
    :try_start_3a
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v5, :cond_49

    .line 541
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 543
    :cond_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_51

    .line 545
    :cond_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 535
    :cond_4e
    const/high16 v4, -0x80000000

    goto :goto_37

    .line 543
    :catchall_51
    move-exception v4

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v4

    .line 537
    :catchall_54
    move-exception v4

    if-eqz v3, :cond_68

    .line 538
    monitor-enter p0

    .line 540
    :try_start_58
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v5, :cond_67

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v5, :cond_67

    .line 541
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 543
    :cond_67
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_6c

    .line 545
    :cond_68
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 543
    :catchall_6c
    move-exception v4

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v4
.end method

.method public deliverNewSession(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    .line 402
    monitor-enter p0

    .line 403
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_10

    .line 404
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "deliverNewSession without running voice interaction service"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0

    .line 407
    :cond_10
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 408
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 409
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_d

    move-result-wide v6

    .line 411
    .local v6, "caller":J
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->deliverNewSessionLocked(IILandroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_2a

    move-result v0

    .line 414
    :try_start_25
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return v0

    :catchall_2a
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_d
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_35

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    :goto_34
    return-void

    .line 660
    :cond_35
    monitor-enter p0

    .line 661
    :try_start_36
    const-string v0, "VOICE INTERACTION MANAGER (dumpsys voiceinteraction)\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_49

    .line 663
    const-string v0, "  (No active implementation)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    monitor-exit p0

    goto :goto_34

    .line 667
    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_46

    throw v0

    .line 666
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 667
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_46

    .line 668
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_34
.end method

.method findAvailInteractor(ILandroid/content/ComponentName;)Landroid/service/voice/VoiceInteractionServiceInfo;
    .registers 16
    .param p1, "userHandle"    # I
    .param p2, "recognizer"    # Landroid/content/ComponentName;

    .prologue
    .line 264
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.voice.VoiceInteractionService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 269
    .local v7, "numAvailable":I
    if-nez v7, :cond_34

    .line 270
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no available voice interaction services found for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v4, 0x0

    .line 309
    :cond_33
    return-object v4

    .line 275
    :cond_34
    const/4 v4, 0x0

    .line 276
    .local v4, "foundInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    if-ge v5, v7, :cond_33

    .line 277
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v2, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 278
    .local v2, "cur":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_79

    .line 279
    new-instance v1, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v1, "comp":Landroid/content/ComponentName;
    :try_start_51
    new-instance v6, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-direct {v6, v8, v1, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 283
    .local v6, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d3

    .line 284
    if-eqz p2, :cond_76

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 286
    :cond_76
    if-nez v4, :cond_7c

    .line 287
    move-object v4, v6

    .line 276
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_79
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 289
    .restart local v1    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_7c
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "More than one voice interaction service, picking first "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_b8} :catch_b9
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_b8} :catch_fa

    goto :goto_79

    .line 302
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_b9
    move-exception v3

    .line 303
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure looking up interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 299
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_d3
    :try_start_d3
    const-string v8, "VoiceInteractionManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad interaction service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_f9} :catch_b9
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_f9} :catch_fa

    goto :goto_79

    .line 304
    .end local v6    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_fa
    move-exception v8

    goto/16 :goto_79
.end method

.method findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;
    .registers 11
    .param p1, "prefPackage"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.RecognitionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v7, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 339
    .local v2, "numAvailable":I
    if-nez v2, :cond_34

    .line 340
    const-string v4, "VoiceInteractionManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no available voice recognition services found for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v4, 0x0

    .line 356
    :goto_33
    return-object v4

    .line 343
    :cond_34
    if-eqz p1, :cond_56

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    if-ge v1, v2, :cond_56

    .line 345
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 346
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 347
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 344
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 351
    .end local v1    # "i":I
    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_56
    const/4 v4, 0x1

    if-le v2, v4, :cond_60

    .line 352
    const-string v4, "VoiceInteractionManagerService"

    const-string v5, "more than one voice recognition service found, picking first"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_60
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 356
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method public finish(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v4, :cond_e

    .line 445
    const-string v4, "VoiceInteractionManagerService"

    const-string v5, "finish without running voice interaction service"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    monitor-exit p0

    .line 457
    :goto_d
    return-void

    .line 448
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 449
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 450
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_24

    move-result-wide v0

    .line 452
    .local v0, "caller":J
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v4, v2, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(IILandroid/os/IBinder;)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_27

    .line 454
    :try_start_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    monitor-exit p0

    goto :goto_d

    .end local v0    # "caller":J
    .end local v2    # "callingPid":I
    .end local v3    # "callingUid":I
    :catchall_24
    move-exception v4

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v4

    .line 454
    .restart local v0    # "caller":J
    .restart local v2    # "callingPid":I
    .restart local v3    # "callingUid":I
    :catchall_27
    move-exception v4

    :try_start_28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_24
.end method

.method getCurInteractor(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 314
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_interaction_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "curInteractor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 318
    const/4 v1, 0x0

    .line 322
    :goto_15
    return-object v1

    :cond_16
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_15
.end method

.method getCurRecognizer(I)Landroid/content/ComponentName;
    .registers 5
    .param p1, "userHandle"    # I

    .prologue
    .line 361
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "curRecognizer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 365
    const/4 v1, 0x0

    .line 369
    :goto_15
    return-object v1

    :cond_16
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_15
.end method

.method public getDspModuleProperties(Landroid/service/voice/IVoiceInteractionService;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 6
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;

    .prologue
    .line 579
    monitor-enter p0

    .line 580
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 582
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not the current voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v2

    .line 586
    :cond_26
    :try_start_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    move-result-wide v0

    .line 588
    .local v0, "caller":J
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->moduleProperties:Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_35

    .line 590
    :try_start_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    return-object v2

    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_23
.end method

.method public getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 8
    .param p1, "keyphraseId"    # I
    .param p2, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 463
    monitor-enter p0

    .line 464
    :try_start_1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_18

    .line 466
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller does not hold the permission android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    :catchall_15
    move-exception v3

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v3

    :cond_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_15

    .line 471
    if-nez p2, :cond_23

    .line 472
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal argument(s) in getKeyphraseSoundModel"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 475
    :cond_23
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 476
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 478
    .local v0, "caller":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v3, p1, v2, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    move-result-object v3

    .line 480
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_37
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public initForUser(I)V
    .registers 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v7, 0x0

    .line 134
    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v8, v8, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_interaction_service"

    invoke-static {v8, v9, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "curInteractorStr":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurRecognizer(I)Landroid/content/ComponentName;

    move-result-object v3

    .line 138
    .local v3, "curRecognizer":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 139
    .local v1, "curInteractorInfo":Landroid/service/voice/VoiceInteractionServiceInfo;
    if-nez v2, :cond_25

    if-eqz v3, :cond_25

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-nez v8, :cond_25

    .line 147
    invoke-virtual {p0, p1, v3}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILandroid/content/ComponentName;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_25

    .line 152
    const/4 v3, 0x0

    .line 158
    :cond_25
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-eqz v8, :cond_38

    if-eqz v2, :cond_38

    .line 159
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 160
    invoke-virtual {p0, v7, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 161
    const-string v2, ""

    .line 165
    :cond_38
    if-eqz v3, :cond_5f

    .line 168
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 169
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 170
    .local v4, "interactorInfo":Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .line 171
    .local v6, "recognizerInfo":Landroid/content/pm/ServiceInfo;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5d

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 174
    .local v0, "curInteractor":Landroid/content/ComponentName;
    :goto_4a
    const/4 v8, 0x0

    :try_start_4b
    invoke-interface {v5, v3, v8, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 175
    if-eqz v0, :cond_56

    .line 176
    const/4 v8, 0x0

    invoke-interface {v5, v0, v8, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_55} :catch_a9

    move-result-object v4

    .line 181
    :cond_56
    :goto_56
    if-eqz v6, :cond_5f

    if-eqz v0, :cond_5c

    if-eqz v4, :cond_5f

    .line 211
    .end local v0    # "curInteractor":Landroid/content/ComponentName;
    .end local v4    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_5c
    :goto_5c
    return-void

    .restart local v4    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_5d
    move-object v0, v7

    .line 171
    goto :goto_4a

    .line 187
    .end local v4    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :cond_5f
    if-nez v1, :cond_6b

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-nez v8, :cond_6b

    .line 188
    invoke-virtual {p0, p1, v7}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailInteractor(ILandroid/content/ComponentName;)Landroid/service/voice/VoiceInteractionServiceInfo;

    move-result-object v1

    .line 191
    :cond_6b
    if-eqz v1, :cond_9a

    .line 193
    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 195
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9a

    .line 196
    new-instance v7, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_5c

    .line 204
    :cond_9a
    invoke-virtual {p0, v7, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->findAvailRecognizer(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_5c

    .line 206
    if-nez v1, :cond_a5

    .line 207
    invoke-virtual {p0, v7, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurInteractor(Landroid/content/ComponentName;I)V

    .line 209
    :cond_a5
    invoke-virtual {p0, v3, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->setCurRecognizer(Landroid/content/ComponentName;I)V

    goto :goto_5c

    .line 178
    .restart local v0    # "curInteractor":Landroid/content/ComponentName;
    .restart local v4    # "interactorInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v6    # "recognizerInfo":Landroid/content/pm/ServiceInfo;
    :catch_a9
    move-exception v8

    goto :goto_56
.end method

.method public isEnrolledForKeyphrase(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;)Z
    .registers 10
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 553
    monitor-enter p0

    .line 554
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v4, :cond_19

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_24

    .line 556
    :cond_19
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not the current voice interaction service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 559
    :catchall_21
    move-exception v4

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v4

    :cond_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    .line 561
    if-nez p3, :cond_2f

    .line 562
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in isEnrolledForKeyphrase"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 565
    :cond_2f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 566
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    .local v0, "caller":J
    :try_start_37
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_48

    move-result-object v3

    .line 570
    .local v3, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_46

    const/4 v4, 0x1

    .line 572
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 570
    :cond_46
    const/4 v4, 0x0

    goto :goto_42

    .line 572
    .end local v3    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_48
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 122
    :catch_5
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 126
    const-string v1, "VoiceInteractionManagerService"

    const-string v2, "VoiceInteractionManagerService Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_11
    throw v0
.end method

.method setCurInteractor(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_interaction_service"

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 331
    return-void

    .line 326
    :cond_14
    const-string v0, ""

    goto :goto_10
.end method

.method setCurRecognizer(Landroid/content/ComponentName;I)V
    .registers 6
    .param p1, "comp"    # Landroid/content/ComponentName;
    .param p2, "userHandle"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_recognition_service"

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 378
    return-void

    .line 373
    :cond_14
    const-string v0, ""

    goto :goto_10
.end method

.method public startRecognition(Landroid/service/voice/IVoiceInteractionService;ILjava/lang/String;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .registers 12
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p5, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 600
    monitor-enter p0

    .line 601
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v4, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_26

    .line 603
    :cond_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not the current voice interaction service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :catchall_23
    move-exception v4

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v4

    .line 607
    :cond_26
    if-eqz p4, :cond_2c

    if-eqz p5, :cond_2c

    if-nez p3, :cond_34

    .line 608
    :cond_2c
    :try_start_2c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal argument(s) in startRecognition"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_23

    .line 612
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 613
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 615
    .local v0, "caller":J
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v4, p2, v2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v3

    .line 617
    .local v3, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-eqz v3, :cond_4f

    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    if-eqz v4, :cond_4f

    iget-object v4, v3, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-nez v4, :cond_5c

    .line 620
    :cond_4f
    const-string v4, "VoiceInteractionManagerService"

    const-string v5, "No matching sound model found in startRecognition"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_68

    .line 621
    const/high16 v4, -0x80000000

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5b
    return v4

    .line 623
    :cond_5c
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v4, p2, v3, p4, p5}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_68

    move-result v4

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5b

    .end local v3    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catchall_68
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public startSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 382
    monitor-enter p0

    .line 383
    :try_start_1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v4, v4, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v4, :cond_19

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v5, v5, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v5}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_24

    .line 385
    :cond_19
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Caller is not the current voice interaction service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 396
    :catchall_21
    move-exception v4

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v4

    .line 388
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 389
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 390
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_21

    move-result-wide v0

    .line 392
    .local v0, "caller":J
    :try_start_30
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v4, v2, v3, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startSessionLocked(IILandroid/os/Bundle;)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3a

    .line 394
    :try_start_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    monitor-exit p0

    .line 397
    return-void

    .line 394
    :catchall_3a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_21
.end method

.method public startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    .line 421
    monitor-enter p0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-nez v0, :cond_f

    .line 423
    const-string v0, "VoiceInteractionManagerService"

    const-string v3, "startVoiceActivity without running voice interaction service"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v0, -0x6

    monitor-exit p0

    .line 436
    :goto_e
    return v0

    .line 426
    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 427
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 428
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 429
    .local v6, "caller":J
    const-string v0, "persist.test.voice_interaction"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 430
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Voice interaction not supported"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    .end local v1    # "callingPid":I
    .end local v2    # "callingUid":I
    .end local v6    # "caller":J
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0

    .line 433
    .restart local v1    # "callingPid":I
    .restart local v2    # "callingUid":I
    .restart local v6    # "caller":J
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3d

    move-result v0

    .line 436
    :try_start_38
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p0

    goto :goto_e

    :catchall_3d
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_2c
.end method

.method public stopRecognition(Landroid/service/voice/IVoiceInteractionService;ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .registers 8
    .param p1, "service"    # Landroid/service/voice/IVoiceInteractionService;
    .param p2, "keyphraseId"    # I
    .param p3, "callback"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    .line 635
    monitor-enter p0

    .line 636
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v3, v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v3}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 638
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller is not the current voice interaction service"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 641
    :catchall_23
    move-exception v2

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v2

    :cond_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 643
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 645
    .local v0, "caller":J
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    move-result v2

    .line 647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method switchImplementationIfNeededLocked(Z)V
    .registers 10
    .param p1, "force"    # Z

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    if-nez v0, :cond_5e

    .line 235
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "voice_interaction_service"

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 237
    .local v6, "curService":Ljava/lang/String;
    const/4 v5, 0x0

    .line 238
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 240
    :try_start_19
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1c} :catch_5f

    move-result-object v5

    .line 246
    :cond_1d
    :goto_1d
    if-nez p1, :cond_35

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 248
    :cond_35
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mSoundTriggerHelper:Lcom/android/server/voiceinteraction/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/SoundTriggerHelper;->stopAllRecognitions()V

    .line 249
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v0, :cond_45

    .line 250
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->shutdownLocked()V

    .line 252
    :cond_45
    if-eqz v5, :cond_7a

    .line 253
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    .line 255
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->startLocked()V

    .line 261
    .end local v5    # "serviceComponent":Landroid/content/ComponentName;
    .end local v6    # "curService":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void

    .line 241
    .restart local v5    # "serviceComponent":Landroid/content/ComponentName;
    .restart local v6    # "curService":Ljava/lang/String;
    :catch_5f
    move-exception v7

    .line 242
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "VoiceInteractionManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad voice interaction service name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const/4 v5, 0x0

    goto :goto_1d

    .line 257
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_7a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    goto :goto_5e
.end method

.method public switchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .prologue
    .line 227
    monitor-enter p0

    .line 228
    :try_start_1
    iput p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 230
    monitor-exit p0

    .line 231
    return-void

    .line 230
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public systemRunning(Z)V
    .registers 7
    .param p1, "safeMode"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mSafeMode:Z

    .line 216
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 218
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub$SettingsObserver;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;Landroid/os/Handler;)V

    .line 220
    monitor-enter p0

    .line 221
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mCurUser:I

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->switchImplementationIfNeededLocked(Z)V

    .line 223
    monitor-exit p0

    .line 224
    return-void

    .line 223
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I
    .registers 6
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .prologue
    .line 486
    monitor-enter p0

    .line 487
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_18

    .line 489
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Caller does not hold the permission android.permission.MANAGE_VOICE_KEYPHRASES"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :catchall_15
    move-exception v2

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v2

    .line 492
    :cond_18
    if-nez p1, :cond_22

    .line 493
    :try_start_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Model must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_15

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 499
    .local v0, "caller":J
    :try_start_27
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->mDbHelper:Lcom/android/server/voiceinteraction/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 500
    monitor-enter p0
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_4a

    .line 502
    :try_start_32
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v2, :cond_41

    .line 503
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->mImpl:Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->notifySoundModelsChangedLocked()V

    .line 505
    :cond_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_32 .. :try_end_42} :catchall_47

    .line 506
    const/4 v2, 0x0

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_46
    return v2

    .line 505
    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 511
    :catchall_4a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 508
    :cond_4f
    const/high16 v2, -0x80000000

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_46
.end method
