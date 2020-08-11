.class public Lcom/mediatek/archHelper/ArchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ARCH_ARM:I = 0x20

.field public static final ARCH_ARM64:I = 0x40

.field public static final ARCH_MULTI:I = 0xcc0

.field public static final ARCH_SYSTEM:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "ArchHelper"

    iput-object v0, p0, Lcom/mediatek/archHelper/ArchHelper;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/archHelper/ArchHelper;->b:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/mediatek/archHelper/ArchHelper;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private a(Ljava/util/jar/StrictJarFile;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/StrictJarFile;",
            "Ljava/util/List",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 110
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lib/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 111
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 115
    :cond_2c
    return-void
.end method


# virtual methods
.method public findSupportedArch()I
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 57
    :try_start_2
    new-instance v1, Ljava/util/jar/StrictJarFile;

    iget-object v3, p0, Lcom/mediatek/archHelper/ArchHelper;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/util/jar/StrictJarFile;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_a7
    .catchall {:try_start_2 .. :try_end_9} :catchall_a4

    .line 58
    :try_start_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-direct {p0, v1, v5}, Lcom/mediatek/archHelper/ArchHelper;->a(Ljava/util/jar/StrictJarFile;Ljava/util/List;)V

    move v4, v0

    move v2, v0

    move v3, v0

    .line 62
    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_73

    .line 64
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v0}, Ljava/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_23} :catch_60
    .catchall {:try_start_9 .. :try_end_23} :catchall_8c

    move-result-object v6

    .line 66
    :try_start_24
    new-instance v7, Lcom/mediatek/archHelper/ElfUtil;

    invoke-direct {v7, v6}, Lcom/mediatek/archHelper/ElfUtil;-><init>(Ljava/io/InputStream;)V

    .line 67
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->a()V

    .line 68
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getMachine()I

    move-result v0

    const/16 v8, 0x28

    if-ne v0, v8, :cond_3e

    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getElfClass()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3e

    .line 70
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 72
    :cond_3e
    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getMachine()I

    move-result v0

    const/16 v8, 0xb7

    if-ne v0, v8, :cond_aa

    invoke-virtual {v7}, Lcom/mediatek/archHelper/ElfUtil;->getElfClass()I
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_59

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_aa

    .line 74
    add-int/lit8 v0, v2, 0x1

    .line 77
    :goto_4f
    if-eqz v6, :cond_54

    .line 78
    :try_start_51
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 62
    :cond_54
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_14

    .line 77
    :catchall_59
    move-exception v0

    if-eqz v6, :cond_5f

    .line 78
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_5f
    throw v0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_60} :catch_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_8c

    .line 91
    :catch_60
    move-exception v0

    .line 92
    :goto_61
    :try_start_61
    const-string v2, "ArchHelper"

    const-string v3, "Error while reading apk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_8c

    .line 95
    if-eqz v1, :cond_70

    .line 97
    :try_start_6d
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_a0

    .line 102
    :cond_70
    :goto_70
    iget v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I

    return v0

    .line 82
    :cond_73
    mul-int v0, v3, v2

    if-eqz v0, :cond_83

    .line 83
    const/16 v0, 0xcc0

    :try_start_79
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7b} :catch_60
    .catchall {:try_start_79 .. :try_end_7b} :catchall_8c

    .line 95
    :goto_7b
    if-eqz v1, :cond_70

    .line 97
    :try_start_7d
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_70

    .line 98
    :catch_81
    move-exception v0

    goto :goto_70

    .line 84
    :cond_83
    if-nez v3, :cond_93

    if-eqz v2, :cond_93

    .line 85
    const/16 v0, 0x40

    :try_start_89
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8b} :catch_60
    .catchall {:try_start_89 .. :try_end_8b} :catchall_8c

    goto :goto_7b

    .line 95
    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v1, :cond_92

    .line 97
    :try_start_8f
    invoke-virtual {v1}, Ljava/util/jar/StrictJarFile;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_a2

    .line 99
    :cond_92
    :goto_92
    throw v0

    .line 86
    :cond_93
    if-eqz v3, :cond_9c

    if-nez v2, :cond_9c

    .line 87
    const/16 v0, 0x20

    :try_start_99
    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I

    goto :goto_7b

    .line 89
    :cond_9c
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/archHelper/ArchHelper;->a:I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_60
    .catchall {:try_start_99 .. :try_end_9f} :catchall_8c

    goto :goto_7b

    .line 98
    :catch_a0
    move-exception v0

    goto :goto_70

    :catch_a2
    move-exception v1

    goto :goto_92

    .line 95
    :catchall_a4
    move-exception v0

    move-object v1, v2

    goto :goto_8d

    .line 91
    :catch_a7
    move-exception v0

    move-object v1, v2

    goto :goto_61

    :cond_aa
    move v0, v2

    goto :goto_4f
.end method
