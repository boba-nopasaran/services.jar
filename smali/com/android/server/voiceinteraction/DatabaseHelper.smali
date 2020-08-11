.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

.field static final DBG:Z = false

.field private static final NAME:Ljava/lang/String; = "sound_model.db"

.field static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field private static final VERSION:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 71
    return-void
.end method

.method private static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 250
    const/4 v1, 0x0

    .line 257
    :cond_7
    return-object v1

    .line 252
    :cond_8
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "usersStr":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 254
    .local v1, "users":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v3, v2

    if-ge v0, v3, :cond_7

    .line 255
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private static getCommaSeparatedString([I)Ljava/lang/String;
    .registers 4
    .param p0, "users"    # [I

    .prologue
    .line 235
    if-nez p0, :cond_5

    .line 236
    const-string v2, ""

    .line 245
    :goto_4
    return-object v2

    .line 238
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    .line 240
    if-eqz v0, :cond_15

    .line 241
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    :cond_15
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 245
    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .registers 10
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 124
    monitor-enter p0

    .line 125
    :try_start_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v1

    .line 127
    .local v1, "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    if-nez v1, :cond_12

    .line 128
    monitor-exit p0

    .line 138
    :goto_11
    return v3

    .line 132
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "model_uuid=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_44

    move-result-object v2

    .line 136
    .local v2, "soundModelClause":Ljava/lang/String;
    :try_start_35
    const-string v4, "sound_model"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_47

    move-result v4

    if-eqz v4, :cond_3f

    const/4 v3, 0x1

    .line 138
    :cond_3f
    :try_start_3f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    goto :goto_11

    .line 140
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .end local v2    # "soundModelClause":Ljava/lang/String;
    :catchall_44
    move-exception v3

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_44

    throw v3

    .line 138
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "soundModel":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .restart local v2    # "soundModelClause":Ljava/lang/String;
    :catchall_47
    move-exception v3

    :try_start_48
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_44
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 26
    .param p1, "keyphraseId"    # I
    .param p2, "userHandle"    # I
    .param p3, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static/range {p3 .. p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 153
    monitor-enter p0

    .line 155
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 158
    .local v18, "selectQuery":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 159
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_8c

    move-result-object v9

    .line 162
    .local v9, "c":Landroid/database/Cursor;
    :try_start_47
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 164
    :cond_4d
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 165
    .local v19, "type":I
    if-eqz v19, :cond_70

    .line 223
    :cond_59
    :goto_59
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4d

    .line 225
    .end local v19    # "type":I
    :cond_5f
    const-string v2, "SoundModelDBHelper"

    const-string v3, "No SoundModel available for the given keyphrase"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_47 .. :try_end_66} :catchall_84

    .line 227
    :try_start_66
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 230
    const/16 v16, 0x0

    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_8c

    :goto_6f
    return-object v16

    .line 172
    .restart local v19    # "type":I
    :cond_70
    :try_start_70
    const-string v2, "model_uuid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 174
    .local v17, "modelUuid":Ljava/lang/String;
    if-nez v17, :cond_8f

    .line 175
    const-string v2, "SoundModelDBHelper"

    const-string v3, "Ignoring SoundModel since it doesn\'t specify an ID"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_70 .. :try_end_83} :catchall_84

    goto :goto_59

    .line 227
    .end local v17    # "modelUuid":Ljava/lang/String;
    .end local v19    # "type":I
    :catchall_84
    move-exception v2

    :try_start_85
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 231
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "selectQuery":Ljava/lang/String;
    :catchall_8c
    move-exception v2

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8c

    throw v2

    .line 179
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "modelUuid":Ljava/lang/String;
    .restart local v18    # "selectQuery":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_8f
    :try_start_8f
    const-string v2, "data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 180
    .local v10, "data":[B
    const-string v2, "recognition_modes"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 182
    .local v4, "recognitionModes":I
    const-string v2, "users"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v7

    .line 184
    .local v7, "users":[I
    const-string v2, "locale"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, "modelLocale":Ljava/lang/String;
    const-string v2, "hint_text"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, "text":Ljava/lang/String;
    if-nez v7, :cond_cf

    .line 192
    const-string v2, "SoundModelDBHelper"

    const-string v3, "Ignoring SoundModel since it doesn\'t specify users"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 196
    :cond_cf
    const/4 v13, 0x0

    .line 197
    .local v13, "isAvailableForCurrentUser":Z
    move-object v8, v7

    .local v8, "arr$":[I
    array-length v15, v8

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_d3
    if-ge v12, v15, :cond_de

    aget v20, v8, v12

    .line 198
    .local v20, "user":I
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_103

    .line 199
    const/4 v13, 0x1

    .line 203
    .end local v20    # "user":I
    :cond_de
    if-eqz v13, :cond_59

    .line 212
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 213
    .local v14, "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    const/16 v21, 0x0

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    aput-object v2, v14, v21

    .line 215
    new-instance v16, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    invoke-static/range {v17 .. v17}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v10, v14}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)V
    :try_end_fa
    .catchall {:try_start_8f .. :try_end_fa} :catchall_84

    .line 227
    .local v16, "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :try_start_fa
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0
    :try_end_101
    .catchall {:try_start_fa .. :try_end_101} :catchall_8c

    goto/16 :goto_6f

    .line 197
    .end local v14    # "keyphrases":[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .end local v16    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .restart local v20    # "user":I
    :cond_103
    add-int/lit8 v12, v12, 0x1

    goto :goto_d3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 76
    const-string v0, "CREATE TABLE sound_model(model_uuid TEXT PRIMARY KEY,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 82
    const-string v0, "DROP TABLE IF EXISTS sound_model"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .registers 10
    .param p1, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    monitor-enter p0

    .line 93
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "model_uuid"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v4, "data"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->data:[B

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 99
    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    if-eqz v4, :cond_96

    iget-object v4, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    array-length v4, v4

    if-ne v4, v2, :cond_96

    .line 100
    const-string v4, "keyphrase_id"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v4, "recognition_modes"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    const-string v4, "users"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v4, "locale"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v4, "hint_text"

    iget-object v5, p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_93

    .line 108
    :try_start_79
    const-string v4, "sound_model"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_8e

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8c

    .line 111
    :goto_87
    :try_start_87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    .line 114
    :goto_8b
    return v2

    :cond_8c
    move v2, v3

    .line 108
    goto :goto_87

    .line 111
    :catchall_8e
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 115
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_93
    move-exception v2

    monitor-exit p0
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_93

    throw v2

    .line 114
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_96
    :try_start_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_93

    move v2, v3

    goto :goto_8b
.end method
