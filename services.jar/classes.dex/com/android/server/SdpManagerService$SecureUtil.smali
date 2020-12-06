.class public Lcom/android/server/SdpManagerService$SecureUtil;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecureUtil"
.end annotation


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"

.field public static final ORDER_BASE:I = 0x1

.field public static final ORDER_EPHEM_DRIVEN:I = 0x4

.field public static final ORDER_MANAGED_DRIVEN:I = 0x8

.field public static final ORDER_PASSWORD_DRIVEN:I = 0x1

.field public static final ORDER_TOKEN_DRIVEN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    if-nez p0, :cond_8

    const-string/jumbo v0, "null"

    goto :goto_52

    :cond_8
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_52

    aget-byte v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0123456789ABCDEF"

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_52
    :goto_52
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static clear(Ljava/lang/String;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->clear()V

    :cond_5
    return-void
.end method

.method public static clear([B)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public static varargs clearAll([Ljava/lang/Object;)V
    .registers 5

    if-eqz p0, :cond_26

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_26

    :cond_6
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_25

    aget-object v2, p0, v1

    instance-of v3, v2, [B

    if-eqz v3, :cond_17

    move-object v3, v2

    check-cast v3, [B

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear([B)V

    goto :goto_22

    :cond_17
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_22

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureUtil;->clear(Ljava/lang/String;)V

    nop

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    return-void

    :cond_26
    :goto_26
    return-void
.end method

.method public static copy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static generateRandomBytes(I)[B
    .registers 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs isAnyoneEmptyHere([Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_19

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_19

    :cond_7
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_18

    aget-object v4, p0, v3

    invoke-static {v4}, Lcom/android/server/SdpManagerService$SecureUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    return v0

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_18
    return v2

    :cond_19
    :goto_19
    return v0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p0, :cond_1c

    instance-of v0, p0, [B

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, [B

    array-length v0, v0

    if-eqz v0, :cond_1c

    :cond_c
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :goto_1d
    return v0
.end method

.method public static isFailed(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public static isSecureStartupCredentialRequired()Z
    .registers 2

    const-string/jumbo v0, "trigger_restart_min_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static record(Z)Z
    .registers 5

    if-nez p0, :cond_29

    const-string v0, "Unexpected failure with a process [ UID : %d, PID : %d ]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/SDPLog;->e(Ljava/lang/Exception;)V

    :cond_29
    return p0
.end method

.method public static safe(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method
