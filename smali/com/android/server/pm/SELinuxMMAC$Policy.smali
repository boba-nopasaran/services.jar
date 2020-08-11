.class Lcom/android/server/pm/SELinuxMMAC$Policy;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Policy"
.end annotation


# instance fields
.field private final pkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seinfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    .line 106
    return-void
.end method


# virtual methods
.method checkPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "seinfoValue":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 130
    .end local v0    # "seinfoValue":Ljava/lang/String;
    :goto_a
    return-object v0

    .restart local v0    # "seinfoValue":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    goto :goto_a
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method putPkg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->pkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method putSeinfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seinfoValue"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/pm/SELinuxMMAC$Policy;->seinfo:Ljava/lang/String;

    .line 110
    return-void
.end method
