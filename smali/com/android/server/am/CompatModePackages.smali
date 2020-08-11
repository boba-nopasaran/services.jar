.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c


# instance fields
.field private final DEBUG_CONFIGURATION:Z

.field private final TAG:Ljava/lang/String;

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v8, "ActivityManager"

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->TAG:Ljava/lang/String;

    .line 47
    sget-boolean v8, Lcom/android/server/am/ActivityManagerService;->DEBUG_CONFIGURATION:Z

    iput-boolean v8, p0, Lcom/android/server/am/CompatModePackages;->DEBUG_CONFIGURATION:Z

    .line 57
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 79
    iput-object p1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 80
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 81
    new-instance v8, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_2e
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 86
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 87
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 88
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 89
    .local v1, "eventType":I
    :goto_40
    const/4 v8, 0x2

    if-eq v1, v8, :cond_4b

    const/4 v8, 0x1

    if-eq v1, v8, :cond_4b

    .line 91
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_49
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_49} :catch_a9
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_49} :catch_b9
    .catchall {:try_start_2e .. :try_end_49} :catchall_cb

    move-result v1

    goto :goto_40

    .line 93
    :cond_4b
    const/4 v8, 0x1

    if-ne v1, v8, :cond_54

    .line 128
    if-eqz v2, :cond_53

    .line 130
    :try_start_50
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_d2

    .line 135
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_53
    :goto_53
    return-void

    .line 97
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_54
    :try_start_54
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 99
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 101
    :cond_64
    const/4 v8, 0x2

    if-ne v1, v8, :cond_9a

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9a

    .line 104
    const-string v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9a

    .line 105
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_9a

    .line 107
    const/4 v8, 0x0

    const-string v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_89} :catch_a9
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_89} :catch_b9
    .catchall {:try_start_54 .. :try_end_89} :catchall_cb

    move-result-object v3

    .line 108
    .local v3, "mode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 109
    .local v4, "modeInt":I
    if-eqz v3, :cond_91

    .line 111
    :try_start_8d
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_90} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8d .. :try_end_90} :catch_a9
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_b9
    .catchall {:try_start_8d .. :try_end_90} :catchall_cb

    move-result v4

    .line 115
    :cond_91
    :goto_91
    :try_start_91
    iget-object v8, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_9a
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_9d} :catch_a9
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9d} :catch_b9
    .catchall {:try_start_91 .. :try_end_9d} :catchall_cb

    move-result v1

    .line 121
    const/4 v8, 0x1

    if-ne v1, v8, :cond_64

    .line 128
    :cond_a1
    if-eqz v2, :cond_53

    .line 130
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_53

    .line 131
    :catch_a7
    move-exception v8

    goto :goto_53

    .line 123
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_a9
    move-exception v0

    .line 124
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_aa
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_cb

    .line 128
    if-eqz v2, :cond_53

    .line 130
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b7

    goto :goto_53

    .line 131
    :catch_b7
    move-exception v8

    goto :goto_53

    .line 125
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_b9
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_c3

    :try_start_bc
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_cb

    .line 128
    :cond_c3
    if-eqz v2, :cond_53

    .line 130
    :try_start_c5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_53

    .line 131
    :catch_c9
    move-exception v8

    goto :goto_53

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v8

    if-eqz v2, :cond_d1

    .line 130
    :try_start_ce
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d6

    .line 132
    :cond_d1
    :goto_d1
    throw v8

    .line 131
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_d2
    move-exception v8

    goto :goto_53

    .line 112
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "modeInt":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_d4
    move-exception v8

    goto :goto_91

    .line 131
    .end local v1    # "eventType":I
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_d6
    move-exception v9

    goto :goto_d1
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 143
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 19
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 271
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 273
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    .line 276
    .local v4, "curFlags":I
    packed-switch p2, :pswitch_data_13c

    .line 287
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown screen compat mode req #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_2d
    :goto_2d
    return-void

    .line 278
    :pswitch_2e
    const/4 v5, 0x0

    .line 291
    .local v5, "enable":Z
    :goto_2f
    move v8, v4

    .line 292
    .local v8, "newFlags":I
    if-eqz v5, :cond_ee

    .line 293
    or-int/lit8 v8, v8, 0x2

    .line 298
    :goto_34
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 299
    .local v3, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 300
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility never needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v8, 0x0

    .line 304
    :cond_5d
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_82

    .line 305
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility always needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v8, 0x0

    .line 310
    :cond_82
    if-eq v8, v4, :cond_2d

    .line 311
    if-eqz v8, :cond_f2

    .line 312
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :goto_91
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 320
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 322
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v14, 0x2710

    invoke-virtual {v12, v7, v14, v15}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 325
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 328
    .local v11, "starting":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_c9
    if-ltz v6, :cond_130

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 330
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fa

    .line 328
    :cond_df
    :goto_df
    add-int/lit8 v6, v6, -0x1

    goto :goto_c9

    .line 281
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v5    # "enable":Z
    .end local v6    # "i":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "newFlags":I
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_e2
    const/4 v5, 0x1

    .line 282
    .restart local v5    # "enable":Z
    goto/16 :goto_2f

    .line 284
    .end local v5    # "enable":Z
    :pswitch_e5
    and-int/lit8 v12, v4, 0x2

    if-nez v12, :cond_ec

    const/4 v5, 0x1

    .line 285
    .restart local v5    # "enable":Z
    :goto_ea
    goto/16 :goto_2f

    .line 284
    .end local v5    # "enable":Z
    :cond_ec
    const/4 v5, 0x0

    goto :goto_ea

    .line 295
    .restart local v5    # "enable":Z
    .restart local v8    # "newFlags":I
    :cond_ee
    and-int/lit8 v8, v8, -0x3

    goto/16 :goto_34

    .line 314
    .restart local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_f2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 334
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "i":I
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_fa
    :try_start_fa
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_df

    .line 335
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/CompatModePackages;->DEBUG_CONFIGURATION:Z

    if-eqz v12, :cond_128

    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sending to proc "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " new compat "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_128
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v12, v9, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_12d} :catch_12e

    goto :goto_df

    .line 339
    :catch_12e
    move-exception v12

    goto :goto_df

    .line 343
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_130
    if-eqz v11, :cond_2d

    .line 344
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 347
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_2d

    .line 276
    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_e2
        :pswitch_e5
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 172
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_19
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 176
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0

    .line 172
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 180
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_26

    move v0, v2

    .line 181
    .local v0, "enabled":Z
    :goto_d
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v5, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v4, v5, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 184
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 185
    const/4 v2, -0x2

    .line 190
    :cond_25
    :goto_25
    return v2

    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_26
    move v0, v3

    .line 180
    goto :goto_d

    .line 187
    .restart local v0    # "enabled":Z
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_28
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 188
    const/4 v2, -0x1

    goto :goto_25

    .line 190
    :cond_30
    if-nez v0, :cond_25

    move v2, v3

    goto :goto_25
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 196
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_f

    .line 197
    const/4 v1, 0x0

    .line 199
    :goto_e
    return v1

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_e
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .registers 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 230
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_f

    .line 231
    const/4 v1, -0x3

    .line 233
    :goto_e
    return v1

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_e
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_14

    move-result-object v0

    .line 251
    :goto_b
    if-nez v0, :cond_f

    .line 252
    const/4 v1, -0x3

    .line 254
    :goto_e
    return v1

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_e

    .line 249
    :catch_14
    move-exception v1

    goto :goto_b
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    const/16 v7, 0x12c

    const/4 v2, 0x0

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_46

    move-result-object v0

    .line 152
    :goto_e
    if-nez v0, :cond_11

    .line 169
    :cond_10
    :goto_10
    return-void

    .line 155
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 156
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v2, 0x1

    .line 159
    .local v2, "mayCompat":Z
    :cond_22
    if-eqz p2, :cond_10

    .line 162
    if-nez v2, :cond_10

    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 163
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 165
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 166
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 150
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "mayCompat":Z
    .end local v3    # "msg":Landroid/os/Message;
    :catch_46
    move-exception v4

    goto :goto_e
.end method

.method saveCompatModes()V
    .registers 18

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 355
    :try_start_5
    new-instance v10, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-direct {v10, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 356
    .local v10, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_bd

    .line 358
    const/4 v4, 0x0

    .line 361
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 362
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 363
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v14, "utf-8"

    invoke-interface {v8, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 364
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 365
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 366
    const/4 v14, 0x0

    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 368
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 369
    .local v11, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v14, Landroid/content/res/Configuration;->screenLayout:I

    .line 370
    .local v12, "screenLayout":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 371
    .local v13, "smallestScreenWidthDp":I
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 372
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_53
    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c0

    .line 373
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 374
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 375
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_6e} :catch_ab

    move-result v7

    .line 376
    .local v7, "mode":I
    if-eqz v7, :cond_53

    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_74
    invoke-interface {v11, v9, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_77} :catch_d1
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_ab

    move-result-object v1

    .line 384
    :goto_78
    if-eqz v1, :cond_53

    .line 387
    :try_start_7a
    new-instance v5, Landroid/content/res/CompatibilityInfo;

    const/4 v14, 0x0

    invoke-direct {v5, v1, v12, v13, v14}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 389
    .local v5, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_53

    .line 392
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_53

    .line 395
    const/4 v14, 0x0

    const-string v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 396
    const/4 v14, 0x0

    const-string v15, "name"

    invoke-interface {v8, v14, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const/4 v14, 0x0

    const-string v15, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 398
    const/4 v14, 0x0

    const-string v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_aa} :catch_ab

    goto :goto_53

    .line 405
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "mode":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/IPackageManager;
    .end local v12    # "screenLayout":I
    .end local v13    # "smallestScreenWidthDp":I
    :catch_ab
    move-exception v2

    .line 406
    .local v2, "e1":Ljava/io/IOException;
    const-string v14, "ActivityManager"

    const-string v15, "Error writing compat packages"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    if-eqz v4, :cond_bc

    .line 408
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 411
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_bc
    :goto_bc
    return-void

    .line 356
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_bd
    move-exception v14

    :try_start_be
    monitor-exit v15
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v14

    .line 401
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v12    # "screenLayout":I
    .restart local v13    # "smallestScreenWidthDp":I
    :cond_c0
    const/4 v14, 0x0

    :try_start_c1
    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/CompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_d0} :catch_ab

    goto :goto_bc

    .line 382
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mode":I
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_d1
    move-exception v14

    goto :goto_78
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .registers 5
    .param p1, "ask"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 208
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_12

    .line 209
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 211
    :cond_12
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/am/CompatModePackages;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 238
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_15

    .line 239
    const-string v1, "ActivityManager"

    const-string v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_14
    return-void

    .line 242
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_14
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    const/16 v5, 0x12c

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/am/CompatModePackages;->getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 215
    .local v0, "curFlags":I
    if-eqz p2, :cond_2a

    and-int/lit8 v2, v0, -0x2

    .line 216
    .local v2, "newFlags":I
    :goto_a
    if-eq v0, v2, :cond_29

    .line 217
    if-eqz v2, :cond_2d

    .line 218
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 223
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 224
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    .end local v1    # "msg":Landroid/os/Message;
    :cond_29
    return-void

    .line 215
    .end local v2    # "newFlags":I
    :cond_2a
    or-int/lit8 v2, v0, 0x1

    goto :goto_a

    .line 220
    .restart local v2    # "newFlags":I
    :cond_2d
    iget-object v3, p0, Lcom/android/server/am/CompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2a

    move-result-object v0

    .line 263
    :goto_b
    if-nez v0, :cond_26

    .line 264
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_25
    return-void

    .line 267
    :cond_26
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_25

    .line 261
    :catch_2a
    move-exception v1

    goto :goto_b
.end method
