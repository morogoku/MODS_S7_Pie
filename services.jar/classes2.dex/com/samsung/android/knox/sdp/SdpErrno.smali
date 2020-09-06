.class public Lcom/samsung/android/knox/sdp/SdpErrno;
.super Ljava/lang/Object;
.source "SdpErrno.java"


# static fields
.field public static final ERROR_COMPROMISED:I = -0xe

.field public static final ERROR_ENGINE_ACCESS_DENIED:I = -0x7

.field public static final ERROR_ENGINE_ALREADY_EXISTS:I = -0x4

.field public static final ERROR_ENGINE_LOCKED:I = -0x6

.field public static final ERROR_ENGINE_NOT_EXISTS:I = -0x5

.field public static final ERROR_ENGINE_THROTTLED:I = -0x8

.field public static final ERROR_FAILED:I = -0x63

.field public static final ERROR_FILE_IO:I = -0xc

.field public static final ERROR_INTERNAL:I = -0x63

.field public static final ERROR_INVALID_PARAMETER:I = -0x3

.field public static final ERROR_INVALID_PASSWORD:I = -0x1

.field public static final ERROR_INVALID_RESET_TOKEN:I = -0x2

.field public static final ERROR_LICENSE_REQUIRED:I = -0x9

.field public static final ERROR_NATIVE:I = -0xb

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_SUPPORTED_DEVICE:I = -0xa

.field public static final ERROR_SERVICE_NOT_FOUND:I = -0xd

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, -0x63

    if-eq p0, v0, :cond_2b

    packed-switch p0, :pswitch_data_30

    const-string v0, "Unknown error"

    goto :goto_2e

    :pswitch_a
    const-string v0, "No error"

    goto :goto_2e

    :pswitch_d
    const-string v0, "Invalid password"

    goto :goto_2e

    :pswitch_10
    const-string v0, "Invalid reset token"

    goto :goto_2e

    :pswitch_13
    const-string v0, "Invalid parameter"

    goto :goto_2e

    :pswitch_16
    const-string v0, "SDP engine already exists"

    goto :goto_2e

    :pswitch_19
    const-string v0, "SDP engine does not exist"

    goto :goto_2e

    :pswitch_1c
    const-string v0, "SDP engine is locked"

    goto :goto_2e

    :pswitch_1f
    const-string v0, "SDP engine access denied"

    goto :goto_2e

    :pswitch_22
    const-string v0, "SDP engine is throttled"

    goto :goto_2e

    :pswitch_25
    const-string v0, "License required"

    goto :goto_2e

    :pswitch_28
    const-string v0, "SDP not supported device"

    goto :goto_2e

    :cond_2b
    :pswitch_2b
    const-string v0, "Internal error occurred"

    nop

    :goto_2e
    nop

    return-object v0

    :pswitch_data_30
    .packed-switch -0xe
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method
