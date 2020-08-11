.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;I)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I

    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 987
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 989
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    .line 992
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 993
    iput p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 994
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .registers 2

    .prologue
    .line 1022
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCurrentProfile(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 1012
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1013
    :try_start_4
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne p1, v3, :cond_a

    monitor-exit v2

    .line 1017
    :goto_9
    return v1

    .line 1014
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    .line 1015
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_1b

    monitor-exit v2

    goto :goto_9

    .line 1018
    .end local v0    # "i":I
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1

    .line 1014
    .restart local v0    # "i":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1017
    :cond_1e
    const/4 v1, 0x0

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_18

    goto :goto_9
.end method

.method public isSpellCheckerEnabled()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1052
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .registers 5
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker"

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1028
    return-void
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .registers 6
    .param p1, "hashCode"    # I

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "selected_spell_checker_subtype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1034
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .registers 4
    .param p1, "currentProfileIds"    # [I

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1007
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1008
    monitor-exit v1

    .line 1009
    return-void

    .line 1008
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setCurrentUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 1002
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1003
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 1037
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "spell_checker_enabled"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    iget v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1039
    return-void

    .line 1037
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method
