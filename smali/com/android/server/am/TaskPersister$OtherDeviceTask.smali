.class Lcom/android/server/am/TaskPersister$OtherDeviceTask;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OtherDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/am/TaskPersister$OtherDeviceTask;",
        ">;"
    }
.end annotation


# instance fields
.field final mAffiliatedTaskId:I

.field final mComponentName:Landroid/content/ComponentName;

.field final mFile:Ljava/io/File;

.field final mLaunchPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskId:I


# direct methods
.method private constructor <init>(Ljava/io/File;Landroid/content/ComponentName;IILandroid/util/ArraySet;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "taskId"    # I
    .param p4, "affiliatedTaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/content/ComponentName;",
            "II",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1082
    .local p5, "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mFile:Ljava/io/File;

    .line 1084
    iput-object p2, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mComponentName:Landroid/content/ComponentName;

    .line 1085
    iput p3, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    .line 1086
    const/4 v0, -0x1

    if-ne p4, v0, :cond_11

    .end local p3    # "taskId":I
    :goto_c
    iput p3, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mAffiliatedTaskId:I

    .line 1087
    iput-object p5, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mLaunchPackages:Landroid/util/ArraySet;

    .line 1088
    return-void

    .restart local p3    # "taskId":I
    :cond_11
    move p3, p4

    .line 1086
    goto :goto_c
.end method

.method static createFromFile(Ljava/io/File;)Lcom/android/server/am/TaskPersister$OtherDeviceTask;
    .registers 19
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1102
    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1105
    :cond_8
    const/4 v1, 0x0

    .line 1185
    :goto_9
    return-object v1

    .line 1108
    :cond_a
    const/4 v15, 0x0

    .line 1111
    .local v15, "reader":Ljava/io/BufferedReader;
    :try_start_b
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_19} :catch_169
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_19} :catch_16c
    .catchall {:try_start_b .. :try_end_19} :catchall_160

    .line 1112
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .local v16, "reader":Ljava/io/BufferedReader;
    :try_start_19
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 1113
    .local v11, "in":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v16

    invoke-interface {v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1116
    :cond_22
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "event":I
    const/4 v1, 0x1

    if-eq v10, v1, :cond_2c

    const/4 v1, 0x2

    if-ne v10, v1, :cond_22

    .line 1121
    :cond_2c
    const/4 v1, 0x2

    if-ne v10, v1, :cond_13d

    .line 1122
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1124
    .local v13, "name":Ljava/lang/String;
    const-string v1, "task"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1125
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 1126
    .local v14, "outerDepth":I
    const/4 v3, 0x0

    .line 1127
    .local v3, "componentName":Landroid/content/ComponentName;
    const/4 v4, -0x1

    .line 1128
    .local v4, "taskId":I
    const/4 v5, -0x1

    .line 1129
    .local v5, "taskAffiliation":I
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    .local v12, "j":I
    :goto_48
    if-ltz v12, :cond_83

    .line 1130
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 1131
    .local v7, "attrName":Ljava/lang/String;
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 1132
    .local v8, "attrValue":Ljava/lang/String;
    const-string v1, "real_activity"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1133
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1129
    :cond_5e
    :goto_5e
    add-int/lit8 v12, v12, -0x1

    goto :goto_48

    .line 1134
    :cond_61
    const-string v1, "task_id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1135
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_5e

    .line 1136
    :cond_72
    const-string v1, "task_affiliation"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1137
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_81} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_81} :catch_15a
    .catchall {:try_start_19 .. :try_end_81} :catchall_165

    move-result v5

    goto :goto_5e

    .line 1140
    .end local v7    # "attrName":Ljava/lang/String;
    .end local v8    # "attrValue":Ljava/lang/String;
    :cond_83
    if-eqz v3, :cond_88

    const/4 v1, -0x1

    if-ne v4, v1, :cond_8e

    .line 1144
    :cond_88
    const/4 v1, 0x0

    .line 1181
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_9

    .line 1147
    :cond_8e
    const/4 v6, 0x0

    .line 1148
    .local v6, "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_8f
    :goto_8f
    :try_start_8f
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v1, 0x1

    if-eq v10, v1, :cond_105

    const/4 v1, 0x3

    if-ne v10, v1, :cond_9f

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v14, :cond_105

    .line 1150
    :cond_9f
    const/4 v1, 0x2

    if-ne v10, v1, :cond_8f

    .line 1151
    const-string v1, "activity"

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1152
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    :goto_b4
    if-ltz v12, :cond_8f

    .line 1153
    const-string v1, "launched_from_package"

    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1155
    if-nez v6, :cond_c9

    .line 1156
    new-instance v6, Landroid/util/ArraySet;

    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 1158
    .restart local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_c9
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1152
    :cond_d0
    add-int/lit8 v12, v12, -0x1

    goto :goto_b4

    .line 1162
    :cond_d3
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_d6} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_d6} :catch_15a
    .catchall {:try_start_8f .. :try_end_d6} :catchall_165

    goto :goto_8f

    .line 1178
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "taskId":I
    .end local v5    # "taskAffiliation":I
    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v10    # "event":I
    .end local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "j":I
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "outerDepth":I
    :catch_d7
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_da
    move-object v9, v1

    .line 1179
    .local v9, "e":Ljava/lang/Exception;
    :goto_db
    :try_start_db
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to parse "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, ". Error "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ff
    .catchall {:try_start_db .. :try_end_ff} :catchall_160

    .line 1181
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1185
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_102
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 1169
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "taskId":I
    .restart local v5    # "taskAffiliation":I
    .restart local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v10    # "event":I
    .restart local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "j":I
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v14    # "outerDepth":I
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_105
    :try_start_105
    new-instance v1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;-><init>(Ljava/io/File;Landroid/content/ComponentName;IILandroid/util/ArraySet;)V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_10c} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_105 .. :try_end_10c} :catch_15a
    .catchall {:try_start_105 .. :try_end_10c} :catchall_165

    .line 1181
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_9

    .line 1172
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "taskId":I
    .end local v5    # "taskAffiliation":I
    .end local v6    # "launchPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v12    # "j":I
    .end local v14    # "outerDepth":I
    :cond_111
    :try_start_111
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFromFile: Unknown xml event="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v17, " name="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_137} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_111 .. :try_end_137} :catch_15a
    .catchall {:try_start_111 .. :try_end_137} :catchall_165

    .line 1181
    .end local v13    # "name":Ljava/lang/String;
    :goto_137
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v15, v16

    .line 1182
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_102

    .line 1176
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :cond_13d
    :try_start_13d
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createFromFile: Unable to find start tag in file="

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_159} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13d .. :try_end_159} :catch_15a
    .catchall {:try_start_13d .. :try_end_159} :catchall_165

    goto :goto_137

    .line 1178
    .end local v10    # "event":I
    .end local v11    # "in":Lorg/xmlpull/v1/XmlPullParser;
    :catch_15a
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :goto_15d
    move-object v9, v1

    goto/16 :goto_db

    .line 1181
    :catchall_160
    move-exception v1

    :goto_161
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .end local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :catchall_165
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_161

    .line 1178
    :catch_169
    move-exception v1

    goto/16 :goto_da

    :catch_16c
    move-exception v1

    goto :goto_15d
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)I
    .registers 4
    .param p1, "another"    # Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    .prologue
    .line 1092
    iget v0, p0, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    iget v1, p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->mTaskId:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1070
    check-cast p1, Lcom/android/server/am/TaskPersister$OtherDeviceTask;

    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskPersister$OtherDeviceTask;->compareTo(Lcom/android/server/am/TaskPersister$OtherDeviceTask;)I

    move-result v0

    return v0
.end method
