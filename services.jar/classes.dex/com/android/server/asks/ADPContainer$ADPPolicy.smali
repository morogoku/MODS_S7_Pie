.class public Lcom/android/server/asks/ADPContainer$ADPPolicy;
.super Ljava/lang/Object;
.source "ADPContainer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ADPContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADPPolicy"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private hashCode:Ljava/lang/String;

.field private pattern:Ljava/lang/String;

.field private versionType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    iput-object p4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 8

    move-object v0, p1

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    iget v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const v4, 0x65837583

    if-ne v1, v4, :cond_25

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    if-nez v1, :cond_11

    return v3

    :cond_11
    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    return v2

    :cond_24
    return v3

    :cond_25
    iget v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    iget-object v4, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    return v2

    :cond_34
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/asks/ADPContainer$ADPPolicy;->getHashCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    return v3
.end method

.method public findMatcherByHashCode(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method public findMatcherByPattern(Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    return v2
.end method

.method generateADPrule(I)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x65837583

    if-ne p1, v1, :cond_12

    const-string/jumbo v1, "format"

    iget-object v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string/jumbo v1, "pattern"

    iget-object v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "versionType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "hashCode"

    iget-object v2, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getHashCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->hashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionType()I
    .registers 2

    iget v0, p0, Lcom/android/server/asks/ADPContainer$ADPPolicy;->versionType:I

    return v0
.end method
