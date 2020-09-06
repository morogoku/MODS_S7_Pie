.class public final Lcom/sec/icdverification/ICDVerification;
.super Ljava/lang/Object;
.source "ICDVerification.java"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "get_icd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "ICDVerification"

    const-string v2, "get_icd load Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final check()I
    .registers 3

    const-string/jumbo v0, "multi"

    const-string/jumbo v1, "ro.product.cpu.abi"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/sec/icdverification/ICDVerification;->getTamperflag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native getTamperflag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method
