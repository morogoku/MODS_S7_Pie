.class public Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
.super Ljava/lang/Object;
.source "ADPContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicyBuilder"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private hashCode:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private versionType:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;
    .registers 6

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    goto :goto_1c

    :cond_e
    new-instance v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    iget-object v4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/asks/ADPContainer$ADPPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public flush()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    iput-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-void
.end method

.method public set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->format:Ljava/lang/String;

    return-object p0
.end method

.method public set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->hashCode:Ljava/lang/String;

    return-object p0
.end method

.method public set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    .registers 2

    iput p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->versionType:I

    return-object p0
.end method
