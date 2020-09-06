.class final Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;
.super Ljava/lang/Object;
.source "PreloadedTadTaController.java"

# interfaces
.implements Lcom/samsung/android/authnrservice/service/IPreloadedTaController;


# static fields
.field private static final TAG:Ljava/lang/String; = "PTTC"

.field private static sIsNativeLoaded:Z

.field private static sIsPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "prldtadtactrl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_9} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_24

    :catch_a
    move-exception v0

    const-string v1, "PTTC"

    const-string v2, "NPE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :catch_13
    move-exception v0

    const-string v1, "PTTC"

    const-string v2, "ULE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :catch_1c
    move-exception v0

    const-string v1, "PTTC"

    const-string v2, "SE"

    invoke-static {v1, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    nop

    :goto_25
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PTTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create class. type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private native nativeInitialize()Z
.end method

.method private native nativeInitializeOperation([B)Z
.end method

.method private native nativeProcess([B)[B
.end method

.method private native nativeTerminate()Z
.end method

.method private native nativeTerminateOperation()Z
.end method


# virtual methods
.method public initialize()Z
    .registers 5

    const-string v0, "PTTC"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v0, "PTTC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    const-string v0, "PTTC"

    const-string v1, "already prepared"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_22
    const-string v0, "libtad.so"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeInitializeOperation([B)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v2, "PTTC"

    const-string/jumbo v3, "nativeInitializeOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeInitialize()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v2, "PTTC"

    const-string/jumbo v3, "nativeInitialize failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_46
    sput-boolean v2, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    return v2
.end method

.method public process([B)[B
    .registers 6

    const-string v0, "PTTC"

    const-string/jumbo v1, "process"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    const-string v0, "PTTC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B

    return-object v0

    :cond_18
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    if-nez v0, :cond_27

    const-string v0, "PTTC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v1, [B

    return-object v0

    :cond_27
    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeProcess([B)[B

    move-result-object v0

    if-eqz v0, :cond_30

    array-length v2, v0

    if-nez v2, :cond_38

    :cond_30
    const-string v2, "PTTC"

    const-string/jumbo v3, "processNative failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    if-nez v0, :cond_3d

    new-array v1, v1, [B

    goto :goto_3e

    :cond_3d
    move-object v1, v0

    :goto_3e
    return-object v1
.end method

.method public terminate()Z
    .registers 5

    const-string v0, "PTTC"

    const-string/jumbo v1, "terminate"

    invoke-static {v0, v1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsNativeLoaded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v0, "PTTC"

    const-string/jumbo v2, "not loaded"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_16
    sget-boolean v0, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    if-nez v0, :cond_23

    const-string v0, "PTTC"

    const-string/jumbo v2, "not prepared"

    invoke-static {v0, v2}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeTerminate()Z

    move-result v0

    if-nez v0, :cond_32

    const-string v2, "PTTC"

    const-string/jumbo v3, "nativeTerminate failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_32
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->nativeTerminateOperation()Z

    move-result v0

    if-nez v0, :cond_41

    const-string v2, "PTTC"

    const-string/jumbo v3, "nativeTerminateOperation failed"

    invoke-static {v2, v3}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_41
    sput-boolean v1, Lcom/samsung/android/authnrservice/service/PreloadedTadTaController;->sIsPrepared:Z

    const/4 v1, 0x1

    return v1
.end method
