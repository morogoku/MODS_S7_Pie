.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$ActivationState;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivationState"
.end annotation


# static fields
.field public static final PROFILE_ACTIVATED:I = 0x1

.field public static final PROFILE_INTERVAL_VALUE:Ljava/lang/String; = "interval_value"

.field public static final PROFILE_NOT_ACTIVATED:I = 0x0

.field public static final PROFILE_RECORD_TYPE:Ljava/lang/String; = "record_type"

.field public static final RECORD_TYPE_ALL:I = 0x0

.field public static final RECORD_TYPE_START:I = 0x1

.field public static final RECORD_TYPE_STOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
