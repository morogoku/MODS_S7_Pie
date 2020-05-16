.class public Lcom/samsung/android/media/face/SemFaceNativeApi;
.super Ljava/lang/Object;
.source "SemFaceNativeApi.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "saiv_HprFace_cmh_support_jni.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
