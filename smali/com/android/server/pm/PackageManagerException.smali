.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 33
    return-void
.end method

.method public static from(Landroid/content/pm/PackageParser$PackageParserException;)Lcom/android/server/pm/PackageManagerException;
    .registers 5
    .param p0, "e"    # Landroid/content/pm/PackageParser$PackageParserException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    iget v1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$PackageParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
