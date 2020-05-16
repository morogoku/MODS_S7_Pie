.class public Lcom/samsung/android/rlc/common/Extra$PushInfo;
.super Ljava/lang/Object;
.source "Extra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/rlc/common/Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushInfo"
.end annotation


# static fields
.field public static final DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

.field public static final DEVICEID:Ljava/lang/String; = "DeviceID"

.field public static final DMSERVER:Ljava/lang/String; = "DMServer"

.field public static final DM_PERMISSION:Ljava/lang/String; = "com.sec.pcw.device.permission.SITDM"

.field public static final MGSERVER:Ljava/lang/String; = "MGServer"

.field public static final PUSH_TYPE_GCM:Ljava/lang/String; = "GCM"

.field public static final PUSH_TYPE_SPP:Ljava/lang/String; = "SPP"

.field public static final REACTIVATION:Ljava/lang/String; = "ReactivationLock"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "SPP"

    const-string v1, "GCM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/common/Extra$PushInfo;->DEFAULT_PUSH_TYPE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
