.class Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;
.super Ljava/lang/Object;
.source "EpdgConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/epdg/EpdgConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgCommandReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/epdg/EpdgConnector;


# direct methods
.method protected constructor <init>(Lcom/mediatek/epdg/EpdgConnector;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method


# virtual methods
.method protected handleEpdgCommand(Ljava/lang/String;)V
    .registers 23
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "process epdg RCV <- {:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "woattach"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wohol"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wohow"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f2

    .line 324
    :cond_4e
    :try_start_4e
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 325
    .local v15, "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 326
    .local v12, "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 328
    .local v16, "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ge v2, v0, :cond_77

    .line 329
    const-string v2, "EpdgConnector"

    const-string v19, "Wrong response"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :goto_76
    return-void

    .line 331
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_77
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_a6

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 335
    .local v14, "failCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_a0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4e .. :try_end_a0} :catch_a1

    goto :goto_76

    .line 376
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v14    # "failCause":I
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_a1
    move-exception v13

    .line 377
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_76

    .line 337
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_a6
    :try_start_a6
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v2, v0, :cond_db

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 341
    .restart local v14    # "failCause":I
    const/4 v2, 0x2

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 342
    .local v17, "subFailCause":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V

    goto :goto_76

    .line 346
    .end local v3    # "apn":Ljava/lang/String;
    .end local v14    # "failCause":I
    .end local v17    # "subFailCause":I
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 348
    .local v4, "statusCode":I
    const-string v5, ""

    .line 349
    .local v5, "nwInterface":Ljava/lang/String;
    const-string v7, ""

    .line 350
    .local v7, "addrV6":Ljava/lang/String;
    const-string v9, ""

    .line 351
    .local v9, "pcscfV6":Ljava/lang/String;
    const-string v11, ""

    .line 352
    .local v11, "dnsV6":Ljava/lang/String;
    const-string v6, ""

    .line 353
    .local v6, "addrV4":Ljava/lang/String;
    const-string v8, ""

    .line 354
    .local v8, "pcscfV4":Ljava/lang/String;
    const-string v10, ""

    .line 356
    .local v10, "dnsV4":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x6

    move/from16 v0, v19

    if-lt v2, v0, :cond_143

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x2

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x3

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x4

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x5

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 363
    :cond_143
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parsed.length:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v2, v0, :cond_1e9

    .line 366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x6

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x7

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x8

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 369
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addrV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "pcscfV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v2, "EpdgConnector"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dnsV4:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgAttach(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v2 .. v11}, Lcom/mediatek/epdg/EpdgConnector;->access$700(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a6 .. :try_end_1f0} :catch_a1

    goto/16 :goto_76

    .line 379
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v5    # "nwInterface":Ljava/lang/String;
    .end local v6    # "addrV4":Ljava/lang/String;
    .end local v7    # "addrV6":Ljava/lang/String;
    .end local v8    # "pcscfV4":Ljava/lang/String;
    .end local v9    # "pcscfV6":Ljava/lang/String;
    .end local v10    # "dnsV4":Ljava/lang/String;
    .end local v11    # "dnsV6":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :cond_1f2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wodetach"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_268

    .line 381
    :try_start_200
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 382
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 383
    .restart local v12    # "data":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v12, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 385
    .restart local v16    # "parsed":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ge v2, v0, :cond_230

    .line 386
    const-string v2, "EpdgConnector"

    const-string v19, "Wrong response"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_228
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_200 .. :try_end_228} :catch_22a

    goto/16 :goto_76

    .line 397
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    :catch_22a
    move-exception v13

    .line 398
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_76

    .line 390
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v12    # "data":Ljava/lang/String;
    .restart local v15    # "offset":I
    .restart local v16    # "parsed":[Ljava/lang/String;
    :cond_230
    :try_start_230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/16 v19, 0x0

    aget-object v19, v16, v19

    move-object/from16 v0, v19

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .restart local v3    # "apn":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 392
    .restart local v4    # "statusCode":I
    const/16 v18, 0x0

    .line 393
    .local v18, "subStatueCode":I
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v2, v0, :cond_25f

    .line 394
    const/4 v2, 0x2

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 396
    :cond_25f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDetach(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/mediatek/epdg/EpdgConnector;->access$600(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;I)V
    :try_end_266
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_230 .. :try_end_266} :catch_22a

    goto/16 :goto_76

    .line 400
    .end local v3    # "apn":Ljava/lang/String;
    .end local v4    # "statusCode":I
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    .end local v16    # "parsed":[Ljava/lang/String;
    .end local v18    # "subStatueCode":I
    :cond_268
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v19, "wodisconnect"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29d

    .line 402
    :try_start_276
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 403
    .restart local v15    # "offset":I
    add-int/lit8 v2, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 404
    .restart local v12    # "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$400(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3    # "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_295
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_276 .. :try_end_295} :catch_297

    goto/16 :goto_76

    .line 406
    .end local v3    # "apn":Ljava/lang/String;
    .end local v12    # "data":Ljava/lang/String;
    .end local v15    # "offset":I
    :catch_297
    move-exception v13

    .line 407
    .restart local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v13}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_76

    .line 410
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_29d
    const-string v2, "EpdgConnector"

    const-string v19, "No handle"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76
.end method

.method public run()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 416
    const/4 v8, 0x0

    .line 417
    .local v8, "retryCount":I
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 420
    .local v6, "flag":Landroid/net/LocalSocketAddress$Namespace;
    :cond_4
    :goto_4
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v14}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 424
    :try_start_9
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    new-instance v11, Landroid/net/LocalSocket;

    invoke-direct {v11}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$302(Lcom/mediatek/epdg/EpdgConnector;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 425
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v10, "wod_action"

    invoke-direct {v0, v10, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 427
    .local v0, "address":Landroid/net/LocalSocketAddress;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_ed

    .line 457
    const/4 v8, 0x0

    .line 459
    const-string v10, "EpdgConnector"

    const-string v11, "Connect successfully"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :try_start_2b
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 464
    .local v7, "inputStream":Ljava/io/InputStream;
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3c} :catch_131
    .catchall {:try_start_2b .. :try_end_3c} :catchall_1ad

    .line 465
    :try_start_3c
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 466
    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_12e

    .line 468
    const/16 v10, 0x1000

    :try_start_4e
    new-array v1, v10, [B

    .line 469
    .local v1, "buffer":[B
    const/4 v9, 0x0

    .line 472
    .local v9, "start":I
    :cond_51
    :goto_51
    const/16 v10, 0x1000

    invoke-virtual {v7, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 474
    .local v2, "count":I
    if-gez v2, :cond_1a0

    .line 476
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " reading with start = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const-string v11, "*"

    # invokes: Lcom/mediatek/epdg/EpdgConnector;->notifyEpdgDisconnected(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/mediatek/epdg/EpdgConnector;->access$800(Lcom/mediatek/epdg/EpdgConnector;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_82} :catch_131
    .catchall {:try_start_4e .. :try_end_82} :catchall_1ad

    .line 486
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 487
    :try_start_89
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_218

    move-result-object v10

    if-eqz v10, :cond_be

    .line 489
    :try_start_91
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_b8} :catch_1fd
    .catchall {:try_start_91 .. :try_end_b8} :catchall_218

    .line 495
    :goto_b8
    :try_start_b8
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 497
    :cond_be
    monitor-exit v11
    :try_end_bf
    .catchall {:try_start_b8 .. :try_end_bf} :catchall_218

    .line 500
    :try_start_bf
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 501
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d0} :catch_d2

    goto/16 :goto_4

    .line 503
    :catch_d2
    move-exception v5

    .line 504
    .local v5, "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 428
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    :catch_ed
    move-exception v5

    .line 429
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 432
    :try_start_f1
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_102

    .line 433
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_102} :catch_270

    .line 441
    :cond_102
    :goto_102
    const/16 v10, 0xa

    if-ne v8, v10, :cond_120

    .line 442
    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    .line 443
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fatal error: can\'t connect native daemon:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_120
    const-wide/16 v10, 0x1388

    :try_start_122
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_125
    .catch Ljava/lang/InterruptedException; {:try_start_122 .. :try_end_125} :catch_129

    .line 453
    :goto_125
    add-int/lit8 v8, v8, 0x1

    .line 454
    goto/16 :goto_4

    .line 449
    :catch_129
    move-exception v4

    .line 450
    .local v4, "er":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_125

    .line 466
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catchall_12e
    move-exception v10

    :try_start_12f
    monitor-exit v11
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    :try_start_130
    throw v10
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_131} :catch_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_1ad

    .line 483
    .end local v7    # "inputStream":Ljava/io/InputStream;
    :catch_131
    move-exception v3

    .line 484
    .local v3, "e":Ljava/io/IOException;
    :try_start_132
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_1ad

    .line 486
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 487
    :try_start_13c
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_141
    .catchall {:try_start_13c .. :try_end_141} :catchall_236

    move-result-object v10

    if-eqz v10, :cond_171

    .line 489
    :try_start_144
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "closing stream for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v13}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_16b} :catch_21b
    .catchall {:try_start_144 .. :try_end_16b} :catchall_236

    .line 495
    :goto_16b
    :try_start_16b
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v12, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v10, v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 497
    :cond_171
    monitor-exit v11
    :try_end_172
    .catchall {:try_start_16b .. :try_end_172} :catchall_236

    .line 500
    :try_start_172
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 501
    iget-object v10, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v10}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_183} :catch_185

    goto/16 :goto_4

    .line 503
    :catch_185
    move-exception v5

    .line 504
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v10, "EpdgConnector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed closing socket: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 479
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "start":I
    :cond_1a0
    if-lez v2, :cond_51

    .line 480
    :try_start_1a2
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p0, v10}, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->handleEpdgCommand(Ljava/lang/String;)V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1ab} :catch_131
    .catchall {:try_start_1a2 .. :try_end_1ab} :catchall_1ad

    goto/16 :goto_51

    .line 486
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    :catchall_1ad
    move-exception v10

    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mDaemonLock:Ljava/lang/Object;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$900(Lcom/mediatek/epdg/EpdgConnector;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 487
    :try_start_1b5
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;
    :try_end_1ba
    .catchall {:try_start_1b5 .. :try_end_1ba} :catchall_253

    move-result-object v12

    if-eqz v12, :cond_1ea

    .line 489
    :try_start_1bd
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "closing stream for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v14}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12}, Lcom/mediatek/epdg/EpdgConnector;->access$1000(Lcom/mediatek/epdg/EpdgConnector;)Ljava/io/OutputStream;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1bd .. :try_end_1e4} :catch_239
    .catchall {:try_start_1bd .. :try_end_1e4} :catchall_253

    .line 495
    :goto_1e4
    :try_start_1e4
    iget-object v12, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    const/4 v13, 0x0

    # setter for: Lcom/mediatek/epdg/EpdgConnector;->mOutputStream:Ljava/io/OutputStream;
    invoke-static {v12, v13}, Lcom/mediatek/epdg/EpdgConnector;->access$1002(Lcom/mediatek/epdg/EpdgConnector;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 497
    :cond_1ea
    monitor-exit v11
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_253

    .line 500
    :try_start_1eb
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    if-eqz v11, :cond_1fc

    .line 501
    iget-object v11, p0, Lcom/mediatek/epdg/EpdgConnector$EpdgCommandReceiver;->this$0:Lcom/mediatek/epdg/EpdgConnector;

    # getter for: Lcom/mediatek/epdg/EpdgConnector;->mSocket:Landroid/net/LocalSocket;
    invoke-static {v11}, Lcom/mediatek/epdg/EpdgConnector;->access$300(Lcom/mediatek/epdg/EpdgConnector;)Landroid/net/LocalSocket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_1fc} :catch_256

    .line 505
    :cond_1fc
    :goto_1fc
    throw v10

    .line 491
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "start":I
    :catch_1fd
    move-exception v3

    .line 492
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_1fe
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 497
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_218
    move-exception v10

    monitor-exit v11
    :try_end_21a
    .catchall {:try_start_1fe .. :try_end_21a} :catchall_218

    throw v10

    .line 491
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "start":I
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_21b
    move-exception v3

    .line 492
    :try_start_21c
    const-string v10, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing output stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16b

    .line 497
    :catchall_236
    move-exception v10

    monitor-exit v11
    :try_end_238
    .catchall {:try_start_21c .. :try_end_238} :catchall_236

    throw v10

    .line 491
    .end local v3    # "e":Ljava/io/IOException;
    :catch_239
    move-exception v3

    .line 492
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_23a
    const-string v12, "EpdgConnector"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed closing output stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e4

    .line 497
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_253
    move-exception v10

    monitor-exit v11
    :try_end_255
    .catchall {:try_start_23a .. :try_end_255} :catchall_253

    throw v10

    .line 503
    :catch_256
    move-exception v5

    .line 504
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v11, "EpdgConnector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed closing socket: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fc

    .line 435
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    :catch_270
    move-exception v10

    goto/16 :goto_102
.end method
