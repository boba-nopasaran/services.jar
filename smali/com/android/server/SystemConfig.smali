.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFixedImeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUnavailableFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    .line 89
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    .line 130
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    .line 133
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    .line 136
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    .line 138
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/SystemConfig;->readPermissions(Ljava/io/File;Z)V

    .line 140
    return-void
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .registers 2

    .prologue
    .line 92
    const-class v1, Lcom/android/server/SystemConfig;

    monitor-enter v1

    .line 93
    :try_start_3
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_e

    .line 94
    new-instance v0, Lcom/android/server/SystemConfig;

    invoke-direct {v0}, Lcom/android/server/SystemConfig;-><init>()V

    sput-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    .line 96
    :cond_e
    sget-object v0, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;Z)V
    .registers 30
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 183
    const/16 v17, 0x0

    .line 185
    .local v17, "permReader":Ljava/io/FileReader;
    :try_start_2
    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_b} :catch_8a

    .line 191
    .end local v17    # "permReader":Ljava/io/FileReader;
    .local v18, "permReader":Ljava/io/FileReader;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v12

    .line 194
    .local v12, "lowRam":Z
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 195
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 199
    :cond_18
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, "type":I
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_2c

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 203
    :cond_2c
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_a8

    .line 204
    new-instance v24, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v25, "No start tag found"

    invoke-direct/range {v24 .. v25}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3c} :catch_3c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3c} :catch_f1
    .catchall {:try_start_f .. :try_end_3c} :catchall_178

    .line 349
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_3c
    move-exception v4

    .line 350
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3d
    const-string v24, "SystemConfig"

    const-string v25, "Got exception parsing permissions."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_178

    .line 354
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 357
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_55
    :goto_55
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4df

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 358
    .local v6, "fname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_55

    .line 359
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Removed unavailable feature "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 186
    .end local v6    # "fname":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "lowRam":Z
    .end local v18    # "permReader":Ljava/io/FileReader;
    .restart local v17    # "permReader":Ljava/io/FileReader;
    :catch_8a
    move-exception v4

    .line 187
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_a7
    return-void

    .line 207
    .end local v17    # "permReader":Ljava/io/FileReader;
    .restart local v12    # "lowRam":Z
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "permReader":Ljava/io/FileReader;
    .restart local v21    # "type":I
    :cond_a8
    :try_start_a8
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "permissions"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_139

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "config"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_139

    .line 208
    new-instance v24, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unexpected start tag in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": found "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", expected \'permissions\' or \'config\'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_f1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a8 .. :try_end_f1} :catch_3c
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_f1} :catch_f1
    .catchall {:try_start_a8 .. :try_end_f1} :catchall_178

    .line 351
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catch_f1
    move-exception v4

    .line 352
    .local v4, "e":Ljava/io/IOException;
    :try_start_f2
    const-string v24, "SystemConfig"

    const-string v25, "Got exception parsing permissions."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fd
    .catchall {:try_start_f2 .. :try_end_fd} :catchall_178

    .line 354
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4b

    .line 218
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_102
    :try_start_102
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 219
    .local v13, "name":Ljava/lang/String;
    const-string v24, "group"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17d

    if-nez p2, :cond_17d

    .line 220
    const/16 v24, 0x0

    const-string v25, "gid"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 221
    .local v8, "gidStr":Ljava/lang/String;
    if-eqz v8, :cond_14d

    .line 222
    invoke-static {v8}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v7

    .line 223
    .local v7, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    .line 229
    .end local v7    # "gid":I
    :goto_136
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 213
    .end local v8    # "gidStr":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    :cond_139
    :goto_139
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 214
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_13f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_102 .. :try_end_13f} :catch_3c
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_13f} :catch_f1
    .catchall {:try_start_102 .. :try_end_13f} :catchall_178

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_102

    .line 354
    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_4b

    .line 225
    .restart local v8    # "gidStr":Ljava/lang/String;
    .restart local v13    # "name":Ljava/lang/String;
    :cond_14d
    :try_start_14d
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<group> without gid in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14d .. :try_end_177} :catch_3c
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_177} :catch_f1
    .catchall {:try_start_14d .. :try_end_177} :catchall_178

    goto :goto_136

    .line 354
    .end local v8    # "gidStr":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    :catchall_178
    move-exception v24

    invoke-static/range {v18 .. v18}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v24

    .line 231
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "type":I
    :cond_17d
    :try_start_17d
    const-string v24, "permission"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d3

    if-nez p2, :cond_1d3

    .line 232
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "perm":Ljava/lang/String;
    if-nez v16, :cond_1c6

    .line 234
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<permission> without name in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 239
    :cond_1c6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/server/SystemConfig;->readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_139

    .line 242
    .end local v16    # "perm":Ljava/lang/String;
    :cond_1d3
    const-string v24, "assign-permission"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d2

    if-nez p2, :cond_2d2

    .line 243
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 244
    .restart local v16    # "perm":Ljava/lang/String;
    if-nez v16, :cond_21c

    .line 245
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<assign-permission> without name in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 250
    :cond_21c
    const/16 v24, 0x0

    const-string v25, "uid"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 251
    .local v23, "uidStr":Ljava/lang/String;
    if-nez v23, :cond_259

    .line 252
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<assign-permission> without uid in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 257
    :cond_259
    invoke-static/range {v23 .. v23}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v22

    .line 258
    .local v22, "uid":I
    if-gez v22, :cond_29c

    .line 259
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 265
    :cond_29c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/ArraySet;

    .line 267
    .local v19, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v19, :cond_2c6

    .line 268
    new-instance v19, Landroid/util/ArraySet;

    .end local v19    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct/range {v19 .. v19}, Landroid/util/ArraySet;-><init>()V

    .line 269
    .restart local v19    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :cond_2c6
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 274
    .end local v16    # "perm":Ljava/lang/String;
    .end local v19    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v22    # "uid":I
    .end local v23    # "uidStr":Ljava/lang/String;
    :cond_2d2
    const-string v24, "library"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_360

    if-nez p2, :cond_360

    .line 275
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "lname":Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "file"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 277
    .local v10, "lfile":Ljava/lang/String;
    if-nez v11, :cond_327

    .line 278
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<library> without name in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_322
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 280
    :cond_327
    if-nez v10, :cond_354

    .line 281
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<library> without file in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_322

    .line 285
    :cond_354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_322

    .line 290
    .end local v10    # "lfile":Ljava/lang/String;
    .end local v11    # "lname":Ljava/lang/String;
    :cond_360
    const-string v24, "feature"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3d9

    .line 291
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    .restart local v6    # "fname":Ljava/lang/String;
    if-nez v12, :cond_3aa

    .line 294
    const/4 v3, 0x1

    .line 299
    .local v3, "allowed":Z
    :goto_379
    if-nez v6, :cond_3c4

    .line 300
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<feature> without name in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_3a5
    :goto_3a5
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 296
    .end local v3    # "allowed":Z
    :cond_3aa
    const/16 v24, 0x0

    const-string v25, "notLowRam"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, "notLowRam":Ljava/lang/String;
    const-string v24, "true"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3c2

    const/4 v3, 0x1

    .restart local v3    # "allowed":Z
    :goto_3c1
    goto :goto_379

    .end local v3    # "allowed":Z
    :cond_3c2
    const/4 v3, 0x0

    goto :goto_3c1

    .line 302
    .end local v14    # "notLowRam":Ljava/lang/String;
    .restart local v3    # "allowed":Z
    :cond_3c4
    if-eqz v3, :cond_3a5

    .line 304
    new-instance v5, Landroid/content/pm/FeatureInfo;

    invoke-direct {v5}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 305
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a5

    .line 311
    .end local v3    # "allowed":Z
    .end local v5    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v6    # "fname":Ljava/lang/String;
    :cond_3d9
    const-string v24, "unavailable-feature"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_42c

    .line 312
    const/16 v24, 0x0

    const-string v25, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    .restart local v6    # "fname":Ljava/lang/String;
    if-nez v6, :cond_420

    .line 314
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<unavailable-feature> without name in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_41b
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 317
    :cond_420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mUnavailableFeatures:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_41b

    .line 322
    .end local v6    # "fname":Ljava/lang/String;
    :cond_42c
    const-string v24, "allow-in-power-save"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_483

    if-nez p2, :cond_483

    .line 323
    const/16 v24, 0x0

    const-string v25, "package"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 324
    .local v20, "pkgname":Ljava/lang/String;
    if-nez v20, :cond_475

    .line 325
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<allow-in-power-save> without package in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_470
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 328
    :cond_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_470

    .line 333
    .end local v20    # "pkgname":Ljava/lang/String;
    :cond_483
    const-string v24, "fixed-ime-app"

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4da

    if-nez p2, :cond_4da

    .line 334
    const/16 v24, 0x0

    const-string v25, "package"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 335
    .restart local v20    # "pkgname":Ljava/lang/String;
    if-nez v20, :cond_4cc

    .line 336
    const-string v24, "SystemConfig"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "<fixed-ime-app> without package in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_4c7
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_139

    .line 339
    :cond_4cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4c7

    .line 345
    .end local v20    # "pkgname":Ljava/lang/String;
    :cond_4da
    invoke-static {v15}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4dd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17d .. :try_end_4dd} :catch_3c
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_4dd} :catch_f1
    .catchall {:try_start_17d .. :try_end_4dd} :catchall_178

    goto/16 :goto_139

    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "type":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_4df
    move-object/from16 v17, v18

    .line 362
    .end local v18    # "permReader":Ljava/io/FileReader;
    .restart local v17    # "permReader":Ljava/io/FileReader;
    goto/16 :goto_a7
.end method


# virtual methods
.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAvailableFeatures()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mAvailableFeatures:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getFixedImeApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mFixedImeApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGlobalGids()[I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mGlobalGids:[I

    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/SystemConfig;->mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 367
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 369
    iget-object v6, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 370
    .local v3, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    if-nez v3, :cond_19

    .line 371
    new-instance v3, Lcom/android/server/SystemConfig$PermissionEntry;

    .end local v3    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    invoke-direct {v3, p2}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;)V

    .line 372
    .restart local v3    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/SystemConfig;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 377
    .local v2, "outerDepth":I
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_73

    if-ne v5, v9, :cond_2c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_73

    .line 379
    :cond_2c
    if-eq v5, v9, :cond_1d

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1d

    .line 384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 386
    const/4 v6, 0x0

    const-string v7, "gid"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 388
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    .line 389
    .local v0, "gid":I
    iget-object v6, v3, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 395
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_52
    :goto_52
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1d

    .line 391
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_56
    const-string v6, "SystemConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 397
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_73
    return-void
.end method

.method readPermissions(Ljava/io/File;Z)V
    .registers 11
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 145
    :cond_c
    if-nez p2, :cond_2c

    .line 146
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2c
    :goto_2c
    return-void

    .line 150
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_52

    .line 151
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 156
    :cond_52
    const/4 v4, 0x0

    .line 157
    .local v4, "platformFile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_59
    if-ge v2, v3, :cond_cb

    aget-object v1, v0, v2

    .line 159
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "etc/permissions/platform.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 160
    move-object v4, v1

    .line 157
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 164
    :cond_6d
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a2

    .line 165
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 168
    :cond_a2
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_c7

    .line 169
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 173
    :cond_c7
    invoke-direct {p0, v1, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;Z)V

    goto :goto_6a

    .line 177
    .end local v1    # "f":Ljava/io/File;
    :cond_cb
    if-eqz v4, :cond_2c

    .line 178
    invoke-direct {p0, v4, p2}, Lcom/android/server/SystemConfig;->readPermissionsFromXml(Ljava/io/File;Z)V

    goto/16 :goto_2c
.end method
