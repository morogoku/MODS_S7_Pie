.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$BroadcastActions;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastActions"
.end annotation


# static fields
.field public static final ACTION_NPA_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.action.NPA_STATUS"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME"

.field public static final EXTRA_REGISTRATION_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.REGISTRATION_STATUS"

.field public static final PROFILE_REGISTERED:I = 0x0

.field public static final PROFILE_UNREGISTERED:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
