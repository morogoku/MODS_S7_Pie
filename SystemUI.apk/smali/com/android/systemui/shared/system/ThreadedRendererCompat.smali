.class public Lcom/android/systemui/shared/system/ThreadedRendererCompat;
.super Ljava/lang/Object;
.source "ThreadedRendererCompat.java"


# static fields
.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I

.field public static EGL_CONTEXT_PRIORITY_LOW_IMG:I

.field public static EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3101

    sput v0, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    const/16 v0, 0x3102

    sput v0, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    const/16 v0, 0x3103

    sput v0, Lcom/android/systemui/shared/system/ThreadedRendererCompat;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
