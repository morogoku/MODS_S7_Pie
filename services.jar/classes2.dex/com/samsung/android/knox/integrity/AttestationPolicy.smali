.class public Lcom/samsung/android/knox/integrity/AttestationPolicy;
.super Ljava/lang/Object;
.source "AttestationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/integrity/AttestationPolicy$AttestationRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_KNOX_ATTESTATION_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.KNOX_ATTESTATION_RESULT"

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_MDM_PERMISSION:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_TIMA_INTERNAL:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x4

.field public static final EXTRA_ATTESTATION_DATA:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

.field public static final EXTRA_ERROR_MSG:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_MSG"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field public static final KNOX_ATTESTATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field private static final KNOX_ATTESTATION_PERMISSION_ERROR:Ljava/lang/String; = "Need com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION permission"

.field private static final TAG:Ljava/lang/String; = "AttestationPolicy"

.field private static final TAL_KNOX_KEY_ERROR:I = 0x5a

.field private static final TIMA_ATTESTATION_SUCCESS:I = 0x0

.field private static final TIMA_ERROR_DEVICE_NOT_SUPPORTED:I = 0x4

.field private static final TIMA_INVALID_NONCE:I = 0x5b


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    iput-object p1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    if-nez v0, :cond_22

    const-string v0, "AttestationPolicy"

    const-string v1, "Failed to get Tima Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/knox/integrity/AttestationPolicy;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private attestationInternal([BI)Landroid/content/Intent;
    .registers 12

    const/4 v0, -0x2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p1, p2}, Landroid/service/tima/ITimaService;->attestation([BI)[B

    move-result-object v1

    if-eqz v1, :cond_4d

    array-length v2, v1

    if-nez v2, :cond_d

    goto :goto_4d

    :cond_d
    const/4 v2, 0x0

    aget-byte v3, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->checkExitCode(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    :cond_24
    array-length v6, v1

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    new-array v6, v6, [B

    array-length v8, v1

    sub-int/2addr v8, v7

    invoke-static {v1, v7, v6, v2, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    aget-byte v2, v6, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->intValue()I

    move-result v2

    if-eqz v2, :cond_48

    const/4 v7, 0x4

    if-ne v2, v7, :cond_43

    const/4 v7, -0x3

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_43
    invoke-direct {p0, v0, v5}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_48
    invoke-direct {p0, v6}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeSuccessReturnIntent([B)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_4d
    :goto_4d
    const-string v2, "Blob from TIMA is invalid"

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_53} :catch_54

    return-object v2

    :catch_54
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v2, "Failed talking with attestation policy"

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private checkExitCode(I)I
    .registers 3

    const/4 v0, -0x2

    if-eqz p1, :cond_c

    packed-switch p1, :pswitch_data_10

    const/4 v0, -0x2

    goto :goto_e

    :pswitch_8
    const/4 v0, -0x5

    goto :goto_e

    :pswitch_a
    const/4 v0, -0x3

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    nop

    :goto_e
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method private enforceAttestationPermission()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string v0, "AttestationPolicy"

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const-string v2, "Need com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private getByteArray(Ljava/lang/String;)[B
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v0, :cond_30

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_f

    :cond_30
    return-object v1
.end method

.method private makeAttestationIntent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/integrity/AttestationPolicy;->mTimaService:Landroid/service/tima/ITimaService;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, -0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, -0x5

    if-nez p1, :cond_13

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1e

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->attestationInternal([BI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private makeReturnIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x5

    if-eq p1, v1, :cond_35

    packed-switch p1, :pswitch_data_3c

    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_3b

    const-string v1, "com.samsung.android.knox.intent.extra.ERROR_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3b

    :pswitch_19
    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    :pswitch_20
    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_3b

    const-string v1, "com.samsung.android.knox.intent.extra.ERROR_MSG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3b

    :pswitch_2e
    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3b

    :cond_35
    const-string v2, "com.samsung.android.knox.intent.extra.RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    :cond_3b
    :goto_3b
    return-object v0

    :pswitch_data_3c
    .packed-switch -0x3
        :pswitch_2e
        :pswitch_20
        :pswitch_19
    .end packed-switch
.end method

.method private makeSuccessReturnIntent([B)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.extra.RESULT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.ATTESTATION_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public startAttestation(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/integrity/AttestationPolicy;->enforceAttestationPermission()Z

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/knox/integrity/AttestationPolicy$1;-><init>(Lcom/samsung/android/knox/integrity/AttestationPolicy;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
